(**************************************************************************)
(*                                                                        *)
(*  This file is part of CELIA.                                           *)
(*                                                                        *)
(*  Copyright (C) 2015-2016 *)
(*    IRIF  (University of Paris Diderot and CNRS)                        *)
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

(** Abstract domain for memory blocks organized as a list of chunks.
 
    Implements the interface Mman_value.Shape
    Each abstract value includes a reference to the symbolic environment
    defining the set of variables used by the value.
*)

open Mman_dabs
open Mman_svar 
open Mman_asyn
    
module MEV = Mman_env

(**************************************************************************)
(** {1 Abstract memory value} *)
(**************************************************************************)

(** The configuration of the program is represented by:
    - a stack mapping pointer variables to a symbolic address in the heap,
    - a data segment reserved for memory allocation; it is abstracted
      by a list of "chunks" (memory blocks) starting at the 
      symbolic (ghost) address Mman_svar.Hst and ending (but not including)
      the symbolic (ghost) address Mman_svar.Hli

      The list of chunks is specified using the Separation Logic formulas
      phi ::= emp          empty heap (any formula is conjuncted with * emp) 
           | blk(a,b)     a memory block between addresses [a,b)
           | chd(a)[Ha]   a chunk header at address a and features Ha
                            may be abstracted to blk(a,a+sizeof(cty))
           | chk(a)[Ha]   a chunk defined by chd(a)[Ha] * blk(b,c)
                            with b=a+sizeof(cty) /\ c-a=csz(a)
           | cls(a,b)[Wa] a chunk list defined by chk(a)[Ha]*cls(d,b)[Wd]
                            with d=a+csz(a) /\ Wa=[a].Wd /\ cff(a)=cpf(d)

           | fck(a,b)[Ha] a free chunk at address a defined by
                            chk(a)[Ha] * blk(b,c) with b=a+sizeof(cty) /\ c-a=csz(a) /\ cff(a) = 1
           | fls(a,b)[Wa] a free chunk list

    A formula in SL is represented by the list of its atoms.
*)

type atominfo =
  | Emp
  | Blk of svid * svid
  | Chd of svid * (feature_kind * svid) list
  | Chk of svid * (feature_kind * svid) list
  | Cls of svid * svid * svid
 (* | Fck of svid * (feature_kind * svid) list
  | Fls of svid * svid * svid*)
           
type meminfo =
  {
    stack: MEV.envmap; (* svid --> svid *)
    (** A stack maps a pointer program variable to the location in memory
        it points to, if it is initialized. So an empty stack means
        pointer variables are not initialized. 
        A variable mapped to itself means that it is a value (not pointer)
        variable, e.g., a variable of type int, struct, or a location.
     *)

    mls: svid list;
    (** The list of symbolic address variables starting memory blocks.
        Starts at _hst (svid = 3) and shall not include _hli (svid = 2). 
     *)

    atoms: atominfo MEV.EnvMap.t;
    (** Maps a symbolic address variable to the atom abstracting the 
        memory block starting at this address
     *)
  }

type memval = Bot | Top | S of meminfo
  
type valinfo =
  {
    seid: MEV.t;
    (** The symbolic environment (id) used by the abstract value *)

    mem: memval;
    (** The abstract memory *)
  }

(* ***********************
 * Printing functions 
 * ***********************)

let pretty_featlist fmt (sei: MEV.t) fl =
  List.iter
    (fun (fk,ai) ->
       let ainfo = MEV.senv_getvinfo sei ai in
       let fname = Mman_dabs.get_fname fk in
       Format.fprintf fmt "%s:%a,"
         fname
         Mman_svar.Svar.pretty ainfo
    )
    fl
    
let pretty_atominfo fmt (sei: MEV.t) (at: atominfo) =
  match at with
  | Emp ->
      Format.fprintf fmt "emp"
        
  | Blk(ai,bi) ->
      let ainfo = MEV.senv_getvinfo sei ai in
      let binfo = MEV.senv_getvinfo sei bi in
      Format.fprintf fmt "blk(%a,%a)"
        Mman_svar.Svar.pretty ainfo
        Mman_svar.Svar.pretty binfo

  | Chd(ai,fl) ->
      let ainfo = MEV.senv_getvinfo sei ai in
      begin
        Format.fprintf fmt "chd(%a)[" Mman_svar.Svar.pretty ainfo;
        pretty_featlist fmt sei fl;
        Format.fprintf fmt "]"
      end

  | Chk(ai,fl) ->
      let ainfo = MEV.senv_getvinfo sei ai in
      begin
        Format.fprintf fmt "chk(%a)[" Mman_svar.Svar.pretty ainfo;
        pretty_featlist fmt sei fl;
        Format.fprintf fmt "]"
      end

  | Cls(ai,bi,wi) ->
      let ainfo = MEV.senv_getvinfo sei ai in
      let binfo = MEV.senv_getvinfo sei bi in
      let winfo = MEV.senv_getvinfo sei wi in
      Format.fprintf fmt "cls(%a,%a)[%a]"
        Mman_svar.Svar.pretty ainfo
        Mman_svar.Svar.pretty binfo
        Mman_svar.Svar.pretty winfo


let pretty_stack fmt (sei: MEV.t) (s: MEV.envmap) =
  begin
    (MEV.VidMap.iter
       (fun vi ai ->
          let vinfo = MEV.senv_getvinfo sei vi in
          let ainfo = MEV.senv_getvinfo sei ai in
          Format.fprintf fmt "%a |-> %a, "
            Mman_svar.Svar.pretty vinfo
            Mman_svar.Svar.pretty ainfo
       )
       s
    );
    Format.fprintf fmt "@."
  end
  
