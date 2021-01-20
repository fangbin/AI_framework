(**************************************************************************)
(*                                                                        *)
(*  This file is part of PPMM.                                            *)
(*                                                                        *)
(*  Copyright (C) 2017-2018 											  *)
(*    @author: fang bin                                                   *)
(*                                                                        *)
(*                                                                        *)
(*  you can redistribute it and/or modify it under the terms of the GNU   *)
(*  Lesser General Public License as published by the Free Software       *)
(*  Foundation, version 3.                                                *)
(*                                                                        *)
(*  It is distributed in the hope that it will be useful,                 *)
(*  but WITHOUT ANY WARRANTY; without even the implied warranty of        *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *)
(*  GNU Lesser General Public License for more details.                   *)
(*                                                                        *)
(*  See the GNU Lesser General Public License version 3.                  *)
(*  for more details (enclosed in the file LICENSE).                      *)
(*                                                                        *)
(**************************************************************************)

open Mman_dabs
open Mman_svar
open Mman_asyn


module MEV = Mman_env
module SHA = Mman_sha

(* ********************************************************************** *)
(* {1 Abstract value module} *)
(* ********************************************************************** *)

(** Implements
 *  - Datatype.S for indexing a map
 *  - Bounded_Join_Semi_Lattice
*)

module Model = struct

  type shtyp = Bot | Top | S of SHA.shape

  type eshtyp =
    {
      seid: Mman_env.t;
      mutable shape: shtyp
    }


  (** at most k continuous anonymous nodes in graph *)
  let k = 2

  (** Basic functions used in Datatype.S *)
  let rec pretty_code_intern (p_caller:Type.precedence) fmt (d: eshtyp) =
    let pp fmt = begin
      Format.fprintf fmt "[seid:%d] [" d.seid;
      sh_pretty fmt d.shape;
      Format.fprintf fmt "@.],@."
    end
    in
    Type.par p_caller Type.Call fmt pp

  and sh_pretty fmt (d: shtyp) =
    match d with
    | Bot -> Format.fprintf fmt "Bot"
    | Top -> Format.fprintf fmt "Top"
    | S(g) -> SHA.pretty_graph fmt g

  let pretty_diff fmt (d0: eshtyp) (d1: eshtyp) =
    begin
      Format.fprintf fmt "<>(";
      pretty_code_intern Type.Basic fmt d0;
      Format.fprintf fmt ",";
      pretty_code_intern Type.Basic fmt d1;
      Format.fprintf fmt ")"
    end

  let is_bottom (d: eshtyp) =
    match d.shape with
    | Bot -> true
    | _ -> false

  let is_top (d: eshtyp) =
    match d.shape with
    | Top -> true
    | _ -> false


  (** Loose ordering of two values.

    This function is mainly used to order shape graphs using
    their number of edges. Thus, the relation is not an order relation
    wrt equality, i.e., is_leq(d0,d1) && is_leq(d1,d0) =/=> is_eq(d0,d1)
    Use compare to obtain the total ordering relation.
  *)
  let is_leq (d0: eshtyp) (d1: eshtyp)
    : bool
    =
    match d0.shape, d1.shape with
    | Bot, _ | _, Top -> true
    | Top, _ | _, Bot -> false
    | S(g0), S(g1) ->
              let mls1 = SHA.shape_mls g0 in
              let mls2 = SHA.shape_mls g1 in
              (Mman_env.senv_size d0.seid) <= (Mman_env.senv_size d1.seid) &&
              (List.length mls1) <= (List.length mls2)


(** Ordering of values.
  @return 1  if d0 > d1
          -1 if d0 < d1
          0  if graphs are homeomorphic by the computed mapping
  The resulting mapping contains only mappings of svars representing
  locations in heap to other locations in heap.
*)

  let rec compare_intern (d0: eshtyp) (d1: eshtyp)
    : int * MEV.envmap
    =
    let emptymap = Mman_env.EnvMap.empty in
    match d0.shape, d1.shape with
    | Bot, _ | _, Top -> 1, emptymap
    | Top, _ | _, Bot -> -1, emptymap
    | S(g0), S(g1)  ->
        let psz0, ssz0 = (Mman_env.senv_size d0.seid) in
        let psz1, ssz1 = (Mman_env.senv_size d1.seid) in
        let cmppsz = psz0 - psz1 in
        let cmpssz = ssz0 - ssz1 in
        if (cmppsz < 0) || ((cmppsz == 0) && (cmpssz < 0))
        then -1, emptymap
        else if (cmppsz > 0) || ((cmppsz == 0) && (cmpssz > 0))
        then 1, emptymap
        else let _ = assert (cmppsz == 0 && cmpssz == 0) in
        embed_mem d0.seid g0 d1.seid g1

  and embed_mem (sei0: MEV.t) (g0: SHA.shape) (sei1: MEV.t) (g1: SHA.shape)
    : int * MEV.envmap
    =
    (* same environment size, see homeomorphism *)
    let emptymap = Mman_env.EnvMap.empty in
    let mls0 = SHA.shape_mls g0 in
    let mls1 = SHA.shape_mls g1 in
    let stack0 = SHA.shape_stack sei0 g0 in
    let stack1 = SHA.shape_stack sei1 g1 in
    let cmplst = (List.length mls0) - (List.length mls1) in
    if cmplst < 0 then 1, emptymap (* less atoms in g0, so more general *)
    else if cmplst > 0 then -1, emptymap
    else (* same number of atoms, find their homeomorphism *)
      try (
        (* start with mapping of program variables *)
        let vmap = Mman_env.senv_embed sei0 stack0 sei1 stack1 in
        if (MEV.EnvMap.is_empty vmap) then
          (* no mapping between program variables *)
          raise Not_found
        else
          (* continue with atoms *)
          let amap =
            List.fold_left2
              (fun m sv0 sv1 ->
                 let at0 = MEV.EnvMap.find sv0 g0 in
                 let at1 = MEV.EnvMap.find sv1 g1 in
                 embed_atom at0 at1 m
              )
              vmap mls0 mls1
          in
          (* if returns without error, then ok *)
          0, amap
      ) with Not_found ->
        (* not homeomophic, the min is computed using the stack *)
        (let cmpstk = (List.length (MEV.EnvMap.bindings stack0)) -
                      (List.length (MEV.EnvMap.bindings stack1)) in
         if cmpstk < 0 then -1, emptymap (* less bindings, less initialisations *)
         else if cmpstk > 0 then 1, emptymap
         else (* same number of atoms and bindings, but not homeomorphic *)
           let _ = Mman_options.Self.failure "Incomparable heap graphs@." in
           1, emptymap
        )


