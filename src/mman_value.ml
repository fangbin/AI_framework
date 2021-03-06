<<<<<<< HEAD
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


=======
>>>>>>> c3fc159eba69639c35e68964f7f37dc048186509
(** {1 Abstract domain for shape and numerical constraints} *)

(** An abstract value of this domain is a cofibered product
 *  from
 *    an extended (with symbolic environment) shape (Mman_eshape)
 *  to
 *    a numerical (Mman_dword).
 * A value is a set of pairs (shape, numerical) such that no homeomorphic
 * pair of shapes exists in the value.
*)

module MDW = Mman_valap.Model
module MEV = Mman_env
module MSH = Mman_emls

(*module MSH = Mman_eshape*)

(* ********************************************************************** *)
(** {2 Types } *)
(* ********************************************************************** *)

(** Functional maps over MSH *)
module ModelMap = FCMap.Make(MSH)

(** Maps extended shapes to data word values *)
type sh2dw = MDW.t ModelMap.t

(* ********************************************************************** *)
(** {2 Utilities on pairs (eshape, dword) } *)
(* ********************************************************************** *)

let pretty_eshdw fmt (esh: MSH.t) (dw: MDW.t)
  : unit
  =
  Format.fprintf fmt "eshape: %a @. dwords:%a @."
    MSH.pretty esh MDW.pretty dw

let compare_eshdw (esh0: MSH.t) (dw0: MDW.t) (esh1: MSH.t) (dw1: MDW.t)
  : bool
  =
  let cmpsh, map0to1 = MSH.compare_intern esh0 esh1 in
  if (cmpsh == 0) && (not (MEV.EnvMap.is_empty map0to1))
  then
    let dw0r = MDW.rename dw0 map0to1 in
    let isin01 = MDW.is_included dw0r dw1 in
    isin01
  else
    false

let hash_eshdw (esh: MSH.t) (dw: MDW.t)
  : int
  = (MSH.hash esh) + (MDW.hash dw)

let join_and_is_included_eshdw
    (esh0: MSH.t) (dw0: MDW.t)
    (esh1: MSH.t) (dw1: MDW.t)
    : MSH.t * MDW.t * bool
    =
    let cmpsh, map0to1 = MSH.compare_intern esh0 esh1 in
    if (cmpsh == 0) && (not (MEV.EnvMap.is_empty map0to1))
    then
      let dw0r = MDW.rename dw0 map0to1 in
      let dw01, isin01 = MDW.join_and_is_included dw0r dw1 in
      esh1, dw01, isin01
    else
      esh1, dw1, false

(** Computes the join and
 * updates isin to false if m0 is not included in m1 *)
let join_map_isin (isin: bool ref) (m0: sh2dw) (m1: sh2dw)
 :sh2dw
 =
  if (ModelMap.is_empty m0)
  then
  		(isin := true; m1)
  else if (ModelMap.is_empty m1)
  then
  		(isin := false; m0)
  else let mres = ref (ModelMap.filter (fun _k _e -> true) m1) in
    begin
      ModelMap.iter (* forall *)
        (fun exsh0 dw0 ->
           let found = ref false in
           begin
             ModelMap.iter (* exists *)
               (fun exsh1 dw1 ->
                  if not(!found) then
                    let exshr, dwr, isin01 =
                      join_and_is_included_eshdw exsh0 dw0 exsh1 dw1
                    in
                    begin
                      mres := ModelMap.add exshr dwr !mres;
                      found := (!found) || isin01
                    end
                  else
                    ()
               )
               m1
             ;
             isin := (!isin) && (!found)
           end
        )
        m0
      ;
      !mres
    end


let widen_eshdw hint
    (esh0: MSH.t) (dw0: MDW.t)
    (esh1: MSH.t) (dw1: MDW.t)
    : MSH.t * MDW.t
    =
    let cmpsh, map0to1 = MSH.compare_intern esh0 esh1 in
    if (cmpsh == 0) && (not (MEV.EnvMap.is_empty map0to1))
    then
      let dw0r = MDW.rename dw0 map0to1 in
      let dw01 = MDW.widen hint dw0r dw1 in
      esh1, dw01
    else
      esh1, dw1

let unfold_one (esh: MSH.t) (dw: MDW.t) (lv1_lvN: Mman_asyn.alval list)
  : sh2dw
  =
  let _ = Mman_options.Self.feedback "unfold_one@." in
  let m = ref (ModelMap.singleton esh dw) in
  begin
    List.iter
      (
        fun lvi ->
        let nm = ref ModelMap.empty in
        begin
          ModelMap.iter
            (
              fun eshi dwi ->
                let t1_tn = MSH.unfold lvi eshi in
                List.iter
                (
                  fun (neshi,vl,cl) ->
                    let ndwi = MDW.addV dwi vl cl in
                    let isin = ref false in
                    nm := join_map_isin isin !nm (ModelMap.singleton neshi ndwi)
                )
                t1_tn
            )
          !m
          ;
          m := !nm
        end
      )
      lv1_lvN
    ;
    !m
  end


(* ********************************************************************** *)
(** {2 Abstract domain } *)
(* ********************************************************************** *)