let pretty_intern_meminfo fmt (sei: MEV.t) (mi: meminfo) =
  begin
    (* print stack *)
    pretty_stack fmt sei mi.stack;
    
    (* print heap list *)
    Format.fprintf fmt "[";
    (List.iter
       (fun ai ->
          let ainfo = MEV.senv_getvinfo sei ai in
          Format.fprintf fmt "%a::"
            Mman_svar.Svar.pretty ainfo
       )
       mi.mls
    );
    Format.fprintf fmt "]@.";

    (* print atoms *)
    (MEV.EnvMap.iter
       (fun _vi at ->
          begin
            pretty_atominfo fmt sei at;
            Format.fprintf fmt " * "
          end
       )
       mi.atoms
    );
    Format.fprintf fmt "emp"
  end
  
let pretty_code_meminfo fmt (sei: MEV.t) (mi: meminfo) =
  begin
    (* print stack *)
    pretty_stack fmt sei mi.stack;
    (* print SL formula *)
    (List.iter
       (fun ai ->
          let at = MEV.EnvMap.find ai mi.atoms in
          begin
            pretty_atominfo fmt sei at;
            Format.fprintf fmt " * "
          end
       )
       mi.mls
    );
    Format.fprintf fmt "emp"
  end
  
let pretty_intern_memval fmt (sei: MEV.t) (d: memval) =
  match d with
  | Bot -> Format.fprintf fmt "bottom"
  | Top -> Format.fprintf fmt "top"
  | S(mi) -> pretty_intern_meminfo fmt sei mi

let pretty_code_memval fmt (sei: MEV.t) (d: memval) =
  match d with
  | Bot -> Format.fprintf fmt "bottom"
  | Top -> Format.fprintf fmt "top"
  | S(mi) -> pretty_code_meminfo fmt sei mi
               
 
(************************************************************************ *)
(** {1 Abstract value lattice} *)
(************************************************************************ *)
    
(* ****************************
 * Basic functions used in Datatype.S 
 * **************************** *)
  
let pretty_code_intern (p_caller:Type.precedence) fmt (d: valinfo) =
  let pp fmt = begin
    Format.fprintf fmt "[seid:%d] [" d.seid;
    pretty_intern_memval fmt d.seid d.mem;
    Format.fprintf fmt "@.],@."
  end
  in
  Type.par p_caller Type.Call fmt pp

let pretty_code fmt (d: valinfo) =
  begin
    pretty_code_memval fmt d.seid d.mem;
    Format.fprintf fmt ",@."
  end
    
let pretty_diff fmt (d0: valinfo) (d1: valinfo) =
  begin
    Format.fprintf fmt "<>(";
    pretty_code_intern Type.Basic fmt d0;
    Format.fprintf fmt ",";
    pretty_code_intern Type.Basic fmt d1;
    Format.fprintf fmt ")"
  end


(**
 * Test of basic values
 *)
let is_bottom (d: valinfo) =
  match d.mem with
  | Bot -> true
  | _ -> false
                
let is_top (d: valinfo) =
  match d.mem with
  | Top -> true
  | _ -> false


(** Loose ordering of two values.
   
   This function is mainly used to order shape graphs using
   their number of edges. Thus, the relation is not an order relation
   wrt equality, i.e., is_leq(d0,d1) && is_leq(d1,d0) =/=> is_eq(d0,d1)
   Use compare to obtain the total ordering relation.
*)
let is_leq (d0: valinfo) (d1: valinfo)
  : bool
  =
  match d0.mem, d1.mem with
  | Bot, _ | _, Top -> true
  | Top, _ | _, Bot -> false
  | S(g0), S(g1)  ->
      (Mman_env.senv_size d0.seid) <= (Mman_env.senv_size d1.seid) &&
      (List.length g0.mls) <= (List.length g1.mls)

(** Ordering of values.
  
  @return 1  if d0 > d1
          -1 if d0 < d1
          0  if graphs are homeomorphic by the computed mapping
             The resulting mapping contains only mappings of svars 
             representing locations in heap to other locations in heap.
*)
let rec compare_intern (d0: valinfo) (d1: valinfo)
  : int * MEV.envmap
  =
  let emptymap = Mman_env.EnvMap.empty in
  match d0.mem, d1.mem with
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