(** Check that vmap may embed atom a0 into a1.
   Return the mapping resulting from this embedding or
   raise Not_found.
*)
  and embed_atom (a0: SHA.node_t) (a1: SHA.node_t)
    (vmap: MEV.envmap)
    : MEV.envmap
    =
    (* if same kind of atom
       then check that a0 vars are mapped to a1 vars or
            or add the new bindings
       else raise Not_found
    *)
    match a0.ed_H, a1.ed_H with
    | Some(Blk b1), Some(Blk b2)->
        let vmapl0 = embed_var vmap b1.a.id b2.a.id in
        let vmapu0 = embed_var vmapl0 b2.b.id b2.b.id in
        vmapu0

    | Some(Chd b1), Some(Chd b2)->
        let fl1 = SHA.shape_get_chd_flist b1 in
        let fl2 = SHA.shape_get_chd_flist b2 in
        let vmapl0 = embed_var vmap b1.a.id  b2.a.id  in
        let vmaplf = embed_flist vmapl0 fl1 fl2 in
        vmaplf

    | _, _ -> raise Not_found

    (** TODO: other cases *)


  (** Embed a symbolic variable (location)
      to another given an existing mapping and a stack
  *)
  and embed_var (vm: MEV.envmap) (l0: svid) (l1: svid)
    : MEV.envmap
    =
    let l0vm = try MEV.EnvMap.find l0 vm with Not_found -> l1 in
    if l0vm != l1 then
      raise Not_found
    else
      MEV.EnvMap.add l0 l1 vm

  (** Embed the locations in the association list lf0 to
      locations with mapped by the same feature in lf1
  *)
  and embed_flist (vm: MEV.envmap)
      (lf0: (feature_kind * svid) list)
      (lf1: (feature_kind * svid) list)
    : MEV.envmap
    = List.fold_left
      (fun m0 (fk, l0) ->
         let l1 = List.assoc fk lf1 in
         embed_var m0 l0 l1
      )
      vm
      lf0


  let hash_intern (d: eshtyp) =
      let hsh = match d.shape with | Bot -> 0 | Top -> 1 | _ -> 2
      in
      (d.seid lsr 1) + hsh

    (* Copy from eshape *)
  let copy_intern (d: eshtyp) =
        { seid = d.seid; shape = d.shape }

  let dummy_top =
      { seid = (-1);
        shape = Top }

  let dummy_bot =
      { seid = (-1);
        shape = Bot }

  let empty_meminfo = SHA.Nemap.empty

    (** Module Datatype.S *)
    include Datatype.Make(struct
        type t = eshtyp
        let name = "Mman_value.ModelKey.t"
        let rehash = Datatype.identity
        let structural_descr = Structural_descr.t_unknown
        let reprs = [ dummy_top; dummy_bot ]
        let equal = Datatype.from_compare
        let compare v0 v1 = fst (compare_intern v0 v1)
        let hash = hash_intern
        let copy = copy_intern
        let internal_pretty_code = pretty_code_intern
        let pretty = Datatype.from_pretty_code
        let varname _ = "eshtyp"
        let mem_project = Datatype.never_any_project
      end)

    (** Operations used by the abstract value *)
  let env (d: eshtyp) = d.seid

  let bottom_of sei = { seid = sei; shape = Bot }

  let top_of sei = { seid = sei; shape = Top }


  (**************************************************************************)
  (** { Add/remove symbolic variables} *)
  (**************************************************************************)
  let senv_add_saddr_1 (seid: MEV.t)
    : (MEV.t * Mman_svar.svid)
    =
    let nseid, nvl = Mman_env.senv_addsvar seid
        [(Mman_svar.sv_mk_saddr ~svid:0 Mman_svar.SVAddr)]
    in
    let nvi =
      (match nvl with
       | [vi] ->
           begin
             assert (vi.id != Mman_svar.svid_hole);
             vi.id
           end
       | _ ->
           let _ = Mman_options.Self.failure "Internal error@."
           in Mman_svar.svid_hole
      )
    in
    nseid, nvi

  let rec mls_insert_after (mls: Mman_svar.svid list) (id: Mman_svar.svid)
      (nid: Mman_svar.svid)
    : Mman_svar.svid list
    =
    match mls with
    | [] -> raise Not_found
    | e::l ->
        if e == id then (e::(nid::l))
        else e::(mls_insert_after l id nid)



    (** create a new svar (feature type) and add into the svarlist of SEnv*)
  let new_sv_feat (sei:Mman_env.t) (opvid) (fk:Mman_dabs.feature_kind) =
      let sev = Mman_env.senv_get sei in
      let len = (Mman_env.max_key_vidmap sev.svars) in
      let newsv = Mman_svar.sv_mk_feat ~svid:(len+1) (opvid) fk in
      sev.svars <- Mman_env.VidMap.add (len+1) newsv sev.svars


   (** create a new svar represent the node *)
  let new_sv_add (sei:Mman_env.t) =
      ()


  (**************************************************************************)
  (** { Evaluation location and expression  } *)
  (**************************************************************************)
    (**
      * Evaluation of a left-value in an extended shape.
      *)
  let rec evalL (lv:Mman_asyn.alval) (es: eshtyp)
      : (Mman_asyn.alval option) * (Mman_asyn.alval list)
      =
      let seid = es.seid in
      match es.shape with
      | Top | Bot -> None, [] (* Error case *)

      | S(g) ->
          begin
            match lv with
            | AVar _ ->
                (* transform program var into a symbolic variable *)
                let alv, _ = Mman_asyn.to_senv_lval seid lv true in
                Some(alv), []

            | AMem(vi) ->
                (* as a left value, *v is defined when
                   - v is a ptr variable
                   - v is initialized to a location in the heap
                   and is the content (offset 0) of this location
                *)
                let svi = Mman_env.senv_getvar seid (Mman_svar.sv_mk_var vi) in
                let svid = (Mman_svar.Svar.id svi) in
                if not(Mman_svar.isPtrType (Mman_env.senv_getvtyp seid svid))
                then (* type checking should do this check *)
                  None, [] (* interpreted as an error *)
                else
                (
                  (* get the location to which svi points to *)
                     (* let lsvi = MEV.EnvMap.find svid g.stack in *)
                  let lsvi = SHA.shape_get_star_to svi g in
                  match lsvi with
                   | Some (svi2) ->
                        Some(ASVar(svi2.id)), []
                   | _ ->
                        None, []
                  )

            | ASVar svid ->
                (* find the information about this symbolic variable *)
                let svif = Mman_env.senv_getvinfo seid svid in
                (match svif.Mman_svar.kind with
                 | Mman_svar.Feature(Some(svid),fk) ->
                     (* be sure that the feature may be assigned in the graph *)
                     evalL_feat svid fk g
                 | _ ->
                     Some(lv), []
                )

            | AFeat(fk,al) ->
                (** find feature of location(al) *)
                begin
                  let r, vf = evalL al es in
                  match r with
                  | None -> (* propagate the error *)
                      None, vf

                  | Some (ASVar svid) ->
                      if vf != [] then
                        Some(lv), vf  (* return the same value *)
                      else
                        evalL_feat svid fk g

                  | _ ->
                      (* internal error: nested features are not dealt *)
                      None, []
                end
            | AFld _ ->
                None, [] (* TODO: non-syntactic change to supported *)
          end

  and evalL_feat (svid:Mman_svar.svid) (fk:Mman_dabs.feature_kind) g
      : (Mman_asyn.alval option) * (Mman_asyn.alval list)
      =
      (* get the node from the shape *)
      let ndi = SHA.shape_find svid g in
      (* get the node and ites out edge *)
      let unfif  = SHA.shape_ed_loc ndi fk g in
      (* unfold feedback *)
      let ed = snd unfif in
      if (ed == []) then (* the edge needs to be unfolded is empty *)
        Some(AFeat(fk,ASVar svid)), []
      else
        (* need to unfold *)
        None, [(AFeat(fk,ASVar svid))]


    (**
     * Evaluation of an expression in an extended shape.
     * return
     * 1. directly obtained from the shape: (e,[])
     * 2. needs unforlding of left values to evaluate: (e,vf)
     * 3. error in evaluation of some location expression: (None, [])
    *)

  let rec evalE (exp: Mman_asyn.aexp) (es: eshtyp)
      :(Mman_asyn.aexp option) * (Mman_asyn.alval list)
      =
      match es.shape with
      | S(g) ->
          begin
            match exp with
            | ACst (it) ->
                (* evaluate in data part *)
                Some (ACst it),[]

            | ALval (al) ->
                (* evaluate a location *)
                evalE_lval al es

            | AAddrOf (al) ->
                evalE_lval al es

            | AUnOp (op, ex) ->
                begin
                  let r, vf = evalE ex es in
                  if vf != []  then
                    Some (exp), vf
                  else match r with
                    | None -> None, []
                    | Some(e1) ->
                        Some (AUnOp (op, e1)), []
                end

            | ABinOp (bop , ex1 , ex2) ->
                let r1, vf1 = evalE ex1 es in
                let r2, vf2 = evalE ex2 es in
                if (vf1 != []) || (vf2 != [])  then
                  Some (exp), (vf1) @ (vf2)
                else  (* (vf1 == []) && (vf2 == []) *)
                  (match r1, r2 with
                   | None, _ | _, None -> None, []
                   (* if ptr on e1 which is not a block, unfold *)
                   | Some(e1), Some(e2) ->
                       (* Some (ABinOp (bop, e1, e2)), []*)
                      let osvi = Mman_asyn.get_saddr e1 in
                      (
                       match osvi, bop with
                       | Some(svi), AAdd ->
                           if svi == Mman_svar.svid_hli
                           then
                             (* nothing to do *)
                             Some (ABinOp (bop, e1, e2)), []
                           else
                             (* so it is pointer arithmetics, search atom from svi *)
                             (try

                                let at = SHA.Nemap.find svi g in
                                 (
                                  match at.ed_H with
                                  |  Some(Blk ni)  ->
                                  Some (ABinOp (bop, e1, e2)), []
                                  | _ ->
                                  Some (ABinOp (bop, e1, e2)),
                                         [AFeat(DA_CSZ, ASVar(svi))]
                                  )
                              with Not_found ->
                                (* no atom from svi *)
                                None, []
                             )
                       | _, _ ->
                           Some (ABinOp (bop, e1, e2)), []
                      )
                  )
          end
      |_ -> None,[]

    (** return the value (content) of a left value *)
  and evalE_lval (lv:Mman_asyn.alval) (es: eshtyp)
      : (Mman_asyn.aexp option) * (Mman_asyn.alval list)
      =
      let seid = es.seid in
      match es.shape with
      | Bot | Top -> None, [] (* Error case *)
      
      | S(g) ->
          begin
            match lv with
            | AVar avif ->
                (* transform program var into a symbolic variable *)
                let alv, _ = Mman_asyn.to_senv_lval seid lv false in
                Some(ALval alv), []

            | ASVar svid ->
                (* find the information about this symbolic variable *)
                let svif = Mman_env.senv_getvinfo seid svid in
                (match svif.Mman_svar.kind with
                 | Mman_svar.Feature(Some(svid),fk) ->
                     (* be sure that the feature may be assign in the graph *)
                     evalL_feat_val svid fk g
                 | _ ->
                     Some(ALval lv), []
                )

            | AMem vif ->
                begin
                  (* find the node that sv(vif) points to *)
                  let nid, pt = SHA.shape_get_star_val es.seid vif g in
                  match pt with
                  | Some nd -> Some (ALval (ASVar nd.id)) ,[]
                  | None -> None, []
                end

            | AFeat(fk,al) ->
                begin
                  let r, vf = evalL al es in
                  match r  with
                  | None ->
                        None, vf

                  | Some (ASVar svid) ->
                        if vf != [] then
                          Some(ALval lv), vf
                        else
                          evalL_feat_val svid fk g

                  | _ ->
                      (* TODO: for the moment, no nesting of features *)
                      None, []
                end

            | AFld (al, feif)->
                None, [] (* TODO: only syntactic translation of fields *)
          end



    (** Return the expression denoting the value of fk(svi),
      * if it is available in the graph,
      * or the left value to unfold otherwise
    *)
  and evalL_feat_val (svid:Mman_svar.svid) (fk:Mman_dabs.feature_kind) g
      : (Mman_asyn.aexp option) * (Mman_asyn.alval list)
      =
      let ndi = SHA.shape_find svid g in
      let res = SHA.shape_ed_val2 ndi fk g in
      match res with
      | (Some(nsi), Some(fie), None) ->
          (* evaluation leads to a variable *)
          Some(ALval (ASVar fie.id)),[]

      | (Some(nsi), None, Some(ed,edt))->
          (* evaluation needs unfolding *)
          None, [(AFeat(fk,ASVar svid))]

      | _ -> None, []


    (** Meet the graph with the list of constraints.
     * Returns
     * a new extended shape -- may be bottom -- if the constraints may be applied
     * a list of left values to be unfolded if the constraints can not be applied
     * the list of constraints for the data part.
    *)


  (**************************************************************************)
  (** { Meet with a gaurd  } *)
  (**************************************************************************)

  let rec guard (d: eshtyp) (c1_cn: Mman_asyn.aconstr list)
      : (eshtyp * Mman_asyn.aconstr list) option * (Mman_asyn.alval list)
      =
      if is_bottom d then
        Some(d, c1_cn), []
      else if is_top d then
        (* TODO: transform c1_cn, if possible into a graph,
         *       deal only with constraints v # null
        *)
        Some(d, c1_cn), [] (* TODO *)
      else
        let nesh = ref (copy_intern d) in
        let nllv = ref [] in
        let ac1_acn =
          List.map
            (fun ci ->
               if is_bottom !nesh then
                 ci
               else
                 let shc, llv = meet_exp_one !nesh ci in
                 match shc with
                 | None -> (* error occurs in guard evaluation*)
                     begin
                       nesh := bottom_of d.seid;
                       ci
                     end
                 | Some(sh1, c1) ->
                     begin
                       nesh := sh1;
                       nllv := llv @ (!nllv);
                       ci
                     end
            )
            c1_cn
        in
        if is_bottom !nesh then
          None, []
        else
          Some(!nesh, ac1_acn), !nllv

  and meet_exp_one (d: eshtyp) (ci: Mman_asyn.aconstr)
      : (eshtyp * Mman_asyn.aconstr) option * (Mman_asyn.alval list)
      =
      let sei = d.seid in
      match ci with
      | Mman_asyn.ATrue -> Some(d, ci), []
      | Mman_asyn.AFalse -> Some((bottom_of sei), ci), []
      | Mman_asyn.ACmp(op, aeL, aeR) ->
          (* evaluate expressions of ci using the shape *)
          let oeLn, lvL = evalE aeL d in
          let oeRn, lvR = evalE aeR d in
          if (lvL != []) || (lvR != []) then
            (* needs to unfold *)
            Some(d, ci), lvL @ lvR
          else
            match oeLn, oeRn with
            | None, _ | _, None -> None, []
            | Some(aeLn), Some(aeRn) ->
                (let eLn, isptrL = Mman_asyn.to_senv sei aeLn in
                 let eRn, isptrR = Mman_asyn.to_senv sei aeRn in
                 if isptrL && isptrR then
                   (* both expressions have type ptr, get the left value,
                    * feature and field can not be both <> None *)
                   (let svL, fkL, fldL = Mman_asyn.split_lval sei aeL in
                    let svR, fkR, fldR = Mman_asyn.split_lval sei aeR in
                    let sh = sh_meet_exp sei d.shape op svL fkL fldL svR fkR fldR in
                    if (sh == Bot) then
                      Some((bottom_of sei), Mman_asyn.ACmp(op, aeLn, aeRn)), []
                    else
                      let nesh = { seid = sei; shape = sh } in
                      Some(nesh, Mman_asyn.ACmp(op, aeLn, aeRn)), []
                   )
                 else
                   (* this is a data constraint, return it for the data part *)
                   Some(d, Mman_asyn.ACmp(op, aeLn, aeRn)), []
                )

  and sh_meet_exp (sei: Mman_env.t) (d: shtyp) (op: Mman_asyn.acmpop)
        (svL: Mman_svar.Svar.t)
        (fkL: Mman_svar.Svar.t option) (_flL: Cil_types.fieldinfo option)
        (svR: Mman_svar.Svar.t)
        (fkR: Mman_svar.Svar.t option) (_flR: Cil_types.fieldinfo option)
        :shtyp
        =
        begin
          let gmeet = ref Bot in
          begin
            match d with
            | S (g) ->
                begin
                  match op with
                  | AEQ ->
                  (*access_edge_eq sei g svL fkL _flL svR fkR _flR gmeet*)
                     begin
                      match fkL,fkR with
                      | None, None        -> gmeet := guard_x_y_eq svL svR g
                      | Some(f1), None    -> gmeet := guard_x_fi_y_eq svL svR f1 g
                      | None, Some(f2)    -> gmeet := guard_x_y_fi_eq svL svR f2 g
                      | Some(f1), Some(f2)-> gmeet := guard_x_fi_y_fi_eq svL svR f1 f2 g
                     end
                  | ADISEQ ->
                  (*access_edge_deq sei g svL fkL _flL svR fkR _flR gmeet*)
                     begin
                      match fkL,fkR with
                          | None, None        -> gmeet := guard_x_y_diseq svL svR g
                          | Some(f1), None    -> gmeet := guard_x_fi_y_diseq svL svR f1 g
                          | None, Some(f2)    -> gmeet := guard_x_y_fi_diseq svL svR f2 g
                          | Some(f1), Some(f2)-> gmeet := guard_x_fi_y_fi_diseq svL svR f1 f2 g
                     end
                  | _ -> () (*TODO*)
                end;
            |_ -> ();
            end;
            !gmeet
        end

  and guard_x_y_eq (vx:Svar.t) (vy:Svar.t) g
      : shtyp
      =
        (*1.find the corresponding node (ndx,ndy) in shape labeled by vx and vy respectively *)
        (*2.find the targets that nvx and nvy pointing to *)
        (*3.if equal, return g else bottom *)
        let ndx = SHA.shape_get_star_to vx g in
        let ndy = SHA.shape_get_star_to vy g in
         match ndx,ndy with
          | Some(sv1),Some(sv2) ->
              if (sv1.id == sv2.id) then
                  S(g)
              else Bot
          | _ -> Bot

  and guard_x_fi_y_eq (vx:Svar.t) (vy:Svar.t) (fi:Svar.t) g
      : shtyp
      =
      (*vx->fi == vy *)

        (* find the field(fi) of vx *)
        let ndy = SHA.shape_get_star_to vy g in
        match fi.kind with
        | Mman_svar.Feature (Some(svid),fk) ->
            begin
              let res = SHA.shape_ed_val2 vx.id fk g in
              match res, ndy with
              (* the graph satisfy the constraint *)
              | (_, Some(fie), _), Some(nysv)->
                  if fie.id == nysv.id then
                    S(g)
                  else
                    Bot
              | _ -> Bot
            end
        | _ -> Bot

  and guard_x_y_fi_eq (vx:Svar.t) (vy:Svar.t) (fi:Svar.t) g
      : shtyp
      =
        (* vx == vy->fi *)

        let ndx = SHA.shape_get_star_to vx g in

        (* find the field(fi) of vx *)
        match fi.kind with
        | Mman_svar.Feature (Some(svid),fk) ->
          begin
            let res = SHA.shape_ed_val2 vy.id fk g in
            match res,ndx with
            (* the graph satisfy the constraint *)
            | (_, Some(fie), _),Some(ndxsv)->
                  if fie.id == ndxsv.id then
                    S(g)
                  else
                    Bot
            | _ -> Bot
          end
        | _ -> Bot

  and guard_x_fi_y_fi_eq (vx:Svar.t) (vy:Svar.t) (f1:Svar.t) (f2:Svar.t) g
      : shtyp
      =
      (* vx->fi == vy->fi *)
       match f1.kind,f2.kind  with
        | Mman_svar.Feature (Some(svid1),fk1),Mman_svar.Feature (Some(svid2),fk2)  ->
          begin
            let res1 = SHA.shape_ed_val2 vx.id fk1 g in
            let res2 = SHA.shape_ed_val2 vy.id fk2 g in
            match res1, res2 with
            (* the graph satisfy the constraint *)
            | (_, Some(fie1), _), (_, Some(fie2), _) ->
                   if fie1.id == fie2.id then
                    S(g)
                  else
                    Bot
            | _ -> Bot
          end
        | _ -> Bot

  and guard_x_y_diseq (vx:Svar.t) (vy:Svar.t) g
      : shtyp
      =
        (* vx->fi != vy->fi *)

        (*1.find the corresponding node (ndx,ndy) in shape labeled by vx and vy respectively *)
        (*2.find the targets that nvx and nvy pointing to *)
        (*3.if not equal, return g else bottom *)
        let ndx = SHA.shape_get_star_to vx g in
        let ndy = SHA.shape_get_star_to vy g in
         match ndx,ndy with
          | Some(sv1),Some(sv2) ->
              if (sv1.id != sv2.id) then
                  S(g)
              else Bot
          | _ -> Bot

  and guard_x_fi_y_diseq (vx:Svar.t) (vy:Svar.t) (fi:Svar.t) g
      : shtyp
      =
        (*vx->fi != vy *)
        let ndy = SHA.shape_get_star_to vy g in
        match fi.kind with
        | Mman_svar.Feature (Some(svid),fk) ->
            begin
              let res = SHA.shape_ed_val2 vx.id fk g in
              match res,ndy with
              (* the graph satisfy the constraint *)
              | (_, Some(fie), _),Some(ndysv) ->
                  if fie.id != ndysv.id then
                    S(g)
                  else
                    Bot
              | _ -> Bot
            end
        | _ -> Bot

  and guard_x_y_fi_diseq (vx:Svar.t) (vy:Svar.t) (fi:Svar.t) g
      : shtyp
      =
         (* vx != vy->fi *)

        let ndx = SHA.shape_get_star_to vx g in

        (* find the field(fi) of vx *)
        match fi.kind with
        | Mman_svar.Feature (Some(svid),fk) ->
          begin
            let res = SHA.shape_ed_val2 vy.id fk g in
            match res,ndx with
            (* the graph satisfy the constraint *)
            | (_, Some(fie), _),Some(ndxsv) ->
                  if fie.id != ndxsv.id then
                    S(g)
                  else
                    Bot
            | _ -> Bot
          end
        | _ -> Bot

  and guard_x_fi_y_fi_diseq (vx:Svar.t) (vy:Svar.t) (f1:Svar.t) (f2:Svar.t) g
      : shtyp
      =
       (* vx->fi != vy->fi *)
       match f1.kind,f2.kind  with
        | Mman_svar.Feature (Some(svid1),fk1),Mman_svar.Feature (Some(svid2),fk2)  ->
          begin
            let res1 = SHA.shape_ed_val2 vx.id fk1 g in
            let res2 = SHA.shape_ed_val2 vy.id fk2 g in
            match res1, res2 with
            (* the graph satisfy the constraint *)
            | (_, Some(fie1), _), (_, Some(fie2), _) ->
                   if fie1.id != fie2.id then
                    S(g)
                  else
                    Bot
            | _ -> Bot
          end
        | _ -> Bot



  (**************************************************************************)
  (** {folding, normalization,    } *)
  (**************************************************************************)

  let zip_list_edge els eid (ety:SHA.edge_t) (g:SHA.shape)
      :SHA.shape
      =
      (* folding a list of node link with the same type edge
         ls:n1->n2->n3->n4...->nk
         into
         ls:n1->nk
         at present: do not remove nodes: n2,...,nk-1
      *)
      begin
        let res = ref SHA.Nemap.empty in
        res := g;
        let len = List.length els in
        if (len > k+1 ) then                                        (** at most k anonymous nodes *)
          (
            let nd = List.hd els in                                    (** the frist node id  *)
            let ne = List.nth els len in                               (** the last node *)
            let ndvif = MEV.senv_getvinfo eid nd in                    (** svar record *)
            let nevif = MEV.senv_getvinfo eid ne in                    (** svar record *)
            match ety with
            | FCK ->
                begin
                  for i = 1 to len do
                    let nid = List.nth els i in
                    let ni_if = SHA.Nemap.find nid !res in
                    res := SHA.Nemap.add (List.nth els i) {ni_if with ed_F = SHA.new_emp_fls} !res;  (* delete the link *)
                  done;
                  let fw = SHA.sv_nil in                              (** TODO, work with words *)
                  let ed = SHA.new_fls ndvif nevif fw in           (** new fls edge *)
                  let ni = SHA.Nemap.find nd !res in
                  res := SHA.Nemap.add (nd) {ni with ed_F = ed} !res
                end
            | CHK ->
                begin
                  for i = 1 to len do
                    let nid = List.nth els i in
                    let ni_if = SHA.Nemap.find nid !res in
                    res := SHA.Nemap.add (List.nth els i) {ni_if with ed_H = SHA.new_emp_chk} !res;  (* delete the link *)
                  done;
                  (*TODO: info of edge *)
                  (*let ed = SHA.new_chk ndvif nevif _,_,_ in              (** new fls edge *)*)
                  let ed = SHA.new_emp_chk in
                  let ni = SHA.Nemap.find nd !res in
                  res := SHA.Nemap.add (nd) {ni with ed_H = ed} !res
                end
            | BLK ->
                begin
                  for i = 1 to len do
                    let nid = List.nth els i in
                    let ni_if = SHA.Nemap.find nid !res in
                    res := SHA.Nemap.add (List.nth els i) {ni_if with ed_H = SHA.new_emp_blk} !res;  (* delete the link *)
                  done;
                  let ed = SHA.new_blk ndvif nevif in              (** new fls edge *)
                  let ni = SHA.Nemap.find nd !res in
                  res := SHA.Nemap.add (nd) {ni with ed_H = ed} !res
                end
            | CLS ->
                begin
                  for i = 1 to len do
                    let nid = List.nth els i in
                    let ni_if = SHA.Nemap.find nid !res in
                    res := SHA.Nemap.add (List.nth els i) {ni_if with ed_H = SHA.new_emp_cls} !res;  (* delete the link *)
                  done;
                  let cw = SHA.sv_nil in                              (** TODO, work with words part*)
                  let ed = SHA.new_cls ndvif nevif cw in           (** new fls edge *)
                  let ni = SHA.Nemap.find nd !res in
                  res := SHA.Nemap.add (nd) {ni with ed_H = ed} !res
                end
            | PLS ->
                begin
                  for i = 1 to len do
                    let nid = List.nth els i in
                    let ni_if = SHA.Nemap.find nid !res in
                    res := SHA.Nemap.add (List.nth els i) {ni_if with ed_F = SHA.new_emp_pls} !res;  (* delete the link *)
                  done;
                  let pw = SHA.sv_nil in                              (** TODO, work with words part*)
                  let ed = SHA.new_pls ndvif nevif pw in              (** new fls edge *)
                  let ni = SHA.Nemap.find nd !res in
                  res := SHA.Nemap.add (nd) {ni with ed_F = ed} !res
                end
          );
        !res
      end

    (** normalze the graph *)
  let k_normalization eid g =
      begin
        let res = ref SHA.Nemap.empty in
        res := g;
        let del = ref [] in  (** the deleted var list*)
        let fck_l = SHA.anond_list_FCK g in
        List.iter
          (fun ls ->
             let len = List.length ls in
             if (len > k-1) (**)
             then (
               res := zip_list_edge ls eid FCK !res;
               del := !del @ (List.tl fck_l);
             )
          )
          fck_l;
        let cls_l = SHA.anond_list_CLS g in
        List.iter
          (fun ls ->
             let len = List.length ls in
             if (len > k-1) (**)
             then (
               res := zip_list_edge ls eid CLS !res;
               del := !del @ (List.tl cls_l);
             )
          )
          cls_l;
        let pls_l = SHA.anond_list_PLS g in
        List.iter
          (fun ls ->
             let len = List.length ls in
             if (len > k-1) (**)
             then (
               res := zip_list_edge ls eid PLS !res;
               del := !del @ (List.tl pls_l);
             )
          )
          pls_l;
        let chk_l = SHA.anond_list_CHK g in
        List.iter
          (fun ls ->
             let len = List.length ls in
             if (len > k-1) (**)
             then (
               res := zip_list_edge ls eid CHK !res;
               del := !del @ (List.tl chk_l);
             )
          )
          chk_l;
        let blk_l = SHA.anond_list_BLK g in
        List.iter
          (fun ls ->
             let len = List.length ls in
             if (len > k-1) (**)
             then (
               res := zip_list_edge ls eid BLK !res;
               del := !del @ (List.tl blk_l);
             )
          )
          blk_l;
        !res, !del
      end


    (**
     * Folding in a variable using the existing abstract
     * heap predicates of level l. It returns the
     * resulting extended heap and the variables which
     * have been removed by the folding.
    *)
  let fold (es:eshtyp)  =
      begin
        let res = ref es in
        let vls = ref [] in
        begin
          match es.shape with
          | S(g) ->
              begin
                let nom = k_normalization es.seid g in
                !res.shape <- S(fst nom);
                vls := (snd nom);
              end
          | _ -> ()
        end
        ;
        !res,!vls
      end


  (**************************************************************************)
  (** { unfolding } *)
  (**************************************************************************)

  let unfold_FLS (nid) (es:eshtyp)
  :( eshtyp*   Mman_svar.svarinfo list * Mman_asyn.aconstr list )list
  =
    (* unfold a CLS edge
     * fls(a,b) =>
     * case1: fck(a,_fn(a)) * fls(_fn(a),b)   /\ Cn
     * case2: fck(a,_fn(a))  /\ cn
     *)
      begin
        let ei = es.seid in

        (** stores the new eshape *)
        let esu1 = ref es in
        let esu2 = ref es in

        (** vars stores the new sv introduced *)
        let vars1 = ref [] in
        let vars2 = ref [] in

        (** cons stores the new constraints introduced *)
        let cons1 = ref [] in
        let cons2 = ref [] in

        begin
          match es.shape with
          | S(g) ->
              begin
                (** res stores the result of case1 *)
                let res = ref SHA.Nemap.empty in
                res := g;

                (** the successor of a *)
                let b = SHA.get_succ_fls nid g in

                (* node info of a *)
                let nif = SHA.Nemap.find nid g in

                let new_sv_i = ref SHA.sv_nil in (* To store _fn(a)*)

                (* get the environment and find the svar that represents the
                    * feature (_cn) of nid in the environment *)
                let sinfo = MEV.senv_get ei in
                  MEV.VidMap.iter
                  (
                    fun svid sv0 ->
                      begin
                        match sv0.kind with
                        | Feature(Some(rid), fk) ->
                            begin
                              if ((rid == nid) &&
                                  ((!new_sv_i) == SHA.sv_nil) &&
                                  (fk == DA_FNXT))
                              then
                                new_sv_i := sv0
                            end
                        | _-> ()
                            ;
                      end
                  )
                  sinfo.svars
                  ;
                (** If there is no sv represents feature (_fn(x)) in environment, a new sv will be introduced *)
                if (!new_sv_i == SHA.sv_nil) then
                  (
                    (** new_sv_feat *)
                    new_sv_feat (!esu1.seid) (Some(nid)) (DA_FNXT);
                    let sev = Mman_env.senv_get !esu1.seid in
                    new_sv_i := snd (Mman_env.VidMap.max_binding sev.svars)
                  )
                  ;
                if (((!new_sv_i) !=  SHA.sv_nil) && (!new_sv_i.id != b.id)) then (** case1 *)
                  (
                    (* add edge fck between nid and new_sv_i
                     * add edge fls between new_sv_i and b
                     *)
                    let ndi = ref nif in
                    let old_ed = nif.ed_F in
                    match old_ed with
                    | Some(Fls ed) ->
                        begin
                          let new_ed = Some(SHA.Fck { fn = !new_sv_i;fp = SHA.sv_nil; csz = SHA.sv_nil ; }) in
                          !ndi.ed_F <- new_ed;   (* new node info of nid*)

                          (* add edge fck between nid and new_sv_i *)
                          res := SHA.Nemap.add nid !ndi !res;

                          let cw = SHA.sv_nil in    (** TODO:word *)
                          let new_ed_fls = SHA.new_fls !new_sv_i b cw in
                          let new_if_i = SHA.new_ni F None new_ed_fls None false in
                          (* add edge fls between new_sv_i and b *)
                          res := SHA.Nemap.add !new_sv_i.id new_if_i !res;

                          (** add new svar  *)
                          vars1 := (!vars1) @ [(!new_sv_i)];
                          !esu1.shape <- S(!res);

                          (** TODO: ADD new constaints*)
                          (* ed.fw = nid.w [dot] cw *)
                        end
                    | _ -> ()
                  )
                  ;
                if (((!new_sv_i) !=  SHA.sv_nil) && (!new_sv_i.id == b.id)) then (** case2 *)
                  (
                    (* change the fls edge into fck edge *)

                    (** res2 stores the result of case2 *)
                    let res2= ref SHA.Nemap.empty in
                    res2 := g;

                    let ndif = ref nif in
                    let old_ed = nif.ed_F in
                    match old_ed with
                    | Some(Fls ed) ->
                        begin
                          (* add fck edge between a and b *)
                          (* assert ed.b = b *)
                          let new_ed = Some( SHA.Fck { fn = ed.b; fp = SHA.sv_nil; csz = SHA.sv_nil;} )in
                          !ndif.ed_F <- new_ed;
                          res2 := SHA.Nemap.add nid !ndif !res2;

                          !esu2.shape <- S (!res2);
                          (** TODO: ADD new constaints*)
                        end
                    | _ -> ()
                  )
                  ;
              end
          |_-> ()
        end
        ;
        [(!esu1,!vars1,!cons1);(!esu2,!vars2,!cons2)]
      end
  
  let unfold_CLS (nid) (es:eshtyp)
      :(eshtyp * Mman_svar.svarinfo list * Mman_asyn.aconstr list) list
      =
    (* unfold a CLS edge
     * cls(a,b) =>
     * case1: chk(a,cn_a,...) * cls(cn_a,b) /\ ...
     * case2: chk(a, b) /\...
     *)
      begin
        let ei = es.seid in

        (* esu stores the updated eshape *)
        let esu1 = ref es in
        let esu2 = ref es in

        (** vars stores the new sv introduced *)
        let vars1 = ref [] in
        let vars2 = ref [] in

        (** cons stores the new constraints introduced *)
        let cons1 = ref [] in
        let cons2 = ref [] in

        begin
          match es.shape with
          | S(g) ->
              begin
                (** res stores the result of case1 *)
                let res = ref SHA.Nemap.empty in
                res := g;

                (** res2 stores the result of case2 *)
                let res2 = ref SHA.Nemap.empty in
                res2 := g;

                let a = Mman_env.senv_getvinfo ei nid in

                let b = SHA.get_succ_cls nid g in

                (*find the sv (with id = b) in env *)
                let nif = SHA.Nemap.find nid g in (* node info of a  *)

                (* to store _cn(a)*)
                let new_sv_i = ref SHA.sv_nil in

                (* get the environment and find the svar that represents the
                    * feature (_cn) of nid in the environment *)
                let sinfo = MEV.senv_get ei in
                MEV.VidMap.iter
                  (
                    fun svid sv0 ->
                      (
                        match sv0.kind with
                        | Feature(Some(rid), fk) ->
                            if ((rid == nid) &&
                                ((!new_sv_i) == SHA.sv_nil) &&
                                (fk == DA_CNXT))
                            then
                              new_sv_i := sv0
                        | _-> ()
                            ;

                      )
                  )
                  sinfo.svars;
                (** If there is no sv represents feature (_cn(x)) in environment,
                     * a new sv will be introduced *)
                if (!new_sv_i == SHA.sv_nil) then
                  (
                    new_sv_feat (!esu1.seid) (Some(nid)) (DA_CNXT);
                    let sev = Mman_env.senv_get !esu1.seid in
                    new_sv_i := snd (Mman_env.VidMap.max_binding sev.svars)
                  )
                ;
                if ((!new_sv_i) !=  SHA.sv_nil) && (!new_sv_i.id != b.id ) then (* case1 *)
                  (
                    (* and edge fck between nid and new_sv_i *)
                    let old_ed = nif.ed_H in
                    let ndi = ref nif in
                    match old_ed with
                    | Some(Cls ed) ->
                        begin

                          (*1. add fck between a and new_sv_i *)
                          (*TODO: info of edge *)
                          let cdt = SHA.sv_nil in
                          let cp = SHA.sv_nil in
                          let csz = SHA.sv_nil in
                          let new_ed = Some(SHA.Chk{
                                         a = a;
                                         b = !new_sv_i;
                                         cdt = cdt;
                                         csz = csz;
                                         cn = !new_sv_i;
                                         cp = cp
                                     })
                             in
                          !ndi.ed_H <- new_ed;   (* new node info of nid*)
                          res := SHA.Nemap.add nid !ndi !res;


                          (*2. add fls between new_sv_i and b *)
                          let cw = SHA.sv_nil in       (** TODO:word *)
                          let new_ed_cls = SHA.new_cls !new_sv_i b cw in
                          let new_if_i = SHA.new_ni F SHA.new_ed_h new_ed_cls None false in
                          res := SHA.Nemap.add !new_sv_i.id new_if_i !res;

                          (** TODO:add new svar and new constaints *)
                          vars1 := (!vars1) @ [(!new_sv_i)];
                          (** *)
                          !esu1.shape <- S(!res);
                        end
                    | _ -> ()
                  )
                ;
                if ((!new_sv_i) !=  SHA.sv_nil) && (!new_sv_i.id == b.id ) then (* case2 *)
                  (
                    let ndif = ref nif in
                    let old_ed = nif.ed_H in
                    match old_ed with
                    | Some(Cls ed) ->
                        begin
                          (** add chk edge between a and b *)

                          (*TODO: info of edge *)
                          let cdt = SHA.sv_nil in
                          let cp = SHA.sv_nil in
                          let csz = SHA.sv_nil in
                           let new_ed = Some(SHA.Chk{
                                         a = a;
                                         b = b;
                                         cdt = cdt ;
                                         csz = csz ;
                                         cn = b;
                                         cp = cp
                                     })
                             in
                          !ndif.ed_H <- new_ed;
                          res2 := SHA.Nemap.add nid !ndif !res2;
                          !esu2.shape <- S (!res2);
                        end
                    | _ -> ()
                  )
                ;
              end
          |_-> ()
        end
        ;
        [(!esu1,!vars1,!cons1);(!esu2,!vars2,!cons2)]
      end
  let unfold_CHK (nid) (es:eshtyp)
      :(eshtyp * Mman_svar.svarinfo list * Mman_asyn.aconstr list ) list
      =
    (* unfold
     * chk(a,b) =>
     * case1:chd(a,...) * blk(a_cdt,b)
     * case2:chd(a,b)
     *)
      begin
        let ei = es.seid in
        (* esu stores the updated eshape *)
        let esu1 = ref es in
        let esu2 = ref es in

        (** vars stores the new sv introduced *)
        let vars1 = ref [] in
        let vars2 = ref [] in

        (** cons stores the new constraints introduced *)
        let cons1 = ref [] in
        let cons2 = ref [] in

        begin
          match es.shape with
          | S(g) ->
              begin

                let res = ref SHA.Nemap.empty in
                res := g;
                let b = SHA.get_succ_chk nid g in
                (*find the sv (with id = b) in env *)
                let sv_b = ref SHA.sv_nil in
                let sv_a = ref SHA.sv_nil in
                let nif = SHA.Nemap.find nid g in (* node info *)
                let new_sv_i = ref SHA.sv_nil in
                (* get the environment and find the svar that represents the
                 * feature (_cn) of nid in the environment *)
                let sinfo = MEV.senv_get ei in
                MEV.VidMap.iter
                  (
                    fun svid sv0 ->
                      (match sv0.kind with
                       | Feature(Some(rid), fk) ->
                           if ((rid == nid) &&
                               ((!new_sv_i) == SHA.sv_nil) &&
                               (fk == DA_CDAT))
                           then
                             new_sv_i := sv0
                       | _-> ()
                           ;
                           if (svid == b.id)
                           then sv_b := sv0;
                           if (svid == nid)
                           then sv_a := sv0
                      )
                  )
                  sinfo.svars
                ;
                if (!new_sv_i == SHA.sv_nil) then
                  (
                    (** TODO *)
                    (* To add a new svar (type: address )*)
                    new_sv_feat (!esu1.seid) (Some(nid)) (DA_CDAT);
                    let sev = Mman_env.senv_get !esu1.seid in
                    new_sv_i := snd (Mman_env.VidMap.max_binding sev.svars)
                  )
                ;
                if ((!new_sv_i) !=  SHA.sv_nil)  && (!new_sv_i.id != b.id ) then
                  (
                    (* and edge fck between nid and new_sv_i *)
                    let old_ed = nif.ed_H in
                    let ndi = nif in
                    match old_ed with
                    | Some(Chk ed) ->
                        begin
                          let sz = SHA.sv_nil in                                  (** TODO: csz(nid) *)
                          let cnx = SHA.sv_nil in                                 (** TODO: cn(nid) *)
                          let cpx = SHA.sv_nil in                                 (** TODO: cp(nid) *)
                          let new_ed = Some(SHA.Chd{a = !sv_a; b = !sv_b; cdt = !new_sv_i; csz = sz; cn = cnx; cp = cpx})in
                              ndi.ed_H = new_ed;                                     (** new node info of nid *)
                              res := SHA.Nemap.add nid ndi !res;
                          let new_ed_blk = SHA.new_blk !new_sv_i !sv_b  in
                          let new_if_i = SHA.new_ni F SHA.new_ed_h new_ed_blk None false in
                          res := SHA.Nemap.add !new_sv_i.id new_if_i !res;

                          vars1 := (!vars1) @ [(!new_sv_i)];
                          !esu1.shape <- S (!res);
                          (*TODO: add new constraints *)

                        end
                    | _ -> ()
                  )
                ;
              end
          |_-> ()
        end
        ;
        [(!esu1,!vars1,!cons1)]
      end
  
  let unfold_BLK2CHD (nid) (es:eshtyp)
     :(eshtyp * Mman_svar.svarinfo list * Mman_asyn.aconstr list) list
     =
    (*
     * blk(a,b) =>
     *  1.chd(a,a1)*blk(a1,b)
     *  2.chd(a,b,...)
     *)
     begin
      let ei = es.seid in
      (* esu stores the updated eshape *)
      let esu1  = ref es in
      let esu2  = ref es in

      (** vars stores the new sv introduced *)
      let vars1 = ref [] in
      let vars2 = ref [] in

      (** cons stores the new constraints introduced *)
      let cons1 = ref [] in
      let cons2 = ref [] in
        begin
        match es.shape with
        | S (g) ->
          begin
            let sh =  ref g in
            let sva = Mman_env.senv_getvinfo ei nid in
            let svb = SHA.get_succ_blk nid g in
            (* case1: b-a = sizeof(chd), blk(a,b) => chd(a,a1,...) *)
            (* remove the old edge blk(...), add the new edge chd(...) *)
            if (true) then (* TODO:Get the W of blk(a,b) *)
            (
              let sz = SHA.sv_nil in          (** TODO: csz(nid) *)
              let cnx = SHA.sv_nil in         (** TODO: cn(nid) *)
              let cpx = SHA.sv_nil in         (** TODO: cp(nid) *)
              let new_ed = Some(SHA.Chd{a = sva; b = svb; cdt = svb; csz = sz; cn = cnx; cp = cpx}) in
              let new_if = SHA.new_ni H new_ed None None false in
                sh := SHA.Nemap.add nid new_if !sh;
                !esu1.shape <- S (!sh);
            (* case2: b-a > sizeof(chd): blk(a,b) => chd(a,a1)*blk(a1,b) *)
            )
            ;
            if (false) then (* TODO:Get the W of blk(a,b) *)
            (
              (* create a new node *)
              (* To add a new svar (type: address )*)
                new_sv_feat (!esu1.seid) (Some(nid)) (DA_CDAT);
                let sev = Mman_env.senv_get !esu1.seid in
                let new_sv_i = snd (Mman_env.VidMap.max_binding sev.svars) in
              (* remove edge between sva and svb, add a new edge between sva and newsv, newsv and svb*)
                (* TODO*)
                let new_ed1 = Some(SHA.Chd {
                                a = sva;
                                b = svb;
                                cdt = SHA.sv_nil;
                                csz = SHA.sv_nil;
                                cn = SHA.sv_nil;
                                cp = SHA.sv_nil}
                              )
                  in
                let new_ed2 = SHA.new_blk new_sv_i svb  in
                let new_if1 = SHA.new_ni H new_ed1, None, None, false in
                let new_if2 = SHA.new_ni H new_ed2, None, None, false in
                     ()
                     (*TODO*)
                     (*sh := SHA.Nemap.add nid new_if1 !sh;
                     sh := SHA.Nemap.add svb.id new_if2 !sh;
                     !esu1.shape <- S(!sh);
                    vars1 := (!vars1) @ [(new_sv_i)];*)
            )
          end

        | _ -> ()
      end
      ;
      [(!esu1,!vars1,!cons1)]
     end
  
  let split_CLS (nid) (svi) (es:eshtyp)
    :(eshtyp * Mman_svar.svarinfo list * Mman_asyn.aconstr list) list
    =
    (* cls(a,b)
     * => cls(a,sv) * chk(sv,a2) * cls(a2,b)
     *)
     begin
      let ei = es.seid in
      (* esu stores the updated eshape *)
      let esu1  = ref es in

      (** vars stores the new sv introduced *)
      let vars1 = ref [] in

      (** cons stores the new constraints introduced *)
      let cons1 = ref [] in

      (* assert there are more than 4 nodes between a and b *)
      begin
      match es.shape with
      | S (g) ->
          begin
           let sh =  ref g in
           let sva = Mman_env.senv_getvinfo ei nid in
           let svb = SHA.get_succ_cls nid g in

      (* TODO:
       * 1.copy the old env
       * 2.intrduce new sv: a1 and a2
       *)
          (*) new_sv_add (!esu1.seid);
          let sev = Mman_env.senv_get !esu1.seid in
          let a1 = snd (Mman_env.VidMap.max_binding sev.svars)in *)

          let a1  = Mman_env.senv_getvinfo ei svi in


          new_sv_add (!esu1.seid);
          let sev = Mman_env.senv_get !esu1.seid in
          let a2 = snd (Mman_env.VidMap.max_binding sev.svars) in

          (* new two edges *)
          let cw1 = SHA.sv_nil in (** TODO:word *)
          let cw2 = SHA.sv_nil in (** TODO:word *)
          let new_ed_cls1 = SHA.new_cls sva a1 cw1 in
          let new_ed_cls2 = SHA.new_cls a2 svb cw2 in

          let new_ed = (SHA.new_emp_chk) in

          let new_if1 = SHA.new_ni H new_ed_cls1 None None false in
          let new_if3 = SHA.new_ni H new_ed_cls2 None None false in
          let new_if2 = SHA.new_ni H new_ed None None false in

           sh := SHA.Nemap.add nid new_if1 !sh;
           sh := SHA.Nemap.add a1.id new_if2 !sh;
           sh := SHA.Nemap.add a2.id new_if3 !sh;
           !esu1.shape <- S(!sh);
           vars1 := (!vars1) @ [(a1)]@ [(a2)];
          end
       |_->()
       end
        ;
       [(!esu1,!vars1,!cons1)]
     end

   let 

    (**
     * Unfolding of an abstract heap starting at v and
     * represented by the predicate f. It returns a set
     * (may be empty) of the extended shape resulting
     * from the unfolding together with the variables
     * introduced by the unfolding and the constraints
     * defining them.
    *)
  
  let unfold_feat (svi:int) (fk: Mman_dabs.feature_kind) (esh: eshtyp)
      : (eshtyp * Mman_svar.svarinfo list * Mman_asyn.aconstr list) list
      =
      match esh.shape with
      | S(g) ->

        let ndif = SHA.shape_get_if svi g in
        match fk with
        | DA_CSZ | DA_CNXT | DA_CDAT | DA_CPRV  ->
              (
                match ndif.SHA.ed_F, ndif.SHA.ed_H with
                | None, Some(SHA.Chd _) | Some(SHA.Fck _), Some(SHA.Chd _) |
                  None, Some(SHA.Chk _) | Some(SHA.Fck _), Some(SHA.Chk _)
                      ->
                      []
                | None, Some(SHA.Blk _)
                      ->
                      unfold_BLK2CHD svi esh

                | Some(Fls _), Some(SHA.Blk _)
                      ->
                      raise (Error "No such graph")

                | None, Some(SHA.Chk _) | Some(SHA.Fck _) , Some(SHA.Chk _)
                      ->
                      []

                | Some(Fls _),Some(SHA.Chk _)
                      ->
                      raise (Error "No such graph")

                | None, Some(Cls _) | Some(Fck _ ), Some(Cls _)
                      ->
                      unfold_CLS svi esh

                | Some(Fck _ ), None
                      ->
                      let cbe = 0 in (* TODO, get cbe *)
                      split_CLS cbe svi esh;

                | Some(Fls _), None
                      ->
                      (* TO check *)
                    begin
                      let res = ref [] in
                      let cbe = 0 in (* TODO *)
                      let fls = unfold_FLS svi esh in
                      List.iter
                      (
                        fun (ess, svrs, cons) ->
                        let r = split_CLS cbe svi ess in
                        res := !res @ r;
                      )
                      fls
                      ;
                      !res
                    end
                  )
      | DA_FNXT | DA_FPRV ->
            (
                match ndif.SHA.ed_F, ndif.SHA.ed_H with
                | Some(Fls _), _
                    ->
                    unfold_FLS svi esh

                | Some(Fck _),_
                    ->
                    []
            )

      | _ -> [] (* TODO *)
  
  let unfold (lv: Mman_asyn.alval) (es:eshtyp)
      : (eshtyp * Mman_svar.svarinfo list * Mman_asyn.aconstr list) list
      =
      match es.shape, lv with
      | S(g), AFeat(fk, ASVar(svi)) ->
          let ndif = SHA.shape_get_if svi g in (** Node info *)
          unfold_feat svi fk es
      | _ -> []


  (**************************************************************************)
  (** { mutate } *)
  (**************************************************************************)
 (*

  let rec mutate  (lv: Mman_asyn.alval) (e: Mman_asyn.aexp) (d: eshtyp)
    : (eshtyp * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
    = 
        let res = ref [] in
  
        let r, vf = evalL lv d in             (* evaluate the left location *)
      
        match r, rf with
          | None, [] -> !res                  (* propagate the error *)

          | Some (ASVar svid), ls ->
                (*
                    1.unfold from the left side and re-evaluate the left
                    
                    2.evaluate the right expression
                        2.1 unfold the right side 
                        2.2 do not unfold the right side
                    
                    3.mutate
                *)
                let el = vf.(0) in             (* vf has only one element *)
                let ufd = unfold el d in       (* unfold the left side *)
                List.iter
                (
                  fun new_es, sls, cls ->
                      
                      let loc_l, vf_l = evalL lv new_es in  (* re-evaluate the left location *)
                      

                      let exp_r, ef_r = evalE e new_es in   (* evaluate the right exp *)
                      match exp_r, ef_r with
                      | Some(ACst it), [] ->
                              (* TODO *)
                               !res 

                      | Some(AUnOp (op, ei)), [] ->
                              (* TODO *)
                              let new_es2 = mutate_value loc_l exp_r new_es in 
                              let res := !res @ [(new_es2, sls, cls))]  in
                                !res

                      | Some(e), ls -> 
                              begin
                                let ed = ls.(0) in
                                let ufr = unfold ed new_es in (* unfolding the shape *)
                                    List.iter
                                      (
                                        fun new_es1, sls1, cls1 ->
                                          (* re-evaluate the right expression *)
                                          let ev2, ef2 = evalE e new_es1 in 
                                          match ev2, ef2 with
                                          | _, ls -> ()    (* error case *)
                                          
                                          | Some(ACst it),[] -> 

                                              let new_es2 = mutate_value loc_l exp_r new_es1 in 
                                              let res := !res @ [(new_es2, sls1, cls1))]  in
                                              !res

                                          | Some(AUnOp (op, ei)),[] -> 

                                              let new_es2 = mutate_value loc_l exp_r new_es1 in 
                                              let res := !res @ [(new_es2, sls1, cls1))]  in
                                              !res
                                          | _ ->  (* TODO *)
                                      )
                                     ufr;
                                !res 
                              end

                      | Some(ABinOp(bop, e1, e2)),[] -> !res (*TODO:mutate *)

                      | Some(ABinOp(bop,e1,e2)),ls -> !res   (*TODO:1.unfold,2:mutate*)

                )
                ufd


          | Some (ASVar svid),[] ->
               (* TODO:
                      1.evaluate the right exp
                      2.mutate 
                *)
               !res 

          | _ ->  !res 
             (* internal error: nested features are not dealt *)

  (* mutate the value of location *)
  and mutate_value (lv:Mman_asyn.alval) (e:Mman_asyn.aexp) (d:eshtyp)
    : (eshtyp * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
    = 
     let seid = d.seid in
      match es.shape with
      | Top | Bot -> [] (* Error case *)

      | S(g) ->
          begin
            match lv with
            | AVar _ -> [] (* TODO *)

            | AMem(vi) ->
                (* as a left value, *v is defined when
                   - v is a ptr variable
                   - v is initialized to a location in the heap
                   and is the content (offset 0) of this location
                *)
                let svi = Mman_env.senv_getvar seid (Mman_svar.sv_mk_var vi) in
                let svid = (Mman_svar.Svar.id svi) in
                if not(Mman_svar.isPtrType (Mman_env.senv_getvtyp seid svid))
                then  
                   [] (* interpreted as an error *)
                else
                (
                  (* update the location to which svi points to *) 
                  match exp with 
                    | Some(ACst it),[] ->
                              let res := mutate_value r1 ev new_es in
                              !res

                    | Some(AUnOp (op, ei)),[] ->
                              let res := mutate_value r1 ev new_es in  
                              !res 
                    

                    | ALval (al) -> []
                        (* evaluate a location *)

                        (* find the node in the shape *)

                    | ALval (ASVar nd.id))

                    | None -> [] (* error case *)
                  )
*)

  
let addV = 0
let terV = 0


end