module Model = struct

  type value = {
    eid: MEV.t;        (* program environment *)
    set: sh2dw option; (* None is bottom, empty map is top *)
  }

  (** Basic functions used in Datatype.S *)
  let pretty_code_intern (p_caller:Type.precedence) fmt (d: value) =
    let pp fmt = begin
      Format.fprintf fmt "{peid:%d}@." d.eid;
      match d.set with
      | None -> Format.fprintf fmt "Bot"
      | Some(m) ->
          if ModelMap.is_empty m then
            Format.fprintf fmt "Top"
          else
            ModelMap.iter (fun k v -> pretty_eshdw fmt k v) m
    end
    in
    Type.par p_caller Type.Call fmt pp

  let pretty_sh2dw fmt (m:sh2dw) =
       ModelMap.iter (
            fun k v -> pretty_eshdw fmt k v
          )
       m

  let pretty_diff fmt (d0: value) (d1: value) =
    begin
      Format.fprintf fmt "<>(";
      pretty_code_intern Type.Basic fmt d0;
      Format.fprintf fmt ",";
      pretty_code_intern Type.Basic fmt d1;
      Format.fprintf fmt ")"
    end

  let is_bottom (d: value) =
    d.set == None

  let is_top (d: value) =
    Extlib.may_map (fun m -> ModelMap.is_empty m) ~dft:false d.set

  let compare_cardinal (d0: value) (d1: value) =
    Extlib.opt_compare
      (fun m0 m1 ->
        (ModelMap.cardinal m0) - (ModelMap.cardinal m1))
      d0.set d1.set

  let is_leq_map (m0: sh2dw) (m1: sh2dw) =
    let cmpcard = (ModelMap.cardinal m0) - (ModelMap.cardinal m1) in
    if cmpcard != 0
    then (cmpcard < 0) (* bigger cardinal, bigger object *)
    else (* same cardinal, check mapping *)
      let isleq = ref true in
      begin
        ModelMap.iter (* forall elements of m0 *)
          (fun esh0 dw0 ->
             if not(!isleq) then
               ()
             else
               let found = ref false in
               begin
                 ModelMap.iter (* exists an element of m1 *)
                   (fun esh1 dw1 ->
                      if not(!found) then
                        let isin01 = compare_eshdw esh0 dw0 esh1 dw1 in
                        begin
                          found := (!found) || isin01
                        end
                      else
                        ()
                   )
                   m1;
                 isleq := (!isleq) && (!found)
               end
          )
          m0
        ;
        !isleq
      end

  let is_leq (d0: value) (d1: value) =
    let _ = assert (d1.eid == d0.eid) in
    if (is_top d1) || (is_bottom d0)
    then true
    else
      Extlib.opt_equal is_leq_map d0.set d1.set

  let is_eq_cardinal (d0: value) (d1: value) =
    (compare_cardinal d0 d1) == 0

  let is_eq (d0: value) (d1: value) =
    if (d0.eid != d1.eid) || (not (is_eq_cardinal d0 d1))
    then false
    else (* cardinals are equal *)
      (is_leq d0 d1) && (is_leq d1 d0)

  let compare_intern (d0: value) (d1: value) =
    if (d0.eid < d1.eid)
    then -1
    else if (d1.eid < d0.eid)
    then 1
    else (* same program environment *)
      let cmpsz = (compare_cardinal d0 d1) in
      if cmpsz != 0
      then cmpsz (* it is a disjunction, bigger cardinal, bigger object *)
      else (* same cardinal *)
        let is_eq01 = is_eq d0 d1 in
        if is_eq01 then 0
        else
          let is_leq01 = is_leq d0 d1 in
          if is_leq01 then -1
          else 1

  let hash_intern (d: value) =
    let hmap = Extlib.opt_fold (fun m ->
        ModelMap.fold
          (fun esh dw acc -> (hash_eshdw esh dw) + acc)
          m)
        d.set 0
    in
    d.eid + hmap

  let copy_intern (d: value) =
    { eid = d.eid;
      set = d.set (* functional copy *)
    }

  let dummy_top =
    { eid = (-1);
      set = Some(ModelMap.empty)
    }

  let dummy_bot =
    { eid = (-1);
      set = None
    }

  (** Module Datatype.S *)
  include Datatype.Make(struct
      type t = value
      let name = "Mman_value.Model.t"
      let rehash = Datatype.identity
      let structural_descr = Structural_descr.t_unknown
      let reprs = [ dummy_top; dummy_bot ]
      let equal = is_eq
      let compare = compare_intern
      let hash = hash_intern
      let copy = copy_intern
      let internal_pretty_code = pretty_code_intern
      let pretty = Datatype.from_pretty_code
      let varname _ = "m"
      let mem_project = Datatype.never_any_project
    end)

  (** Useful operations required by the lattice operations *)
  let bottom_of eid =
    { eid = eid; set = None }

  let top_of eid =
    { eid = eid; set = Some(ModelMap.empty) }

  (** Lattice operations *)
  (* from Bounded_Join_Semi_Lattice *)

  let join (d0: value) (d1: value) =
    if (is_bottom d0) then
      copy_intern d1
    else if (is_bottom d1) then
      copy_intern d0
    else if (is_top d0) || (is_top d1) then
      (top_of (max d0.eid d1.eid))
    else if (d0.eid != d1.eid) then
      dummy_top
    else
      let isin = ref true in
      let m01 = Extlib.merge_opt join_map_isin isin d0.set d1.set
      in
      { eid = d0.eid;
        set = m01 }

  let is_included (d0: value) (d1: value) =
    is_leq d0 d1

  let join_and_is_included (d0: t) (d1: t) =
    (** should be more efficient that is_included && join *)
    if (is_bottom d0) then copy_intern d1, true
    else if (is_bottom d1) then copy_intern d0, false
    else if (is_top d0) && (is_top d1) then
      (top_of (max d0.eid d1.eid)), true
    else if (is_top d0) then
      d0, false
    else if (is_top d1) then
      d1, true
    else if (d0.eid != d1.eid) then
      dummy_top, false
    else
      let isin = ref true in
      let m01 = Extlib.merge_opt join_map_isin isin d0.set d1.set
      in
      { eid = d0.eid;
        set = m01 },
      !isin

  let bottom = dummy_bot

  (* from With_Top *)
  let top = dummy_top

  (* from With_Errors *)
  exception Error_Top
  exception Error_Bottom

  (* from With_Widening *)
  type widen_hint = int

  let widen hint (d0: t) (d1: t)
    : value
    =
    (* Assert: d1 includes d0, [hint] not used *)
    let djoin, isin = join_and_is_included d0 d1 in
    let d01 = if isin then d1 else djoin in
    let widen_map hint m0 m01 =
      let mres = ref (ModelMap.empty) in
      begin
        ModelMap.iter
          (fun exsh1 dw1 -> (* forall *)
             ModelMap.iter
               (fun exsh0 dw0 -> (* forall *)
                  let exshr, dwr = widen_eshdw hint exsh0 dw0 exsh1 dw1 in
                  (* if widening not possible, return exsh1, dw1 *)
                  mres := ModelMap.add exshr dwr !mres
               )
               m0
          )
          m01
        ;
        !mres
      end
    in
    let m0w1 = Extlib.merge_opt widen_map hint d0.set d01.set
    in
    { eid = d0.eid;
      set = m0w1
    }

  (* from With_Intersects *)
  let intersects (_d0: t) (d1: t) = (* TODO *)
    d1

  (* from environment *)
  let size (d: value) =
    MEV.penv_size d.eid

  (** Access the environment *)
  let env (d: value) =
    d.eid

  (** Return true if [vi] is not constrained in [d] *)
  let is_var_unconstrained (d: value) (vi: Cil_types.varinfo) =
    (* get the svar of vi from environment *)
    let svinfo = MEV.penv_getvar d.eid (Mman_svar.sv_mk_var vi) in
    let svid = Mman_svar.Svar.id svinfo in
    let isun = ref true in
    let seid = d.eid in
    begin
      Extlib.may
      (
        fun m ->
            ModelMap.iter
            (
              fun exsh dw ->
                (* query on the stack, stored in the shape *)
                let refsvid = MSH.stack_of exsh svid in
                if refsvid >= 0 && refsvid <= 3
                then isun := false (* Null, Hole, Hli are always constrained *)
                else if refsvid < 0
                then ()
                else
                  let refsvi =
                    MEV.senv_getvinfo seid refsvid
                  in
                  isun := !isun && (MDW.is_var_unconstrained dw refsvi)
            )
            m
      )
      d.set
      ;
      !isun
    end

  (** Return the interval to which [vi] belongs in [d] *)
  let bound_variable (d: t) (vi: Cil_types.varinfo)
    : Ival.t
    =
    (* bounds are given by the numerical part *)
    let svinfo = MEV.penv_getvar d.eid (Mman_svar.sv_mk_var vi) in
    let svid = Mman_svar.Svar.id svinfo in
    let seid = d.eid in

    if svid == 0 (* Null *)
    then
      Ival.of_int 0
    else
      let itv = ref Ival.bottom in
      begin
        Extlib.may (fun m ->
            ModelMap.iter (fun exsh dw ->
                let refsvid = MSH.stack_of exsh svid in
                if refsvid < 0 (* unconstrained *)
                then itv := Ival.top
                else
                  let refsvi =
                    MEV.senv_getvinfo seid refsvid
                  in
                  itv := Ival.join
                      (!itv)
                      (MDW.bound_variable dw refsvi)
            )
            m
          )
          d.set
        ;
        !itv
      end

  (** Return  true if [v1] is an alias of [v2] in [d] *)
  let alias_variable (d: t)
    (v1: Cil_types.varinfo) (v2: Cil_types.varinfo)
    : bool
    =
    let isalias = ref true in
    begin
      Extlib.may (fun m ->
          ModelMap.iter (fun exsh _dw ->
              let r1,_ = MSH.evalE (Mman_asyn.ALval(Mman_asyn.AVar(v1))) exsh in
              let r2,_ = MSH.evalE (Mman_asyn.ALval(Mman_asyn.AVar(v2))) exsh in
              match r1, r2 with
              | Some(Mman_asyn.ALval(Mman_asyn.ASVar svid1)),
                Some(Mman_asyn.ALval(Mman_asyn.ASVar svid2)) ->
                  if svid1 = svid2 then ()
                  else isalias := false
              | _ -> isalias := false
            )
            m
        )
        d.set
      ;
      !isalias
    end

  (** Return true is [vi] is alias to null in [d] *)
  let null_variable (d: t) (vi: Cil_types.varinfo) =
    (* get svar from environment *)
    let svinfo = MEV.penv_getvar d.eid (Mman_svar.sv_mk_var vi) in
    let svid = Mman_svar.Svar.id svinfo in
    let isnull = ref true in
    begin
      Extlib.may (fun m ->
          ModelMap.iter (fun exsh _dw ->
              let refsvid = MSH.stack_of exsh svid in
              if refsvid != 0 then
                isnull := false
              else ()
            )
            m
        )
        d.set
      ;
      !isnull
    end

  (** Return true if [vi] is undefined in [d] *)
  let undef_variable (d: t) (vi: Cil_types.varinfo) =
    is_var_unconstrained d vi

  (* Abstract transformers *)
  (** Internal representation normalisation *)
  let rec normalize (d: t) : t =
    match d.set with
    | None -> d
    | Some(m) ->
        if ModelMap.is_empty m then d
        else
          let nm = normalize_set (env d) m in
          { eid = (env d); set = Some(nm); }

  and normalize_set (eid:MEV.t) (m: sh2dw)
    : sh2dw
    =
    (* Apply normalisation of each value until the set does not change *)
    let cm = ref m in
    let nm = ref (ModelMap.empty) in
    let isin = ref true in
    let changed = ref true in
    begin
      while !changed do
        changed := false;
        ModelMap.iter
          (fun esh dw ->
             let rm, isnew = normalize_one eid esh dw in
             begin
               isin := false;
               nm := join_map_isin isin !nm rm;
               changed := !changed || (isnew && not(!isin))
             end
          )
          !cm;
        cm := !nm
      done
      ;
      (* final value*)
      !cm
    end

   and normalize_one (eid:MEV.t) (esh:MSH.t) (dw:MDW.t)
   : sh2dw * bool
   =
   let nsh = ref (MSH.copy esh) in
   let ndw = ref (MDW.copy dw) in
   let changed = ref false in
   let pvl = MSH.normalize esh in (* list of predicate and existential vars *)
   begin
     List.iter
      (
        fun (p, vl) ->
          let c1_cn = pred_constraints p vl in (* required to fold p *)
          let mdw = MDW.meet_exp eid !ndw c1_cn in
          if (MDW.is_bottom mdw) then
            (* this folding not allowed by data constraints *)
            ()
          else if (MDW.is_eq mdw !ndw) then
            (* folding fully allowed by the data constraints *)
            begin
              nsh := MSH.fold p vl !nsh;
              ndw := MDW.fold p vl !ndw; (* TODO: see interface *)
              changed := true
            end
          else
            (* folding needs to split in two pairs: NOT YET supported *)
            ()
     )
     pvl;
     ModelMap.singleton !nsh !ndw, !changed
   end

  (* TODO *)
  and pred_constraints (_p:Mman_asyn.aconstr) (_vl:Mman_svar.svarinfo)
    : Mman_asyn.aconstr list
    = []

  (** Apply a guard c1_cn *)
  let rec meet_exp (d: t) (c1_cn: Mman_asyn.aconstr list)
    : t
    =
    let _ = Mman_options.Self.debug ~level:1 "MV:meet_exp....@."
    		(*(pretty_code_intern Type.Basic) d *)
    in
    let _ =
      List.iter
        (fun ac ->
              Mman_options.Self.debug ~level:1 "MV:constraints:%a @."
                   Mman_asyn.pp_aconstr ac;
        )
        c1_cn
    in

    let nmap = match d.set with
      | None -> None
      | Some(m) ->  meet_exp_set (env d) c1_cn m
      in
    let _ = Mman_options.Self.debug ~level:1 "MV:finish meet_exp.@."
      in
    let nvalue =
      { eid = (env d);
        set = nmap
      }
    in
    (*let _ = Mman_options.Self.debug ~level:1 "MV:new eshape value: %a \n ==================== @."
                   (pretty_code_intern Type.Basic) nvalue
          in*)
    nvalue

  and meet_exp_set (eid: MEV.t) (c1_cn: Mman_asyn.aconstr list) (m: sh2dw)
    : sh2dw option
    =
    let nmap = ref (Some(ModelMap.empty)) in (* list of pairs (exsh, dw) *)
    let isin = ref false in
    begin
      ModelMap.iter
        (fun exsh dw ->
           (*let r = meet_exp_one eid exsh dw c1_cn in*)
           let seid = exsh.MSH.seid in
           let r = meet_exp_one seid exsh dw c1_cn in
           match r, !nmap with
           | None, _ | _, None ->
               (* propagate error *)
               nmap := None
           | Some(m1), Some(m0) ->
               nmap := Some(join_map_isin isin m0 m1)
        )
        (
         if ModelMap.is_empty m
         then ModelMap.singleton (MSH.top_of eid) (MDW.top_of eid)
         else m
        )
      ;
      !nmap
    end

  and meet_exp_one (eid: MEV.t) (esh: MSH.t) (dw: MDW.t)
    (c1_cn: Mman_asyn.aconstr list)
    : (sh2dw option)
    =
    let _ = Mman_options.Self.debug ~level:1 "MV:meet_exp_one, peid:%d, esh.seid:%d....@."
          eid esh.seid
        in
    let _se = MEV.senv_get esh.seid in
    let r, vf1_vfn = MSH.guard esh c1_cn in
    let _ = Mman_options.Self.debug ~level:1 "MV:MSH.guard done...@."
        in

    match r with
    | None -> (* error while evaluating the constraint *)
        let _ = Mman_options.Self.debug ~level:1 "MV:after guard is NONE.@."
        in
        None (* propagate the error *)

    | Some(nesh, nc1_ncn) ->
        if MSH.is_bottom nesh then
          (* the evaluation - complete or not - return bottom *)
        let _ = Mman_options.Self.debug ~level:1 "MV:after guard(MSH) is bottom.@."
        	in
          None
        else
          (
            if vf1_vfn = []
            then (* no need to unfold *)
             (
              if nc1_ncn = []
              then (* no constraints on data *)
                let _ = Mman_options.Self.debug ~level:1 "MV:constraints returned from MSH are empty.@."
        		in
                Some(ModelMap.singleton nesh dw)
              else
                (*let ndw = MDW.guard dw nc1_ncn in*)
                (
                  let _ =
				      List.iter
				        (fun ac ->
				              Mman_options.Self.debug ~level:1 "MV:constraints returned from MSH:%a @."
				                   Mman_asyn.pp_aconstr ac;
				        )
				       nc1_ncn
				    in
				    (*let ndw = MDW.meet_exp esh.seid dw nc1_ncn in*)
            let ndw = MDW.meet_exp dw.eid dw nc1_ncn in   
                  if MDW.is_bottom ndw
                  then
                    let _ = Mman_options.Self.debug ~level:1 "MV:new dw is Bot...@."
                     in
                     Some(ModelMap.singleton nesh MDW.dummy_bot)
                  else
                     Some(ModelMap.singleton nesh ndw)
                )
             )
           else (* shall unfold for each left value in vf1_vfn *)
            let _ = Mman_options.Self.debug ~level:1 "MV:shall unfold...@."
                   in
             let nm = unfold_one esh dw vf1_vfn in
             (* apply again the guard on each value of the set nm, shall succeed *)
             meet_exp_set eid c1_cn nm
          )

  (** Apply the list of assignments *)
  (** The list should be applied in parallel on the abstract value *)
  (** create shape formulas after assignement eg, sbrk(sz) *)
  let rec do_assign (d: t)
    (llv: Mman_asyn.alval list) (lexp: Mman_asyn.aexp list)
    (llv_dw: Mman_asyn.alval list) (lexp_dw: Mman_asyn.aexp list)
    : t
    =
    (*TODO bug Failure("hd") => llv is empty *)
    if (List.length llv == 0 ) then d
    else
    let _ =
        List.iter2
        ( fun lv le ->
             Mman_options.Self.debug ~level:2 "MV:do_assign: %a:=%a, peid:%d @."
                   Mman_asyn.pp_alval (lv) Mman_asyn.pp_aexp (le)   d.eid;
        )
        llv
        lexp
    in
    let nmap =
      match d.set with
      | None -> None
      | Some(m) ->
          begin
          let nnmap = do_assign_set (env d) llv lexp llv_dw lexp_dw m in
          match nnmap with
          | None ->   None
          | Some(m') ->
              let norm_nmap = normalize_set (env d) m' in
              Some(norm_nmap)
          end
    in
    let neid = ref (-1) in
    let _ =
	    match nmap with
	    | Some (nmp)  ->
	                ModelMap.iter
	               (fun exsh _dw ->
	                      (*neid := exsh.seid;*)
	                      let se = Mman_env.senv_get exsh.seid in
	                       (*Mman_options.Self.debug ~level:1 "%d, %d.@."
	                      	se.peid
	                      	exsh.seid;*)
	                      neid := se.peid
	               )
	               nmp
	    | _ -> ()
    in
    let nvalue =
    { (*eid = (env d);*) (* may updated by do_assign*)
      eid = !neid;
      set = nmap
    }
    in
    let _ = Mman_options.Self.debug ~level:1 "MV:finish do_assign, new eshape value:\n %a @."
             (pretty_code_intern Type.Basic) nvalue
    in
    nvalue

  and do_assign_set (eid: MEV.t)
    (llv: Mman_asyn.alval list) (lexp: Mman_asyn.aexp list)
    (llv_dw: Mman_asyn.alval list) (lexp_dw: Mman_asyn.aexp list)
    (m: sh2dw)
    : sh2dw option
    =
    let nmap = ref (Some(ModelMap.empty)) in (* list of pairs (exsh, dw) *)
    let isin = ref false in
    begin
      ModelMap.iter
        (fun exsh dw ->
           let r = do_assign_one eid exsh dw llv lexp llv_dw lexp_dw in
           match r, !nmap with
           | None, _ ->
                nmap := None
           | _, None ->
               (* propagate error *)
                nmap := None
           | Some(m1), Some(m0) ->
                nmap := Some(join_map_isin isin m0 m1)    (* important point *)
        )
        (if ModelMap.is_empty m (* i.e., top *)
         then
              let _ = Mman_options.Self.debug ~level:1 "MV:singleton\n @."
               in
              ModelMap.singleton (MSH.top_of eid) (MDW.top_of eid)
         else m)
      ;
      !nmap
    end

  and do_assign_one (eid: MEV.t) (esh: MSH.t) (dw: MDW.t)
    (llv: Mman_asyn.alval list) (lexp: Mman_asyn.aexp list)
    (llv_dw: Mman_asyn.alval list) (lexp_dw: Mman_asyn.aexp list)
    : (sh2dw option)
    =
    (* assertion eid = esh.seid *)
    (* build from (esh, dw) the set of pairs where all assignments may be done *)
    let nllv = ref [] in
    let nlexp = ref [] in
    let vf = ref [] in
    let _vfl = ref [] in
    let r = ref false  in
    let l = ref false in
    let isin = ref false in
    let on_dw = ref false in
    let on_sha = ref false in
    let _ = (
            List.iter2 (
              fun lv e -> 
                  Mman_options.Self.debug ~level:1 "MV: %a := %a @."  
                  Mman_asyn.pp_alval (lv)
                  Mman_asyn.pp_aexp (e)
            )
            (llv) (lexp)
            )
        in 
    let _ = (
            List.iter2 (
              fun lv e -> 
                  Mman_options.Self.debug ~level:1 "MV: %a := %a (DW)@." 
                  Mman_asyn.pp_alval (lv)
                  Mman_asyn.pp_aexp (e)
            )
            llv_dw
            lexp_dw
            )
        in 
    begin
      (* evaluate left and right *)
      List.iter (fun lv ->
                    (
                      (* check  eval in shape or only do assign on data *)
                      (*let isin = senv_var_isin eid *)
                      let rlv, rvf = MSH.evalL lv esh in
                      match rlv with
                      | None ->
                      			let _ = Mman_options.Self.debug ~level:1 "MV:after evaL, None @."  in
                      			r := true;

                      | Some(lv') ->
                            begin 
                               let _ = Mman_options.Self.debug ~level:1 "MV:after evaL:%a@."
                                       Mman_asyn.pp_alval lv'
                               in
                               nllv := lv' :: (!nllv);
                               if (rvf != []) then
                                let _ = Mman_options.Self.debug ~level:1 "MV:evaL, need unfold @."  in
                               vf := rvf @ (!vf)
                            end
                    )
                 )
                llv
      ;
      List.iter (fun e ->
                    (
                      let re, rvf = MSH.evalE e esh in
                      match re with
                      | None ->
                      		let _ = Mman_options.Self.debug ~level:1 "MV:after evalE if None@." in
                      		l := true;

                      | Some(e') ->
                           begin
                             let _ = Mman_options.Self.debug ~level:1 "MV:after evalE:%a@."
                                       Mman_asyn.pp_aexp e'
                               in
                             nlexp := (e') :: (!nlexp);
                             if (rvf != []) then
                              (	let _ = (Mman_options.Self.debug ~level:2 "MV:evaE, need unfold, rvf:%a @."
                              		    Mman_asyn.pp_alval (List.hd rvf))
                          		in
                             	vf := rvf @ (!vf))
                           end
                    )
                )
                lexp
      ;
      let nm = ref (ModelMap.empty) in
     
      (* special case for sbrk *)
      if (((List.length llv) != (List.length llv_dw)))
  	  then
  	  	(
  	  	begin
          let _ = Mman_options.Self.debug ~level:1 "MV:do_assign (DW)@."in 
  	  		let ndw = MDW.do_assign dw llv_dw lexp_dw  in
  	  		  	on_dw := true;
			    List.iter2
            (
              fun lv e ->
              if (not !r) (* left is not None *)
              then 
               (
                begin
                  let _ =
	                   Mman_options.Self.debug ~level:1 "MV:do_assign: %a:=%a (SHAPE)@."
	                   Mman_asyn.pp_alval (lv)
	                   Mman_asyn.pp_aexp (e);
              	  in
                  let _ = Mman_options.Self.debug ~level:2 "MV:eshape mutate@."  in
                  let t1_tn = MSH.mutate lv e esh in
                  let _ = Mman_options.Self.debug ~level:2 "MV:eshape mutate done, old esh.seid:%d @."
                        esh.MSH.seid
                  in
                  if t1_tn == []
                  then
                        r := false
                  else
                  (
                    List.iter
                      (
                        fun (nsh, _vl, _cl) ->(* TODO: put constraints into DW *)
                          (* the seid of shape may be updated *)
                          if (nsh.MSH.seid != esh.MSH.seid)
                          then
                             let new_dw = MDW.change_env ndw ndw.eid nsh.MSH.seid in
                             nm := join_map_isin isin !nm (ModelMap.singleton nsh new_dw);
                          else
                             nm := join_map_isin isin !nm (ModelMap.singleton nsh ndw);
                      )
                      t1_tn
                  )
            	end
            	) 
            )
            (List.rev !nllv)
            (List.rev !nlexp)
            ;
            on_sha := true;
            ;
            Some(!nm)
        end
  	  	)

      else if ((!r) && (!l)) ||
              ((List.length !nllv) != (List.length !nlexp))  
            then (* the assignment only apllied on data *)
            ( let _ = Mman_options.Self.feedback "MV:do assginment on data, dw.eid:%d..." dw.eid in 
              if MDW.is_bottom dw then (* if data is bottom *)
                begin
                    nm :=  (ModelMap.singleton esh dw);
                    Some (!nm)
                end
              else if (!nllv == []) && (!nlexp == [])
               then
                begin
                    let nm = ref (ModelMap.empty) in
                    let ndw = MDW.do_assign dw llv lexp  in
                    nm := (ModelMap.singleton esh ndw)
                    ;
                    Some (!nm)
                end
              else if (!nllv == []) && (!nlexp != [])
              then
                begin
                    let _ = (
                        List.iter2 (
                          fun lv e -> 
                              Mman_options.Self.debug ~level:1 "MV:do assginment on data %a := %a (DW)@." 
                              Mman_asyn.pp_alval (lv)
                              Mman_asyn.pp_aexp (e)
                        )
                        llv
                        !nlexp
                        )
                    in 
                    let nm = ref (ModelMap.empty) in
                    let ndw = MDW.do_assign dw llv !nlexp  in
                    nm :=  (ModelMap.singleton esh ndw)
                    ;
                    Some (!nm)
                end
              else if (!nllv != []) && (!nlexp == [])
              then
                begin
                    let nm = ref (ModelMap.empty) in
                    let ndw = MDW.do_assign dw !nllv lexp   in
                    nm :=  (ModelMap.singleton esh ndw)
                    ;
                    Some (!nm)
                end
              else None
            )     
  	  else  
        begin
          (* do not need to unfold*)
          if (!vf == []) &&
             (((List.length llv) == (List.length llv_dw)))
          then
              begin
                let nm = ref (ModelMap.empty) in
                List.iter2
                (
                  fun lv e ->
                  if (not !r) &&(!on_sha == false)
                  then
                   (
	                  match lv with
	              	 | Mman_asyn.AFeat(_, ASVar(_svid)) ->
	                        begin
	                          	let _ = Mman_options.Self.debug ~level:2 "MV:left is feature, do assign only on data @."  in
	                          	let ndw = MDW.do_assign dw [(lv)] [(e)]  in
	                          	nm := join_map_isin isin !nm (ModelMap.singleton esh ndw);
	                        end
	                 |_ ->
	                   		begin
	                          let _ = Mman_options.Self.debug ~level:2 "MV:eshape mutate@."  in
	                          let t1_tn = MSH.mutate lv e esh in
	                          let _ = Mman_options.Self.debug ~level:2 "MV:eshape mutate done, old esh.seid:%d @."
	                                esh.MSH.seid
	                          in
	                          if t1_tn == []
	                          then
	                                r := false
	                          else
	                          (
	                            List.iter
	                              (
	                                fun (nsh, _vl, _cl) -> (* TODO: put constraints into DW *)
	                                  (* the seid of shape may be updated *)
	                                  if (nsh.MSH.seid != esh.MSH.seid)
	                                  then
	                                     let new_dw = MDW.change_env dw dw.eid nsh.MSH.seid in
	                                     nm := join_map_isin isin !nm (ModelMap.singleton nsh new_dw);
	                                  else
	                                     nm := join_map_isin isin !nm (ModelMap.singleton nsh dw);
	                              )
	                              t1_tn
	                          )
	                        end
                    )
                )
                (List.rev !nllv)
                (List.rev !nlexp)
                ;
                if (!r)
                then
                      let _ = Mman_options.Self.feedback "MV: left is None" in 
                      None
                else
                      Some (!nm)
              end
          else
             let _ = Mman_options.Self.debug ~level:1 "MV:need unfolding....@." in
             let m = unfold_one esh dw (!vf) in
              do_assign_set eid llv lexp llv_dw lexp_dw m
        end
  end



  (* initialize eshape value *)
  let eshape_init (d:t)
   :value
   =
    let _ =  Mman_options.Self.debug ~level:1 "MV:initialize shape...@."
    in
    begin
      let peid = d.eid in                 (* program enviornement*)
      let penv = MEV.penv_get peid in
      let pvars = penv.pvars in           (* program variables list *)

      let st  = ref MEV.EnvMap.empty in   (* mapping from pvar to symbolic location *)
      let atmp = ref MEV.EnvMap.empty in  (* atoms of struct variables *)
      let mls = ref [] in                 (* the list of symbolic address variables *)
      let _nsvars = ref [] in              (* new symbolic vars *)

      MEV.VidMap.iter
          ( fun _i svi  ->
              (*let _ = Mman_options.Self.debug ~level:2 "MV:penv: %a @."
                 Mman_svar.Svar.pretty svi in *)
              (*let _ =  Mman_options.Self.debug ~level:2 "MV: sv: %a ......... @."
                              Mman_svar.Svar.pretty svi
                            in *)
               match svi.Mman_svar.typ, svi.Mman_svar.kind with
               | SVChunk, PVar(vif)  ->
                    (* for program variables having struct type,
                     create corresponding chunks in shape*)
                    begin
                      if Mman_dabs.is_chunk_struct !vif.Cil_types.vtype then
                            (
                              (* for chunks (type: HDR), they points to themselves *)
                              st := MEV.EnvMap.add svi.id svi.id !st;
                              mls := !mls @[svi.id];
                              (* get the features list of chunk *)
                              let fkls = MEV.penv_get_feats svi.id peid in
                              (* create a shape element (chd) for chunk *)
                              let new_chd = Mman_emls.new_Chd svi.id fkls in
                              atmp := MEV.EnvMap.add svi.id new_chd !atmp;
                            )
                    end
              |_ ->   ()
              (*| SVPtr(SVChunk), PVar(vif) ->
                    (* create a location that progran variable points to *)
                    begin
                      if (Mman_dabs.is_chunk_ptr !vif.Cil_types.vtype ) &&
                          svi.id != Mman_svar.svid_hole
                      then
                            ( (*
                              let _ = Mman_options.Self.debug ~level:2 "MV:SVPtr %d @."
                                     svi.id
                                in
                              let vi = Mman_svar.svid_null in
                              st := MEV.EnvMap.add svi.id vi !st;
                              let new_chd = Mman_emls.new_Chd vi [] in
                              atmp := MEV.EnvMap.add vi new_chd !atmp;
                              *)
                            )
                    end*)
          )
      pvars
      ;

      (* initialize the symbolic environment *)
      let seid =  Mman_env.senvs_init peid in

      (* new shape value *)
      let meminfo = Mman_emls.new_mem !st !mls !atmp in
      let nshapev = Mman_emls.new_msh seid meminfo in

      (*let _ = (Mman_options.Self.debug ~level:1 "MV:new senv: %a @."
                 MEV.senv_print (MEV.senv_get seid))
      in
      let _ = Mman_options.Self.debug ~level:1 "MV:old value  %a@."
                   (pretty_code_intern Type.Basic) d
      in*)
      let nvalue =
      {
          eid = peid;  (*......... *)
          (*set = ModelMap.add nshapev MDW.dummy_bot !mres;*)
          (* dw.eid  corresponding to seid *)
          set = Some(ModelMap.singleton nshapev (MDW.top_of seid))
      }
      in
      (*let _ = Mman_options.Self.debug ~level:1 "MV:shape initialized, new eshape value:\n  %a @."
                   (pretty_code_intern Type.Basic) nvalue
          in*)
      nvalue
    end

  (** Apply the list of initial assignments *)
  (** The list should be applied in parallel on the abstract value *)
  let rec do_assign_init (d:t)
    (llv: Mman_asyn.alval list) (lexp: Mman_asyn.aexp list)
    (llv_dw: Mman_asyn.alval list) (lexp_dw: Mman_asyn.aexp list)
    : t
    =
    (*TODO bug Failure("hd") => llv is empty *)
    if (List.length llv == 0 ) then d
    else
    (*let _ =
        List.iter2
        ( fun lv le ->
             Mman_options.Self.debug ~level:1 "MV:do_assign: %a:=%a, on dw, peid:%d @."
                   Mman_asyn.pp_alval (lv) Mman_asyn.pp_aexp (le)   d.eid;
        )
        llv
        lexp
    in*)
    (*let _ = Mman_options.Self.debug ~level:1 "on %a@."
                   (pretty_code_intern Type.Basic) d
    in*)
    let nmap =
      (match d.set with
      | None -> None
      | Some(m) ->
          let nnmap = do_assign_set_init (env d) llv lexp llv_dw lexp_dw m in
          match nnmap with
          | None ->   None
          | Some(m') ->
              let norm_nmap = normalize_set (env d) m' in
              Some(norm_nmap)
      )
    in
    let nvalue =
    {
      eid = env d;
      set = nmap
    }
    in 
    let _ = Mman_options.Self.debug ~level:1 "MV:finish do_assign, new eshape value:\n %a @."
             (pretty_code_intern Type.Basic) nvalue
    in
    nvalue

  and do_assign_set_init (eid: MEV.t)
    (llv: Mman_asyn.alval list) (lexp: Mman_asyn.aexp list)
    (llv_dw: Mman_asyn.alval list) (lexp_dw: Mman_asyn.aexp list)
    (m: sh2dw)
    : sh2dw option
    =
    let nmap = ref (Some(ModelMap.empty)) in
    let isin = ref false in
    begin
      ModelMap.iter
        (fun exsh dw ->
           let r = do_assign_one_init eid exsh dw llv lexp llv_dw lexp_dw in
           match r, !nmap with
           | None, _ ->
                nmap := None
           | _, None ->
               (* propagate error *)
                nmap := None
           | Some(m1), Some(m0) ->
                nmap := Some(join_map_isin isin m0 m1)
        )
        (if ModelMap.is_empty m (* i.e., top *)
         then
              let _ = Mman_options.Self.debug ~level:1 "MV:singleton\n @."
               in
              ModelMap.singleton (MSH.top_of eid) (MDW.top_of eid)
         else m
        )
      ;
      !nmap
    end

  and do_assign_one_init (_eid: MEV.t) (esh: MSH.t) (dw: MDW.t)
    (llv: Mman_asyn.alval list) (_lexp: Mman_asyn.aexp list)
    (llv_dw: Mman_asyn.alval list) (lexp_dw: Mman_asyn.aexp list)
    : (sh2dw option)
    =
    (* assertion eid = esh.seid *)
    let isin = ref false in
    begin
      match esh.mem with
      | Top | Bot ->  None

      | _ ->
          begin
              let nm = ref (ModelMap.empty) in
              let new_dw = MDW.do_assign dw llv_dw lexp_dw  in
              nm := join_map_isin isin !nm (ModelMap.singleton esh new_dw);
              Some (!nm)
          end
    end


(****************************************************************
 ****************************************************************)

  (** Project out the list of variables.
   *  Mainly used in the inter-procedural analysis *)
  let forget_list (d: t) (llv: Mman_asyn.alval list)
   :t
   =
    let _ = (Mman_options.Self.debug ~level:2 "MV:forget vars ... @."
    		 (*pretty d*) )
	  in
    (*if llv == []
    	then d
		else d (* TODO *)
  	*)
  	match d.set with
  	| None -> copy_intern d
  	| Some (m) ->
  		begin
  			if llv == []
  			then copy_intern d
  			else
  				begin
  					let mres = ref ModelMap.empty in
  					ModelMap.iter
  					(
  						fun sh dw ->
  							let ndw = MDW.forget_list dw llv in
  							let nsh = sh in (* TODO *)
  							mres := ModelMap.add nsh ndw !mres
  					)
  					m;
  					{ eid = d.eid;
                   	  set = Some(!mres)
                  	}
  				end
  		end


  (** Change from environment [envi] to [envj] by adding and projecting vars. *)
  let change_env (s: t) (eiold: MEV.t) (einew: MEV.t)
   =
    let _ = Mman_options.Self.debug ~level:2
                 "MV:change_env...@."
       in
    if (eiold != einew) then
      match s.set with
      | None -> copy_intern s

      | Some(m) ->
            begin
                let mres = ref ModelMap.empty in
                ModelMap.iter
                (
                  fun sh dw ->
                    (* add new pair(seid', einew) in senv *)
                    let seid' = MEV.senv_change_pe sh.seid einew in

                    (* replace (seid, peid) with (seid', einew) in shape, project out vars *)
                    let sh' = MSH.change_env seid' sh in

                    (* add the mapping between (seid', einew) and new apei *)
                    let napenv = Mman_valap.env2apron seid' in

                    (* change the dw(seid) into dw(seid') *)

                    let dw' = MDW.change_env dw dw.eid seid' in
                    (*Mman_valap.update_env2apron nseid;*)

                    mres := ModelMap.add sh' dw' !mres
                )
                m
                ;
                { eid = einew;
                  set = Some(!mres)
                }
            end
    else
    copy_intern s

  let change_env_with (_s: t) (_envi: MEV.t) (_envj: MEV.t) = (* TODO *)
    ()

  (** Collect all the constraints in [d0] and [d1] *)
  let unify (s0: t) (_s1: t) = (* TODO *)
    s0

  let unify_with (_s0: t) (_s1: t) = (* TODO *)
    ()

end

(* ********************************************************************** *)
(* {4 Operations using abstract values } *)
(* ********************************************************************** *)

(**
 * Memorize the initial abstract value of globals
*)
let global_state : Model.t ref = ref Model.dummy_top

let init_globals (eid:MEV.t)
    (v1_vn: Mman_asyn.alval list)
    (e1_en: Mman_asyn.aexp list)
    (c1_cn: Mman_asyn.aconstr list)
    : Model.t
    =
    let _ = Mman_options.Self.feedback "MV:init_globals, peid:%d @." eid in
    if (eid = (Model.env !global_state))
    then !global_state
    else

    (* compute the initial value [shape, dw] *)
    let v0 = Model.eshape_init (Model.top_of eid) in
    (* Do assign the initial assignment *)
    let vinit = Model.do_assign_init v0 (v1_vn) (e1_en) (v1_vn) (e1_en) in
    (*let _ = Mman_options.Self.debug ~level:1 "MV:assign_done,vinit.eid:%d \n, new value: \n %a \n ==========================================@."
          vinit.eid
          (Model.pretty_code_intern Type.Basic) vinit
        in *)
    let v = Model.meet_exp vinit c1_cn in
    begin
      global_state := v;
      v
    end