and embed_mem (sei0: MEV.t) (g0: meminfo) (sei1: MEV.t) (g1: meminfo)
  : int * MEV.envmap
  =
  (* same environment size, see homeomorphism *)
  let emptymap = Mman_env.EnvMap.empty in
  let cmplst = (List.length g0.mls) - (List.length g1.mls) in
  if cmplst < 0 then 1, emptymap (* less atoms in g0, so more general *)
  else if cmplst > 0 then -1, emptymap
  else (* same number of atoms, find their homeomorphism *)
    try (
      (* start with mapping of program variables *)
      let vmap = Mman_env.senv_embed sei0 g0.stack sei1 g1.stack in
      if (MEV.EnvMap.is_empty vmap) then
        (* no mapping between program variables *)
        raise Not_found
      else
        (* continue with atoms *)
        let amap =
          List.fold_left2
            (fun m sv0 sv1 ->
               let at0 = MEV.EnvMap.find sv0 g0.atoms in
               let at1 = MEV.EnvMap.find sv1 g1.atoms in
               embed_atom at0 at1 m
            )
            vmap g0.mls g1.mls
        in
        (* if returns without error, then ok *)
        0, amap
    ) with Not_found ->
      (* not homeomophic, the min is computed using the stack *)
      (let cmpstk = (List.length (MEV.EnvMap.bindings g0.stack)) -
                    (List.length (MEV.EnvMap.bindings g1.stack)) in
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
and embed_atom (a0: atominfo) (a1: atominfo)
  (vmap: MEV.envmap)
  : MEV.envmap
  =
  (* if same kind of atom
     then check that a0 vars are mapped to a1 vars or
          or add the new bindings
     else raise Not_found
  *)
  match a0, a1 with
  | Blk(l0,u0), Blk(l1,u1) ->
      let vmapl0 = embed_var vmap l0 l1 in
      let vmapu0 = embed_var vmapl0 u0 u1 in
      vmapu0

  | Chd(l0, lf0), Chd(l1, lf1)
  | Chk(l0, lf0), Chd(l1, lf1) ->
      let vmapl0 = embed_var vmap l0 l1 in
      let vmaplf = embed_flist vmapl0 lf0 lf1 in
      vmaplf
        
  | Cls(l0,u0,w0), Cls(l1,u1,w1) ->
      let vmapl0 = embed_var vmap l0 l1 in
      let vmapu0 = embed_var vmapl0 u0 u1 in
      let vmapw0 = embed_var vmapu0 w0 w1 in
      vmapw0
        
  | _, _ -> raise Not_found

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

(** Compute a hash code from the value. *)
let rec hash_intern (d: valinfo)
  : int
  =
  let hash_g =
    match d.mem with
    | Bot -> 0
    | Top -> 1
    | S(g) -> hash_mem g
  in
  d.seid * 147 + hash_g * 17

and hash_mem (g: meminfo)
  : int
  =
  (MEV.EnvMap.cardinal g.stack) * 17 +
  (List.length g.mls) * 13 


(** Copy a value. *)
let copy_intern (d: valinfo)  =
  { seid = d.seid; mem = d.mem }

(** Basic values *)
let dummy_top =
  { seid = (-1);
    mem = Top }

let dummy_bot =
  { seid = (-1);
    mem = Bot }

let empty_meminfo =
  { stack = MEV.EnvMap.empty;
    mls = [];
    atoms = MEV.EnvMap.empty
  }
  
(** Module Datatype.S *)
include Datatype.Make(struct
    type t = valinfo 
    let name = "Mman_value.ModelKey.t"
    let rehash = Datatype.identity
    let structural_descr = Structural_descr.t_unknown
    let reprs = [ dummy_top; dummy_bot ]
    let equal = Datatype.from_compare
    let compare v0 v1 = fst (compare_intern v0 v1)
    let hash = hash_intern
    let copy = copy_intern
    let internal_pretty_code = pretty_code_intern
    let pretty = pretty_code
    let varname _ = "emls"
    let mem_project = Datatype.never_any_project
  end)

(** Operations used by the abstract value *)
let env (d: t) = d.seid

let bottom_of sei = { seid = sei; mem = Bot }

let top_of sei = { seid = sei; mem = Top }

let some_of sei g = { seid = sei; mem = S(g) }


(**************************************************************************)
(** {1 Abstract transformers} *)
(**************************************************************************)

(**************************************************************************)
(** {2 Add/remove symbolic variables} *)
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

(**************************************************************************)
(** {2 Location evaluation} *)
(**************************************************************************)
                    
(** Evaluate a left-value.
    Returns the location at which the change shall be done
    or the list of locations that need unfolding to obtain this left value
*)
let rec evalL (lv: Mman_asyn.alval) (d: t)
  : (Mman_asyn.alval option) * (Mman_asyn.alval list)
  =
  let seid = d.seid in
  match d.mem with
  | Bot | Top -> None, [] (* interpreted as error *)

  | S(g) ->
      (match lv with
       | AVar(_vi) ->
           (* as a left value, a program variable is always defined *)
           (* returns the corresponding symbolic variable *)
           let alv, _ = Mman_asyn.to_senv_lval seid lv false in
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
             (* get the location to which svi points to *)
             (try
                let lsvi = MEV.EnvMap.find svid g.stack in
                Some(ASVar(lsvi)), []
              with Not_found ->
                None, []
             )

       | ASVar svid ->
           (* may be a data location or a feature location *)
           (* if it is a feature, it shall be available in the graph *)
           let svif = Mman_env.senv_getvinfo seid svid in
           (
            match svif.Mman_svar.kind with
            | Mman_svar.Feature(Some(svid),fk) ->
                (* check that the feature may be assign in the graph *)
                evalL_feat seid svid fk g
            | _ ->
                (* otherwise, nothing to change *)
                Some(lv), []
           )
           
       | AFeat(fk,al) ->
           (* evaluate first the location at al *)
           begin
             let r, vf = evalL al d in
             match r with
             | None -> (* propagate the error *)
                 None, vf
             | Some (ASVar svid) ->
                 if vf != [] then
                   Some(lv), vf (* return the same left value *)
                 else
                   evalL_feat seid svid fk g
             | _ ->
                 let _ =
                   Mman_options.Self.not_yet_implemented "Double dereference"
                 in
                 None, []
           end

       | AFld _ ->
           let _ =
             Mman_options.Self.not_yet_implemented "Non-syntactic abstraction"
           in
           None, [] 
      )

(** Evaluate the left value fk(svid) *)
and evalL_feat (seid: MEV.t)
  (svid: Mman_svar.svid) (fk: Mman_dabs.feature_kind) g
  : (Mman_asyn.alval option) * (Mman_asyn.alval list)
  =
  (* if it is a location in stack, get the location in heap *)
  let psz, _ = (MEV.senv_size seid) in
  if (svid <= Mman_svar.svid_hole) 
  then
    (* not feature for null and hole *)
    None, []
  else if (svid == Mman_svar.svid_hli)
  then
    (* access outside the data segment limit *)
    let _ = Mman_options.Self.failure "Access outside data segment@."
    in
    None, []
  else if (svid == Mman_svar.svid_hst)
  then
    (* it shall be a block in the memory list *)
    let at = try MEV.EnvMap.find svid g.atoms with Not_found -> Emp in
    evalL_atom svid fk at
  else if (svid < psz)
  then
    (* it is a location on stack, check its atom at the location given 
       by the stack *)
    (let slid = try MEV.EnvMap.find svid g.stack with Not_found -> 0 (* null *)
    in
    if (slid == 0)
    then None, [] (* not an allocated location *)
    else
      let at = try MEV.EnvMap.find slid g.atoms with Not_found -> Emp in
      evalL_atom svid fk at
    )
  else (* it is simply a location in heap *)
    let at = try MEV.EnvMap.find svid g.atoms with Not_found -> Emp in
    evalL_atom svid fk at

and evalL_atom 
  (svid: Mman_svar.svid) (fk: Mman_dabs.feature_kind) (at: atominfo)
  : (Mman_asyn.alval option) * (Mman_asyn.alval list)
  =
  match at with
  | Emp | Blk (_,_) -> None, [] (* error *)
  
  | Chd(a, fl) | Chk (a, fl) ->
      (
        if a != svid then
         let _ = Mman_options.Self.failure "Bad mapping of atoms@." in
         None, []
       else
         try
           let _ = List.assoc fk fl in
           Some(AFeat(fk, ASVar(svid))), []
         with Not_found ->
           let _ = Mman_options.Self.failure "Bad feature for atoms@." in
           None, []
      )
  | Cls _ ->
      let lv = AFeat(fk, ASVar(svid)) in
      Some(lv), [lv]



(**************************************************************************)
(** {2 Value evaluation} *)
(**************************************************************************)
                
(** Evaluation of an expression.
    Returns the translated expression using 
    only location symbolic variables if all these locations are
    explicit in the heamp. Otherwise, returns the left values
    which can not be explored in the heap.
    An evaluation error (i.e., access to uninitialized or null)
    is represented by None, []
*)
let rec evalE (exp: Mman_asyn.aexp) (d: t)
  : (Mman_asyn.aexp option) * (Mman_asyn.alval list)
  =
  match d.mem with
  | Bot | Top -> None, [] (* interpreted as an error *)
  | S(g) ->
      begin
        match exp with
        | ACst(it) -> (* finally evaluated in the data part *)
            Some (ACst it), []

        | ALval(al) -> (* evaluate to a value -- may be location *)
            evalE_lval al d

        | AAddrOf (al) -> (* evaluate to a location *)
            evalE_lval al d

        | AUnOp (op, ex) ->
            (let r, vf = evalE ex d in
             if vf != [] then
               Some(exp), vf
             else match r with
               | None -> None, []
               | Some(e1) ->
                   Some (AUnOp (op, e1)), []
            )

        | ABinOp (bop , ex1 , ex2) ->
            let r1, vf1 = evalE ex1 d in
            let r2, vf2 = evalE ex2 d in
            if (vf1 != []) || (vf2 != [])  then
              Some (exp), (vf1) @ (vf2)
            else  (* (vf1 == []) && (vf2 == []) *)
              (match r1, r2 with
               | None, _ | _, None -> None, []
               | Some(e1), Some(e2) ->
                   (* if ptr arithmetics on e1 which is not a block, unfold *)
                   let osvi = Mman_asyn.get_saddr e1 in
                   (match osvi, bop with
                    | Some(svi), AAdd ->
                        if svi == Mman_svar.svid_hli
                        then
                          (* nothing to do *)
                          Some (ABinOp (bop, e1, e2)), []
                        else
                          (* so it is pointer arithmetics, search atom from svi *)
                          (try
                             let at = MEV.EnvMap.find svi g.atoms in
                             (match at with
                              | Blk(_) -> Some (ABinOp (bop, e1, e2)), []
                              | _ -> Some (ABinOp (bop, e1, e2)),
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


(** Evaluate the left value to a symbolic variable giving 
    its value.
*)
and evalE_lval (lv: Mman_asyn.alval) (d: t)
  : (Mman_asyn.aexp option) * (Mman_asyn.alval list)
  =
  let seid = env d in
  match d.mem with
  | Bot | Top -> None, [] (* interpreted as error *)
  | S(g) ->
      begin
        match lv with
        | AVar vi ->
            (* as a value, a program variable is defined when initialized *)
            (* get the corresponding symbolic variable and,
               if pointer type, search in the stack *)
            let svi = Mman_env.senv_getvar seid (Mman_svar.sv_mk_var vi) in
            let svid = (Mman_svar.Svar.id svi) in
            evalE_svid svid seid g
              
        | ASVar svid ->
            (* if it is a program variable, get its value in stack *)
            evalE_svid svid seid g

        | AMem vi ->
            (* find the location of *vi *)
            begin
              let svi = Mman_env.senv_getvar seid (Mman_svar.sv_mk_var vi) in
              let svid = (Mman_svar.Svar.id svi) in
              evalE_svid svid seid g
            end

        | AFeat (fk, al) ->
            begin
              let r, vf = evalE_lval al d in
              if vf = []
              then (match r with
                  | None -> None, vf
                  | Some (ALval(ASVar svid)) ->
                      let e, vf' = evalE_feat seid svid fk g in
                      e, vf @ vf'
                  | Some (_) -> None, [] (* error *)
                )
              else
                Some(ALval lv), vf
            end
        | _ -> None, []
            
      end

and evalE_svid (svid: Mman_svar.svid) (seid: MEV.t) (g: meminfo)
  : (Mman_asyn.aexp option) * (Mman_asyn.alval list)
  =
  let psz, _ = MEV.senv_size seid in
  if svid == Mman_svar.svid_null
  then
    Some(ACst(Integer.zero)), []
  else if (svid <= Mman_svar.svid_hst)
       || ((svid < psz) &&
           not(Mman_svar.isPtrType (Mman_env.senv_getvtyp seid svid)))
       || (svid >= psz)
  then
    (* no need to look in stack *)
    Some(ALval(ASVar svid)), [] 
  else
    (* TODO: and if it is DA_CDAT ? *)
    (* inspect the stack *)
    (try
       let svpto = MEV.EnvMap.find svid g.stack in
       if svpto == Mman_svar.svid_null
       then Some(ACst(Integer.zero)), []
       else Some(ALval(ASVar svpto)), []
     with Not_found -> (* Not initialized *)
       None, []
    )

and evalE_feat (seid: MEV.t)
  (svid: Mman_svar.svid) (fk: Mman_dabs.feature_kind) g
  : (Mman_asyn.aexp option) * (Mman_asyn.alval list)
  =
  (* if it is a location in stack, get the location in heap *)
  let psz, _ = (MEV.senv_size seid) in
  if (svid <= Mman_svar.svid_hole)
  then
    (* not feature for null and hole *)
    None, []
  else if (svid == Mman_svar.svid_hli)
  then
    (* access outside the data segment limit *)
    let _ = Mman_options.Self.failure "Access outside data segment@."
    in
    None, []
  else if (svid == Mman_svar.svid_hst)
  then
    (* it shall be a block in the memory list *)
    let at = try MEV.EnvMap.find svid g.atoms with Not_found -> Emp in
    evalE_atom svid fk at
  else if (svid < psz)
  then
    (* it is a location on stack, check its atom at the location given
       by the stack *)
    (let slid = try MEV.EnvMap.find svid g.stack with Not_found -> Mman_svar.svid_null
     in
     if (slid == Mman_svar.svid_null)
     then None, []
     else
       let at = try MEV.EnvMap.find slid g.atoms with Not_found -> Emp in
       evalE_atom svid fk at
    )
  else (* it is simply a location in heap *)
    let at = try MEV.EnvMap.find svid g.atoms with Not_found -> Emp in
    evalE_atom svid fk at

and evalE_atom
  (svid: Mman_svar.svid) (fk: Mman_dabs.feature_kind) (at: atominfo)
  : (Mman_asyn.aexp option) * (Mman_asyn.alval list)
  =
  match at with
  | Emp | Blk (_,_) -> None, [] (* error *)
  | Chd(a, fl) | Chk (a, fl) ->
      (if a != svid then
         let _ = Mman_options.Self.failure "Bad mapping of atoms@." in
         None, []
       else
         try
           let svf = List.assoc fk fl in
           Some(ALval(ASVar(svf))), []
         with Not_found ->
           let _ = Mman_options.Self.failure "Bad feature for atoms@." in
           None, []
      )
  | Cls _ ->
      let lv = AFeat(fk, ASVar(svid)) in
      Some(ALval(lv)), [lv]


(**************************************************************************)
(** {2 Meet with a guard} *)
(**************************************************************************)
                       
(** Meet the graph with a list of constraints.
 
    If the meet may be done with the constraints on shape,
    then return the new shape and the constraints for the data part;
    otherwise, return the left values to be unfolded.
*)
let rec guard (d: t) (c1_cn: Mman_asyn.aconstr list)
  : (t * Mman_asyn.aconstr list) option * (Mman_asyn.alval list)
  =
  let seid = env d in
  if is_bottom d then
    Some(d, c1_cn), []
  else if is_top d then
    (* any value for variables and memory *)
    of_constraints d c1_cn, []
  else
    (* apply one by one the constraints *)
    let nd = ref d in
    let nlv = ref [] in
    let ac1_acn =
      List.map
        (fun ci ->
           if is_bottom !nd then
             ci
           else
             let odi, lvi = guard_one !nd ci in
             match odi with
             | None ->
                 begin
                   nd := bottom_of seid;
                   ci
                 end
             | Some(ndi, nci) ->
                 begin
                   nd := ndi;
                   nlv := lvi @ (!nlv);
                   nci
                 end
        )
        c1_cn
    in
    if is_bottom !nd then
      None, []
    else
      Some(!nd, ac1_acn), !nlv

(** Meet the extended shape with one constraint.
*)
and guard_one (d: t) (ci: Mman_asyn.aconstr)
  : (t * Mman_asyn.aconstr) option * (Mman_asyn.alval list)
  =
  let seid = env d in
  match d.mem with
  | Bot ->
      Some(d, ci), []
  | Top ->
      Some(d, ci), [] (* TODO *)
  | S(_) ->
      (match ci with
       | Mman_asyn.ATrue -> Some(d, ci), []
       | Mman_asyn.AFalse -> Some((bottom_of seid), ci), []
       | Mman_asyn.ACmp(op, aeL, aeR) ->
           (* evaluate expressions of ci using the shape *)
           let oeLn, lvL = evalE aeL d in
           let oeRn, lvR = evalE aeR d in
           if (lvL != []) || (lvR != []) then
             (* unfolding required to evaluate the constraint *)
             Some(d, ci), lvL @ lvR
           else
             (match oeLn, oeRn with
              | None, _ | _, None -> None, []
              | Some(aeLn), Some(aeRn) ->
                  (* both expressions contains only 
                     constants, locations, operators *)
                  (* the shape part deal only with 
                     comparison between locations *)
                  let svL = Mman_asyn.get_saddr aeLn in
                  let svR = Mman_asyn.get_saddr aeRn in
                  let aci = Mman_asyn.ACmp(op, aeLn, aeRn) in
                  (match svL, svR with
                   | None, _ | _, None ->
                       (* not a constraint on locations *)
                       Some(d, aci), []
                   | Some(sviL), Some(sviR) ->
                       (* a constraint on locations, only comparison accepted *)
                       (match op with
                        | Mman_asyn.AEQ ->
                            guard_eq d sviL sviR aci, []
                        | Mman_asyn.ASUPEQ ->
                            guard_geq d sviL sviR aci, []
                        | Mman_asyn.ASUP ->
                            guard_gt d sviL sviR aci, []
                        | Mman_asyn.ADISEQ ->
                            guard_neq d sviL sviR aci, []
                        | Mman_asyn.AEQMOD _ ->
                            (* not a constraint for shape *)
                            Some(d, aci), []
                       )
                  )
             )
      )

and guard_eq (d: t) (sviL: Mman_svar.svid) (sviR: Mman_svar.svid)
  (oc: Mman_asyn.aconstr)
  : (t * Mman_asyn.aconstr) option
  =
  match d.mem with
  | Bot | Top -> Some(d, Mman_asyn.AFalse)
  | S(g) ->
      if sviL == sviR then
        (* already equal locations *)
        (* nothing to propagate on data *)
        Some(d, oc)
      else
        (* check if locations may alias, i.e.,
           they are successive locations in mls
           and the atom (Blk) between them may be empty *)
        (try
           let iL = Extlib.find_index (fun l -> l == sviL) g.mls in
           let iR = Extlib.find_index (fun l -> l == sviR) g.mls in
           let atL = MEV.EnvMap.find sviL g.atoms in
           let atR = MEV.EnvMap.find sviR g.atoms in
           if ((iR+1) == iL) then
             match atR with
             | Blk _ ->
                 (* remove block in iR, propagate on data *)
                 Some(some_of (env d) (remove_atom iR g), oc)
             | _ -> raise Not_found
                      
           else if ((iL+1) == iR) then
             match atL with
             | Blk _ ->
                 (* remove block in iL *)
                 Some(some_of (env d) (remove_atom iR g), oc)
             | _ -> raise Not_found
           else
             raise Not_found
         with
           Not_found -> Some(bottom_of (env d), oc)
    )

and guard_geq (d: t) (sviL: Mman_svar.svid) (sviR: Mman_svar.svid)
    (oc: Mman_asyn.aconstr)
  : (t * Mman_asyn.aconstr) option
  =
  match d.mem with
  | Bot | Top -> Some(d, Mman_asyn.AFalse)
  | S(g) ->
      if sviL == sviR then
        (* already equal locations *)
        (* nothing to propagate on data *)
        Some(d, oc)
      else
        (* check if locations are in mls and of ordered positions *)
        (try
           let iL = Extlib.find_index (fun l -> l == sviL) g.mls in
           let iR = Extlib.find_index (fun l -> l == sviR) g.mls in
           if (iL >= iR)
           then
             (* nothing to do, except propagate on data *)
             Some(d, oc)
           else
             Some(bottom_of (env d), Mman_asyn.AFalse)
         with
           Not_found ->
             (* some location not in data segment, 
                not able to compare in shape *)
             Some(bottom_of (env d), Mman_asyn.AFalse)
        )

and guard_gt (d: t) (sviL: Mman_svar.svid) (sviR: Mman_svar.svid)
    (oc: Mman_asyn.aconstr)
  : (t * Mman_asyn.aconstr) option
  =
  match d.mem with
  | Bot | Top -> Some(d, Mman_asyn.AFalse)
  | S(g) ->
      (* check if locations are in mls and of ordered positions,
         with not empty atom between them
      *)
      (try
         let iL = Extlib.find_index (fun l -> l == sviL) g.mls in
         let iR = Extlib.find_index (fun l -> l == sviR) g.mls in
         if (iL > iR) (* TODO: check that not an empty segment of atoms *)
         then
           (* nothing to do, except propagate on data *)
           Some(d, oc)
         else
           Some(bottom_of (env d), Mman_asyn.AFalse)
       with
         Not_found ->
           (* some location not in data segment,
              not able to compare in shape *)
           Some(bottom_of (env d), Mman_asyn.AFalse)
      )

and guard_neq (d: t) (sviL: Mman_svar.svid) (sviR: Mman_svar.svid)
    (oc: Mman_asyn.aconstr)
  : (t * Mman_asyn.aconstr) option
  =
  match d.mem with
  | Bot | Top -> Some(d, Mman_asyn.AFalse)
  | S(g) ->
      if sviL == sviR then
        (* already equal locations *)
        Some (bottom_of (env d), Mman_asyn.AFalse)
      else if (sviL == Mman_svar.svid_null) then
        (let nc =
           match oc with
           | Mman_asyn.ACmp(_,aeL,aeR) ->
               Mman_asyn.ACmp(Mman_asyn.ASUP, aeR, aeL)
           | _ ->
               oc
         in
         Some (d, nc)
        )
      else if (sviR == Mman_svar.svid_null) then
        (let nc =
           match oc with
           | Mman_asyn.ACmp(_,aeL,aeR) ->
               Mman_asyn.ACmp(Mman_asyn.ASUP, aeL, aeR)
           | _ ->
               oc
         in
         Some (d, nc)
        )
      else (* locations are distinct variables and different from null *)
        (* order them in the data part, if possible *)
        (try
           let iL = Extlib.find_index (fun l -> l == sviL) g.mls in
           let iR = Extlib.find_index (fun l -> l == sviR) g.mls in
           if (iL > iR) then
             (match oc with
              | Mman_asyn.ACmp(_,aeL,aeR) ->
                  Some(d, Mman_asyn.ACmp(Mman_asyn.ASUP, aeL, aeR))
              | _ ->
                  raise Not_found
             )
           else if (iL < iR) then
             (match oc with
              | Mman_asyn.ACmp(_,aeL,aeR) ->
                  Some(d, Mman_asyn.ACmp(Mman_asyn.ASUP, aeR, aeL))
              | _ ->
                  raise Not_found
             )
           else
             raise Not_found
         with
           Not_found ->
             Some (d, oc) (* nothing can be done here, go to data part *)
        )
         

(** Compute a memory layout from the constraints.
    Return also the constraints to be applied to the data part.
*)
and of_constraints (d: t) (c1_cn: Mman_asyn.aconstr list)
  : (t * Mman_asyn.aconstr list) option
  =
  Some(d, c1_cn) (* TODO *)

(** Remove the atom starting from a location.
*)
and remove_atom (svi: Mman_svar.svid) (g: meminfo)
  : meminfo
  =
  { stack = g.stack;
    mls = (Extlib.filter_out (fun id -> id == svi) g.mls);
    atoms = MEV.EnvMap.remove svi g.atoms
  }


(**************************************************************************)
(** {2 Assignment} *)
(**************************************************************************)

(** Assign the left value to the location computed from e.
 *  Returns the list of computed abstract values if
 *  pre-conditions 
 *  1) lv is a SAddr with a pointer program variable or hli
 *  2) e is a) location in heap or global stack or b) ABinOp(+, bl, intexp)
 *       or c) ALVal(AFeat(DA_CDAT, l)) = ALVal(svid) with svid a feature
*)
let rec mutate (lv: Mman_asyn.alval) (e: Mman_asyn.aexp) (d: t)
  : (t * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
  =
  let seid = (env d) in
  let psz, _ = MEV.senv_size seid in
  (* check that the left value is a program variable of pointer type *)
  let sviL = (match lv with
      | Mman_asyn.ASVar(svi) -> svi
      | _ -> Mman_svar.svid_null
    )
  in
  let svinfoL = Mman_env.senv_getvinfo seid sviL in
  if (sviL == Mman_svar.svid_null) ||
     (sviL >= psz) ||
     (svinfoL.typ != SVAddr)
  then
    (let _ = Mman_options.Self.failure "Unexpected left value@."
     in
     [(bottom_of seid, [], [])]
    )
  else
    (match d.mem with
     | Bot -> [(d, [], [])]
     | Top ->
         let ng = empty_meminfo in
         mutate_meminfo seid ng sviL e
     | S(g) ->
         mutate_meminfo seid g sviL e
    )
    
and mutate_meminfo (seid: MEV.t) (g: meminfo)
  (sviL: Mman_svar.svid) (e: Mman_asyn.aexp) 
  : (t * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
  =
  match e with
  | ALval(ASVar(sviR)) ->
      let svR = Mman_env.senv_getvinfo seid sviR in
      begin
        (* pre-condition 2a): location in stack *)
        (* TODO: i.e., not a feature ?? what about DA_CDAT ? *)
        if (svR.Mman_svar.kind == Mman_svar.SAddr) then
          (* change the stack *)
          [(some_of seid (mutate_stack seid g sviL sviR), [], [])]
        else
          let _ = Mman_options.Self.failure "Undefined address@."
          in []
      end
      
  | ABinOp(AAdd, ALval(ASVar(bl)), eoff) ->
      begin
        (* precondition 2b): pointer arithmetics of base sviR *)
        if (bl == Mman_svar.svid_hli)
        then (if (sviL == Mman_svar.svid_hli)
              then (* is a sbrk(eoff) *)
                mutate_hli seid g
              else
                (* access outside hli *)
                (match eoff with
                 | ACst(c) ->
                     (if Integer.is_zero c then
                        (* change only the stack *)
                        [(some_of seid (mutate_stack seid g sviL bl), [], [])]
                      else
                        (* create a location outsize hli and signal it *)
                        mutate_hli_offset seid g sviL eoff
                     )
                 | _ -> mutate_hli_offset seid g sviL eoff
                )
             )
        else
          (* bl is not the heap limit, thus shall have a block linked to *)
          (* case 1: consider offset to be 0 *)
          let nstack1 = MEV.EnvMap.add sviL bl g.stack in
          let nc1 = ACmp(AEQ, eoff, ACst(Integer.zero)) in
          let ng1 = { stack = nstack1; mls = g.mls; atoms = g.atoms } in
          (* case 2 and 3: work on block starting from bl *)
          let bblk = try MEV.EnvMap.find bl g.atoms with Not_found -> Emp in
          let eblk = match bblk with
            | Emp | Chd _ | Chk _ | Cls _ ->
                let _ = Mman_options.Self.failure "Unexpected atom@." in
                Mman_svar.svid_hli
            | Blk(_ai,bi) ->
                bi
          in
          (* case 2: bl + eoff = eblk *)
          let nstack2 = MEV.EnvMap.add sviL eblk g.stack in
          let nc2 = ACmp(AEQ, ALval(ASVar(eblk)), e) in
          let ng2 = { stack = nstack2; mls = g.mls; atoms = g.atoms } in
          (* case 3: bl < nvi = e < eblk *)
          let nseid3, nvi = senv_add_saddr_1 seid in
          let nstack3 = MEV.EnvMap.add sviL nvi g.stack in
          let natoms3a = MEV.EnvMap.add bl (Blk(bl,nvi)) g.atoms in
          let natoms3 = MEV.EnvMap.add nvi (Blk(nvi,eblk)) natoms3a in
          let mls3 = mls_insert_after g.mls bl nvi in
          let ng3 = { stack = nstack3; mls = mls3; atoms = natoms3 } in
          let nc3a = ACmp(AEQ, ALval(ASVar(nvi)), e) in
          let nc3b = ACmp(ASUP, ALval(ASVar(nvi)), ALval(ASVar(bl))) in
          let nc3c = ACmp(ASUP, ALval(ASVar(eblk)), ALval(ASVar(nvi))) in
          [(some_of seid ng1, [], [nc1]);
           (some_of seid ng2, [], [nc2]);
           (some_of nseid3 ng3, [nvi], [nc3a; nc3b; nc3c])
          ]
      end

  | _ ->
      let _ = Mman_options.Self.failure "Unsupported assign@."
      in []

and mutate_stack (_seid: MEV.t) (g: meminfo)
  (sviL: Mman_svar.svid) (sviR: Mman_svar.svid)
  : meminfo 
  =
  { stack = MEV.EnvMap.add sviL sviR g.stack;
    mls = g.mls;
    atoms = g.atoms }
          
and mutate_hli (seid: MEV.t) (g: meminfo)
  : (t * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
  =
  let hli = Mman_svar.svid_hli in
  (* create a new address *)
  let nseid, nvi = senv_add_saddr_1 seid in
  (* change the stack elements pointing to hli to point to nvi *)
  let nstack = (MEV.EnvMap.map (fun d -> (if d = hli then nvi else d)) g.stack)
  in 
  (* add a block starting from this location until hli *)
  (* and add it in the memory list *)
  let ng = { stack = nstack;
             mls = g.mls;
             atoms = (MEV.EnvMap.add
                        nvi (Blk(nvi,Mman_svar.svid_hli))
                        g.atoms
                     )
           }
  in
  (* generate constraint nvi = hli updated by the assignment in data *)
  let nc = ACmp(AEQ, ALval(ASVar(nvi)), ALval(ASVar(Mman_svar.svid_hli)))
  in
  [((some_of nseid ng), [nvi], [nc])]


(** Mutate sviL to a location hli + aexp. *)
and mutate_hli_offset (seid: MEV.t) (g: meminfo)
  (sviL: Mman_svar.svid) (eoff: Mman_asyn.aexp)
  : (t * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
  =
  let _ = Mman_options.Self.warning "Access outside data segment limit@." in
  let hli = Mman_svar.svid_hli in
  (* Two cases: 
     a block starting from hli already exists or
     no block from hli
  *)
  let hliblk = (try MEV.EnvMap.find hli g.atoms with Not_found -> Emp) in
  match hliblk with
  | Emp -> (* no block *)
      (* create a new location *)
      let nseid, nvi = senv_add_saddr_1 seid in
      (* change the stack *)
      let nstack = MEV.EnvMap.add sviL nvi g.stack in
      (* add the block in atoms *)
      let natoms = MEV.EnvMap.add hli (Blk(hli, nvi)) g.atoms in
      (* constraint defining nvi *)
      let nc = ACmp(AEQ, ALval(ASVar(nvi)), ABinOp(AAdd, ALval(ASVar(hli)),eoff))
      in
      let ng = { stack = nstack; mls = g.mls; atoms = natoms } in
      [((some_of nseid ng), [nvi], [nc])]

  | Blk(_ai,bi) ->
      (* already existing block, three cases:
         1) use bi as limit
         2) split the block
         3) extend the block: stop (to avoid other cases)
      *)
      (* case 1: bi = hli + eoff *)
      let nstack1 = MEV.EnvMap.add sviL bi g.stack in
      let nc1 = ACmp(AEQ,
                     ALval(ASVar(bi)),
                     ABinOp(AAdd, ALval(ASVar(hli)), eoff))
      in
      let ng1 = { stack = nstack1; mls = g.mls; atoms = g.atoms }  in
      (* case 2: hli < hli+eoff < bi *)
      let nseid, nvi = senv_add_saddr_1 seid in
      let nstack2 = MEV.EnvMap.add sviL nvi g.stack in
      let natoms = MEV.EnvMap.add hli (Blk(hli, nvi)) g.atoms in
      let natoms2 = MEV.EnvMap.add nvi (Blk(nvi, bi)) natoms in
      let ng2 = { stack = nstack2; mls = g.mls; atoms = natoms2 } in
      let nc2a = ACmp(AEQ,
                      ALval(ASVar(nvi)),
                      ABinOp(AAdd, ALval(ASVar(hli)), eoff))
      in
      let nc2b = ACmp(ASUP, ALval(ASVar(nvi)), ALval(ASVar(hli))) in
      let nc2c = ACmp(ASUP, ALval(ASVar(bi)), ALval(ASVar(nvi))) in
      [(some_of seid ng1, [], [nc1]);
       (some_of nseid ng2, [nvi], [nc2a; nc2b; nc2c])]

  | Chk(_ai,_fl) ->
      (* same cases as above with bi = _ai + csz(_ai) *)
      let _ = Mman_options.Self.not_yet_implemented "Memory chunk from hli@."
      in
      [(bottom_of seid, [], [])]
      
  | _ ->
      let _ = Mman_options.Self.failure "Memory list from hli@."
      in
      [(bottom_of seid, [], [])]
      
  
  
(**************************************************************************)
(** {2 Unfold} *)
(**************************************************************************)
    
(** unfold 
 * 
*)
(* TODO
 * unfold 
 * cls(a,b)[w] => 
 *   1.chk(a,c) * cls(c,b)[w2] /\ [a].[w2] = w
 *   2.cls(a,c)[w1] * chk(c,d) * cls(d,b)[w2] /\ [w1].[c].[w2] = w 
 *   3.cls(a,c)[w1] * chk(c,d) /\ [w1].[c] = w 
*)
let unfold_cls (_sv1:int) (_sv2:int) (_sh:valinfo)
  : (valinfo * Mman_svar.svid list * Mman_asyn.aconstr list) list
  = [] 

(* TODO *)
let unfold_fls (_sv1:int) (_sv2:int) (_sh:valinfo)
  : (valinfo * Mman_svar.svid list * Mman_asyn.aconstr list) list
  = [] 

let unfold_feat (svi:int) (fk: Mman_dabs.feature_kind) (sh: valinfo)
      : (valinfo * Mman_svar.svid list * Mman_asyn.aconstr list) list
      =
      match sh.mem with
      | Bot | Top -> []
      | S(g) -> 
          let at = MEV.EnvMap.find svi g.atoms in
          match fk with 
          | DA_CSZ | DA_CNXT | DA_CDAT | DA_CPRV  ->
              begin 
                match at with
                | Emp | Blk _  | Chd _ | Chk _ -> [] (* do not need to unfold *) 
                | Cls (svi1,svi2,_sviw) ->  unfold_cls svi1 svi2 sh  (* unfold cls *)
             (* | Fck | Fls ->[] (error case) *)
              end 
          | DA_FNXT | DA_FPRV -> 
              begin 
                match at with
                | Emp | Blk _  | Chd _ | Chk _ | Cls _  -> [] (* error case  *) 
              (*| Fls (svi1,svi2,sviw) ->  unfold_fls svi1 svi2 sviw sh  (* unfold fls *)*)
              end 
          | _ -> [] 
          (* FLS(_,_,_) -> unfold_fls *)

let unfold (lv: Mman_asyn.alval) (sh:valinfo)
    : (valinfo * Mman_svar.svid list * Mman_asyn.aconstr list) list
    = 
    match sh.mem, lv with
    | S(_g), AFeat(fk, ASVar(svi)) ->
          unfold_feat svi fk sh
    | _ -> []



(* TODO:*)
let fold (_p:Mman_asyn.aconstr) (_vl:Mman_svar.svarinfo) (_g:valinfo)
  : valinfo
  = _g 




(**************************************************************************)
(** {2 Normalize abstract values} *)
(**************************************************************************)

 
(* list of predicate and existential vars *)
let normalize (_sh:valinfo) 
  :( Mman_asyn.aconstr * Mman_svar.svarinfo ) list 
  = []

 
(**************************************************************************)
(** {2 Add/remove variables} *)
(**************************************************************************)

(* get the index of svid in sh.stack *)  
let stack_of (sh:valinfo) (svid: Mman_svar.svid)
  : int 
  = 
  let res = ref (-1) in 
  let s = ref false in 
  match sh.mem with
  | Bot | Top  -> !res 
  | S(g) -> 
    begin 
      let sk = g.stack in 
      MEV.VidMap.iter 
      (
        fun vi _ai -> 
            if (vi == svid) && (!s == false) then 
                (s := true;  
                )
            else if (!s == false) then 
                res := !res + 1;
      )
      sk;
      !res 
    end 


