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
open Mman_env

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
  | Fck of svid * svid
  (*| Fck of svid * (feature_kind * svid) list
  | Fls of svid * svid * svid *)
           
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
        Format.fprintf fmt "] "
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
    let peid = (MEV.senv_get sei).peid in 
    Format.fprintf fmt "stack:(seid:%d,peid:%d) \n " sei peid ;
    (MEV.VidMap.iter
       (fun vi ai ->
          begin  
        (* MEV.pretty_senvs;*)           
          let vinfo = MEV.penv_getvinfo peid vi in
          let ainfo = MEV.senv_getvinfo sei ai in
          Format.fprintf fmt "%a |-> %a,\n "
            Mman_svar.Svar.pretty vinfo
            Mman_svar.Svar.pretty ainfo
          end 
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
    Format.fprintf fmt "heap list \n[";
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
    Format.fprintf fmt "atoms:@.";
    (MEV.EnvMap.iter
       (fun _vi at ->
          begin
            pretty_atominfo fmt sei at;
            Format.fprintf fmt " * \n "
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
    
    (* print heap list *)
    Format.fprintf fmt "heap list \n[";
    (List.iter
       (fun ai ->
          let ainfo = MEV.senv_getvinfo sei ai in
          Format.fprintf fmt "%a::"
            Mman_svar.Svar.pretty ainfo
       )
       mi.mls
    );
    Format.fprintf fmt "]@.";

    (* print SL formula *)
    Format.fprintf fmt "atoms:@.";
    (List.iter
       (fun ai ->
          let at = MEV.EnvMap.find ai mi.atoms in
          begin
            pretty_atominfo fmt sei at;
            Format.fprintf fmt " * \n"
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
  if cmplst < 0 then 1, emptymap        (* less atoms in g0, so more general *)
  else if cmplst > 0 then -1, emptymap
  else                                  (* same number of atoms (edges), find their homeomorphism *)
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
include Datatype.Make (struct
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

(* add a symbolic variable (representing a chunk) into senv *)
let senv_add_saddr (seid: MEV.t)
  : (MEV.t * Mman_svar.svid)
  =
  let nseid, nvl = Mman_env.senv_addsvar seid
      [(Mman_svar.sv_mk_svar ~svid:0 (SVPtr(SVChunk)))]
  in
  let nvi =
    (match nvl with
     | [vi] ->
         begin
           assert (vi.id != Mman_svar.svid_hole);           
            let _ = Mman_options.Self.debug ~level:1 "new svar added vi.id%d@." vi.id in 
            vi.id
         end
     | _ ->
         let _ = Mman_options.Self.failure "Internal error@."
         in Mman_svar.svid_hole
    )
  in
  nseid, nvi

(* add svar(nid) into list of symbolic variables *)
let rec mls_insert_after (mls: Mman_svar.svid list) (id: Mman_svar.svid) (nid: Mman_svar.svid)
  : Mman_svar.svid list
  =
  match mls with
  | [] -> raise Not_found
  | e :: l ->
      if e == id then (e :: (nid :: l))
      else e :: (mls_insert_after l id nid)

(**************************************************************************)
(** {2 Location evaluation} *)
(**************************************************************************)
                    
(** 
    Evaluate a left-value.
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
       | AVar(vi) ->
           (* as a left value, a program variable is always defined *)
           (* returns the corresponding symbolic variable *)           
           (* find the correspoding symbolic variable in or *)            
           if (Mman_dabs.is_chunk_ptr vi.Cil_types.vtype) || 
              (Mman_dabs.is_chunk_struct vi.Cil_types.vtype) 
           then 
               let alv, _ = Mman_asyn.to_senv_lval seid lv false 
               in                
               Some(alv), []

           else if (Cil.isPointerType vi.Cil_types.vtype) 
           then 
                let alv, _ = Mman_asyn.to_senv_lval seid lv false in 
                Some(alv), []
           else 
                None, []
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
                let _ = Mman_options.Self.debug ~level:1 "MSH:check that the feature may be assign in the graph... @."in 
                evalL_feat seid svid fk g
            | _ ->
                (* otherwise, nothing to change *)
                Some(lv), []
           )
           
       | AFeat(fk,al) ->
           (* evaluate first the location at al *)
           begin 
              begin 
                 let r, vf = evalL al d in
                 match r with
                 | None ->                        (* propagate the error *)
                     None, vf                     
                 | Some (ASVar svid) ->
                     if vf != [] then 
                       Some(lv), vf               (* return the same left value *)
                     else (* vf == [] *) 
                       evalL_feat seid svid fk g
                 | _ ->
                     let _ =
                       Mman_options.Self.not_yet_implemented "Double dereference"
                     in
                     None, []
              end 
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
    let _ = Mman_options.Self.feedback "a block in memory list found.... @."
    in
    evalL_atom svid fk at
  else if (svid < psz)
  then
    ( 
    (* it is a location on stack, check its atom at the location given 
       by the stack *)
    begin 
          let slid = try MEV.EnvMap.find svid g.stack 
                     with Not_found -> -2 
          in        
          if (slid == 0) (* svid points to NULL *)
          then 
              begin  
                None, [] (* not an allocated location *)
              end 
          else if ( slid > 0)
          then
              ( 
              let at = try MEV.EnvMap.find slid g.atoms with Not_found -> Emp in                 
                evalL_atom slid fk at
              )
          else None, []             
      end 
    )
  else (* it is simply a location in heap *)
    let at = try MEV.EnvMap.find svid g.atoms with Not_found -> Emp in
    let _ = Mman_options.Self.feedback "simply a location in heap .... @."
        in
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

        | ASbrk (e) -> 
                Some (ASbrk(e)),[]

        | ABinOp (bop , ex1 , ex2) -> 
            let r1, vf1 = evalE ex1 d in
            let r2, vf2 = evalE ex2 d in
            if (vf1 != []) || (vf2 != [])  then
              let _ =  Mman_options.Self.debug ~level:1 "MSH:after evalE, need unfolding ... @." in  
              Some (exp), (vf1) @ (vf2)
            else  (* (vf1 == []) && (vf2 == []) *)
              (
                match r1, r2 with
               | None, _ | _, None ->  
                    None, []
               
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
                              (
                                match at with
                                | Blk(_) -> Some (ABinOp (bop, e1, e2)), []
                                | _ -> Some (ABinOp (bop, e1, e2)),[]   (* Some (ABinOp (bop, e1, e2)), [AFeat(DA_CNXT, ASVar(svi))] *)
                              )
                           with Not_found ->
                             (* no atom from svi *) 
                             Some (ABinOp (bop, e1, e2)), []
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
            let svi = 
              if (String.compare (vi.vname ) "__hli" == 0)
              then   
                  Mman_env.senv_getvar seid (Mman_svar.sv_mk_hli) 
              else 
                    
                  Mman_env.senv_getvar seid (Mman_svar.sv_mk_var vi) 
            in 
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
  let peid = (MEV.senv_get seid).peid in 
  if svid == Mman_svar.svid_null 
  then
    Some(ACst(Integer.zero)), []
  else if (svid <= Mman_svar.svid_hst)
       || ((svid < psz) &&
           not(Mman_svar.isPtrType (Mman_env.penv_getvtyp peid svid)))
       || (svid >= psz)
  then  
    (* no need to look in stack *)
    Some(ALval(ASVar svid)), [] 
  else 
    (* TODO: and if it is DA_CDAT *)
    (* inspect the stack *)
    (try 
       let svpto = MEV.EnvMap.find svid g.stack in
       if svpto == Mman_svar.svid_null
       then Some(ACst(Integer.zero)), []
       else  
       		Some(ALval(ASVar svpto)), []
     with Not_found -> (* Not initialized *)
       Some(ALval(ASVar svid)), [] 
       (*None, []*)
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
           (*let _ =  Mman_options.Self.debug ~level:1 "MSH:after evalE_atom,%a  ... @." 
                      Mman_asyn.pp_aexp (ALval(ASVar(svf)))
                      in *)
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
        (
        fun ci ->
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
    if is_bottom !nd 
    then 
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
  | Bot ->  Some(d, ci), []
  
  | Top ->  Some(d, ci), [] (* TODO *)
  
  | S(_) ->
      (
        match ci with
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
             (
              match oeLn, oeRn with
              | None, _ | _, None ->  None, []            
              
              | Some(aeLn), Some(aeRn) ->
                  (* both expressions contains only 
                     constants, locations, operators *)
                  (* the shape part deal only with 
                     comparison between locations *)  
                  let svL = Mman_asyn.get_saddr aeLn in
                  let svR = Mman_asyn.get_saddr aeRn in
                  let aci = Mman_asyn.ACmp(op, aeLn, aeRn) in 
                  (
                    match svL, svR with
                   | None, _ | _, None ->
                       (* not a constraint on locations *)
                       Some(d, aci), []
                   
                   | Some(sviL), Some(sviR) ->
                       (* a constraint on locations, only comparison accepted *)     
                       (
                         match op with
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
             (* TODO: if sviL is hli *) 
             Some(d, oc)
             (*Some(bottom_of (env d), Mman_asyn.AFalse)*)
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
(**  initial shape value *)
(**************************************************************************)

(* new Blk atom *)
let new_Blk (sv1:Mman_svar.svid) (sv2:Mman_svar.svid) = Blk (sv1,sv2)

(* new Chd atom *)
let new_Chd (sv:Mman_svar.svid) (fkl:(feature_kind * svid) list ) = Chd (sv, fkl)

(* new Chk atom *)
let new_Chk (sv:Mman_svar.svid) (fkl:(feature_kind * svid) list ) = Chk (sv, fkl)

(* new Cls atom *)
let new_Cls (sv1:Mman_svar.svid) (sv2:Mman_svar.svid) (sv3:Mman_svar.svid) = Cls (sv1,sv2,sv3)

let new_mem (st:MEV.envmap) (ls:svid list) (at:atominfo MEV.EnvMap.t)
  = 
  { 
    stack = st;
    mls = ls;
    atoms = at
  }

let new_msh (seid:MEV.t) (mem:meminfo)
  = 
  { seid = seid;
    mem = S(mem);
  }
 
(* initialize state *)
let init_state (pv:int) (sid: MEV.t) 
  : valinfo
  =
  begin 
    let _ = Mman_options.Self.debug ~level:1 " MSH:init shape value @."  
    in 
    let mi = empty_meminfo in 
    let st = MEV.EnvMap.add pv Mman_svar.svid_hst mi.stack in 
    let at = Blk(Mman_svar.svid_hst,Mman_svar.svid_hli) in         
    let ls = [(Mman_svar.svid_hst)]  in 
    let atmp = MEV.EnvMap.add Mman_svar.svid_hst at mi.atoms in          
    let mi = {stack = st; mls = ls; atoms = atmp } in 
    {
      seid = sid;
      mem = S (mi);
    }
  end 

(* change seid of shape *)
let change_env (seid:MEV.t) (d:valinfo) 
 :valinfo
 = 
 match d.mem with
 | Bot -> d
 | Top -> d
 | S(g) -> 
 	  let oldsei = d.seid in 
 	  let oldsenv = Mman_env.senv_get oldsei in 
 	  let oldpeid = oldsenv.peid in 
 	  let oldpenv = Mman_env.penv_get oldpeid in 
 	  let newsenv = Mman_env.senv_get seid in 
 	  let newpeid = newsenv.peid in
 	  let newpenv = Mman_env.penv_get newpeid in 

 	  if (oldpeid == newpeid) 
 	  then 
	      let ng = { stack = g.stack;
	                 mls = g.mls;
	                 atoms = g.atoms
	               }  
	      in
	       { seid = seid; 
	         mem = S(ng) 
	       } 
	  else 
	  	(* project out vars *)
      begin 
        let _ = Mman_options.Self.debug ~level:1 " MSH:change_env, project out vars ... @." in 
	      let svl = ref [] in 
	      MEV.VidMap.iter 
	      (
	      	fun svid svi ->
	      		(
	      			let sv = Mman_env.senv_getvar seid svi in 
	      			(* can't found in newpenv *)
	      			if (sv.id == Mman_svar.svid_hole) && (svid != Mman_svar.svid_hole)
	      			then 
	      			svl := !svl @[svid]      		 
	      		)
	      )
	      oldpenv.pvars 
	      ;
	      (* remove svl in stack *)
	      let nst = ref MEV.EnvMap.empty in
	      nst := g.stack;
	      List.iter
	      (
	      	fun pvi ->
	      		nst := MEV.EnvMap.remove pvi !nst 
	      )
	      !svl
	      ;
	      let ng = { stack = !nst;
	                 mls = g.mls;
	                 atoms = g.atoms
	               }  
	      in
	      let _ = Mman_options.Self.debug ~level:1 " MSH:change_env done  ... @." in 
	       { seid = seid; 
	         mem = S(ng) 
	       } 
	   end 


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
  let sviL = 
    (
      match lv with
      | Mman_asyn.ASVar(svi) -> svi
     
      | Mman_asyn.AFeat(fk, lv') -> 
              begin 
                let fki = ref (-1) in 
                  begin 
                  match lv' with
                  | Mman_asyn.ASVar(vi) ->                        
                    (
                      let se = senv_get seid in 
                      let peid = se.peid in 
                      let pe = penv_get peid in  
                        VidMap.iter
                        (fun i svi -> 
                            match svi.Mman_svar.kind with
                            | Feature(Some(optvid), fk) -> 
                                if optvid == vi 
                                then fki := i
                                else ()        
                            |_-> ()
                        )
                        pe.pvars
                      ;    
                      if (!fki == (-1)) then (* cant find in penv, search in senv *)
                      let se = senv_get seid in  
                        VidMap.iter
                        (fun i svi -> 
                          match svi.Mman_svar.kind with
                          | Feature(Some(optvid), fk) -> 
                              if optvid == vi 
                              then fki := i
                              else ()        
                          |_-> ()
                        )
                        se.svars
                    )
                  | _ -> fki:= Mman_svar.svid_null
                end 
                ;
                !fki  
              end 

      |_ -> Mman_svar.svid_null          
    )
  in 
  let svinfoL = Mman_env.senv_getvinfo seid sviL in 
  (*if (sviL == Mman_svar.svid_null) ||
     (sviL >= psz) ||
     (svinfoL.typ != SVAddr)*)
  if (sviL == Mman_svar.svid_null) 
  then
    (
      let _ = Mman_options.Self.failure "Unexpected left value@."  in
      [(bottom_of seid, [], [])]
    )
  else
    (
      match d.mem with
     | Bot -> [(d, [], [])]
     
     | Top ->
         let ng = empty_meminfo in
         mutate_meminfo seid ng sviL e

     | S(g) ->
        begin 
          let rs = mutate_meminfo seid g sviL e in 
          if rs == [] 
          then [(d, [], [])]
          else rs 
        end 
    )
    
and mutate_feat (seid: MEV.t) (g: meminfo)
    (sviL: Mman_svar.svid) (fk:Mman_dabs.feature_kind) 
    (e: Mman_asyn.aexp) 
    : (t * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
    =
    let _ = Mman_options.Self.debug ~level:2 "MSH:mutate_feat.....@." in 
    begin 
      (* get the left value *)
      let sv_R =
          match e with
          | ACst i ->  
              let sv = Mman_env.senv_getvinfo seid sviL in               
              if (Integer.is_zero i) 
              then 
                match sv.typ with
                | SVPtr(_) -> Mman_svar.svid_hole
                | SVChunk  -> Mman_svar.svid_null          
              else 
                  Mman_svar.svid_hole  
          
          | ALval(ASVar(sviR)) -> sviR  
          | _ -> Mman_svar.svid_hole 
        in   

      let at = try MEV.EnvMap.find sviL g.atoms with Not_found -> Emp in       
      let n_at = (* update atom *) 
          match at with
          | Emp | Blk (_,_) -> Emp (* error *)
          
          | Chd(a, fl) ->          
              if a != sviL 
              then             
                let _ = Mman_options.Self.failure "Bad mapping of atoms@." in
                Emp
              else if a == sviL 
              then
                begin
                  (* update feature list *)             
                  let fkl = ref [] in                     
                  List.iter 
                  (
                  fun (fki, svi) ->
                    if fki == fk 
                    then
                    let _ = Mman_options.Self.debug ~level:2 "MSH:update %s of chd.....@." (Mman_dabs.get_fname (fk)) in 
                      (fkl := !fkl @[(fki,sv_R)];)
                    else if fki != fk 
                    then
                      (fkl := !fkl @[(fki,svi)];)
                  )
                  fl
                  ;
                  Chd(a, !fkl)               
                end
              else Emp

          | Chk (a, fl)->
                if a != sviL 
                then
                  let _ = Mman_options.Self.failure "Bad mapping of atoms@." in
                  Emp
                else if a == sviL 
                then
                  begin 
                    (* update feature list *) 
                    let fkl = ref [] in                     
                    List.iter 
                    (
                    fun (fki, svi) ->
                      if fki == fk 
                       then 
                        let _ = Mman_options.Self.debug ~level:2 "MSH:update chk.....@." in
                        fkl := !fkl @[(fk,sv_R)] 
                       else if fki != fk 
                       then 
                        fkl := !fkl @[(fki,svi)]
                    )
                    fl 
                    ;
                    Chk(a,!fkl)
                  end 
                else Emp
          
              | Cls _ ->  Emp
      in 
      let n_atoms = ref MEV.EnvMap.empty in  
        MEV.EnvMap.iter
         (
          fun vi at ->
            begin
                if vi == sviL then  
                    n_atoms := MEV.EnvMap.add sviL n_at !n_atoms 
                else if vi != sviL then  
                    n_atoms := MEV.EnvMap.add vi at !n_atoms 
            end
         )
         g.atoms
      ;
      let n_meminfo = 
          { stack = g.stack;
              mls = g.mls;
            atoms = !n_atoms
          }
      in   
      [(some_of seid (n_meminfo), [], [])]
    end 

and mutate_meminfo (seid: MEV.t) (g: meminfo)
  (sviL: Mman_svar.svid) (e: Mman_asyn.aexp) 
  : (t * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
  = 
  match e with
  | ACst i ->   
    let sv = Mman_env.senv_getvinfo seid sviL in 
    if (Integer.is_zero i) 
    then 
      match sv.typ with
      | SVPtr(_) ->           
          (* if the type of sviL is pointer p , e is 0 =>  p := NULL *)          
          [(some_of seid (mutate_stack seid g sv.id Mman_svar.svid_null),[],[])]
      | _ -> 
          begin                                 
              match sv.kind with
              | Feature(_,_) -> []
              | _ -> []
          end 
    else [] 

  | ALval(ASVar(sviR)) ->
      let _ = Mman_options.Self.debug ~level:2 "MSH:mutate_meminfo, location in stack...@." in 
      let svR = Mman_env.senv_getvinfo seid sviR in
      let _ = Mman_options.Self.debug ~level:2 "MSH:location svR: %a@." Mman_svar.Svar.pretty svR  in 
      begin
        (* pre-condition 2a): location in stack *)
        (* TODO: i.e., not a feature ?? what about DA_CDAT ? *)
       match svR.Mman_svar.kind with
       | SVar -> 
       	  (* change the stack *)
          	[(some_of seid (mutate_stack seid g sviL sviR), [], [])]
       | PVar vi  ->  
       	  (* change the stack *)
          	[(some_of seid (mutate_stack seid g sviL sviR), [], [])]
       | Hli ->
       	   	[(some_of seid (mutate_stack seid g sviL Mman_svar.svid_hli), [], [])]
       | Feature(_,_) -> 
       		[(some_of seid (mutate_stack seid g sviL sviR), [], [])]
       |_ -> []
       (* if (svR.Mman_svar.kind == Mman_svar.SVar) ||
           (svR.Mman_svar.kind == Mman_svar.PVar)
         then 
          (* change the stack *)
          [(some_of seid (mutate_stack seid g sviL sviR), [], [])]
        else if (svR.Mman_svar.kind == Mman_svar.Hli) 
        then 
          let _ = Mman_options.Self.feedback " := Hli @."
          in 
          [(some_of seid (mutate_stack seid g sviL Mman_svar.svid_hli), [], [])]
        else 
            let _ = Mman_options.Self.debug ~level:2 "MSH:svar is @." 
        	in 
            match svR.Mman_svar.kind with
            | Feature(_,_) -> [(some_of seid (mutate_stack seid g sviL sviR), [], [])]
            | _ ->  []  *)
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
          match bblk with
            | Emp  | Chk _ | Cls _ ->
                let _ = Mman_options.Self.failure "Unexpected atom@." in
                (*Mman_svar.svid_hli*)
                [] 
            | Blk(_ai,bi) ->
            	begin 	            
	              let eblk = bi in 
	              (* case 2: bl + eoff = eblk *)
		          let nstack2 = MEV.EnvMap.add sviL eblk g.stack in
		          let nc2 = ACmp(AEQ, ALval(ASVar(eblk)), e) in
		          let ng2 = { stack = nstack2; mls = g.mls; atoms = g.atoms } in
		          (* case 3: bl < nvi = e < eblk *)
		          let nseid3, nvi = senv_add_saddr seid in
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

            | Chd(a,fl) ->            	  
            	begin            	
	        	    let res = ref [] in 
	        	    let inx = ref 0 in 
	        	    (* search b1 after the a in mls *)
	        	    List.iteri 
	        	    (
	        	  		fun i svi -> 
	        	  			if a == svi 
	        	  			then inx := i+1 
	        	    )
					  g.mls 
	        	    ;    
		  			(* get blka(b1,b2)*)
		  			let svi = List.nth g.mls !inx in 
		  			let _ = Mman_options.Self.debug ~level:1 "Atom:Chd(sv_%d)*Blk(%d)... @." a svi in  
		  			let blka = try MEV.EnvMap.find svi g.atoms with Not_found -> Emp in
		  			match blka with
		  			| Blk(b1,b2) ->	 
		  				let _ = Mman_options.Self.debug ~level:1 "Atom:Chd(sv_%d)*... @." a in    		  			 		  				
		  				let natoms = MEV.EnvMap.remove b1 g.atoms in

		  				(* create a new svar of b3 *)
		  				let nseid1, b3 = senv_add_saddr seid in 
		  				(* add the new Blk(b1,b3) *)
		  				let natoms1 = MEV.EnvMap.add b1 (Blk(b1,b3)) natoms in
		  				(* add the new chunk Chd(b3,fkl) *)
		  				(* create features of sviL *)
				      let fk_svl = ref [] in
				        begin
				         List.iter (fun fk ->
				             begin
				               (Mman_options.Self.debug ~level:2 "MSH:Add feature '%s' for 'id:%d'@."
				                  (get_fname fk) b3);
				               fk_svl := !fk_svl @ [(Mman_svar.sv_mk_feat ~svid:0 (Some(b3)) fk)]
				             end)        
				           (get_chunk_features ())
				        end 
				        ;
				      (* add the new svars in senv, new pair(nseid',peid) *)
      				let nseid2, svl = MEV.senv_addsvar nseid1 !fk_svl in 
      				let fkls = MEV.senv_get_feats b3 nseid2 in
		  				let natoms2 = MEV.EnvMap.add b3 (Chd(b3,fkls)) natoms1 in
		  				(* create a new svar of b4 *)
		  				let nseid3, b4 = senv_add_saddr nseid2 in		  				 
		  				(* add the new Blk(b3,b2) *)
		  				let natoms3 = MEV.EnvMap.add b4 (Blk(b4,b2)) natoms2 in
		  				(* add points to: sviL -> b3 *)
		  				let nstack = MEV.EnvMap.add sviL b3 g.stack in
		  				let nmls = g.mls @ [(b3);(b4)] in
		  				(* g2 *)
		  				let g2_1 = ACmp(ASUP, ALval(ASVar(b2)), e) in
		  				let g2_2 = ACmp(ASUP,e, ALval(ASVar(b2))) in 				 
		  				let c1 = ACmp(AEQ,e, ALval(ASVar(b3))) in 
		  				let c2_1 = ACmp(ASUP, ALval(ASVar(b2)),ALval(ASVar(a))) in
		  				let c2_2 = ACmp(ASUP, ALval(ASVar(b2)),ALval(ASVar(b3))) in
		  				let c3_1 = ACmp(ASUP, ALval(ASVar(b4)),ALval(ASVar(b3))) in
		  				let c3_2 = ACmp(ASUP, ALval(ASVar(b2)),ALval(ASVar(b4))) in 
		  				let ng2 = { stack = nstack; 
		  							        mls = nmls; 
                          atoms = natoms3 
                        } in

		  				(* case1 *)
		  				let g1 = ACmp(ASUP, e, ALval(ASVar(b2))) in

		  				(* case2 *)
		  				let g2 = ACmp(AEQ,e, ALval(ASVar(b2))) in 
		  				(*let nstack3 = MEV.EnvMap.add sviL b2 g.stack in
		  				let ng3 = { stack = nstack3; mls = g.mls; atoms = g.atoms } in
						  *)
		  				res := [(some_of nseid3 ng2, [], [g2_1; g2_2; c1; c2_1; c2_2; c3_1; c3_2]);
		  						(some_of seid ng1, [], [g1]);
		  						];
		  				
		  				Mman_options.Self.debug ~level:1 "New shape:%a...@." 
		  				pretty (some_of nseid3 ng2);

		  			| _ -> Mman_options.Self.failure "Unexpected feature@.";
	  				;
	  				!res
	  			end
      end

  | ASbrk e ->  
        begin  
          match e with 
          | ACst sz ->  
                      if (Integer.is_zero sz) 
                      then 
                          (* Todo: sviL := _hli*)
                            mutate_hli_assgin seid g sviL e
                      else if (Integer.gt sz Integer.zero ) 
                      then 
                            mutate_hli_init seid g sviL e
                      else if (Integer.lt sz Integer.zero ) 
                      then 
                            [] 
                      else []
          | _ -> [] 
        end 
  
  | ABinOp(ASub, _ , _ ) ->
        []

  | _ ->
      let _ = Mman_options.Self.failure "Unsupported assign@."
      in  
      [(some_of seid g, [], [])]

and mutate_stack (_seid: MEV.t) (g: meminfo)
  (sviL: Mman_svar.svid) (sviR: Mman_svar.svid)
  : meminfo 
  =
  let _ = Mman_options.Self.debug ~level:2 "MSH:mutate_stack@." in 
  { stack = MEV.EnvMap.add sviL sviR g.stack;
    mls = g.mls;
    atoms = g.atoms 
  }
          
and mutate_hli (seid: MEV.t) (g: meminfo)
  : (t * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
  =
  let hli = Mman_svar.svid_hli in  
  (* create a new address *)  
  let nseid, nvi = senv_add_saddr seid in  
  (* change the stack elements pointing to hli to point to nvi *)
  let nstack = (MEV.EnvMap.map (fun d -> (if d = hli then nvi else d)) g.stack)
  in 
  (* add a block starting from this location until hli *)
  (* and add it in the memory list *)
  let ng = { stack = nstack;
             mls = g.mls @[nvi];
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

and mutate_hli_init (seid: MEV.t) (g: meminfo)
  (sviL: Mman_svar.svid) (eoff: Mman_asyn.aexp)
  : (t * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
  =
    begin 
      let hli = Mman_svar.svid_hli in     
      (* change the stack elements pointing to hli to point to sviL *)
      let nstack = (MEV.EnvMap.map (fun d -> (if d = hli then sviL else d)) g.stack)
      in 
      let nnstack = MEV.EnvMap.add sviL sviL nstack in 

      (* create features of sviL *)
      let fk_svl = ref [] in
       begin
         List.iter (fun fk ->
             begin
               (Mman_options.Self.debug ~level:2 "MSH:Add feature '%s' for 'id:%d'@."
                  (get_fname fk) sviL);
               fk_svl := !fk_svl @ [(Mman_svar.sv_mk_feat ~svid:0 (Some(sviL)) fk)]
             end)        
           (get_chunk_features ())
       end 
      ;
      (* add the new svars in senv, new pair(nseid',peid) *)
      let seid', svl = MEV.senv_addsvar seid !fk_svl in 

      (* create symbolic variable *)
      let sei, nvi = senv_add_saddr seid' in 

       (* get the features list of svil *)
      let fkls = MEV.senv_get_feats sviL sei in      
      let n_Chd = Chd(sviL, fkls) in 
      let n_Blk = Blk(nvi, Mman_svar.svid_hli) in 
      let n_at = MEV.EnvMap.add sviL n_Chd g.atoms in 
      let nn_at = MEV.EnvMap.add nvi n_Blk n_at in 
      (* add a block starting from this location until hli *)
      (* and add it in the memory list *)
      let ng = { stack = nnstack;
                 mls = g.mls @ [sviL; nvi];
                 atoms = nn_at
               }  
      in
      (* generate constraint nvi = hli updated by the assignment in data *)
      let nc = ACmp(AEQ, ALval(ASVar(nvi)), ALval(ASVar(Mman_svar.svid_hli)))
      in
      [((some_of sei ng), [nvi], [nc])]
    end 

and mutate_hli_assgin (seid: MEV.t) (g: meminfo)
  (sviL: Mman_svar.svid) (eoff: Mman_asyn.aexp)
  : (t * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
  =
  (* generate constraint nvi = hli updated by the assignment in data *)
  (*let nc = ACmp(AEQ, ALval(ASVar(sviL)), ALval(ASVar(Mman_svar.svid_hli)))
  in
   [((some_of seid g), [], [nc])]*)


  (* generate constraint nvi = hli updated by the assignment in data *)
  let nc = ACmp(AEQ, ALval(ASVar(sviL)), ALval(ASVar(Mman_svar.svid_hli)))
  in
  let hli = Mman_svar.svid_hli in 
  let nstack = MEV.EnvMap.add sviL hli g.stack in 
  let ng = { stack = nstack;
               mls = g.mls;
             atoms = g.atoms
               }  
      in
  [((some_of seid ng), [], [nc])]

(** Mutate sviL to a location hli + aexp. *)
and mutate_hli_offset (seid: MEV.t) (g: meminfo)
  (sviL: Mman_svar.svid) (eoff: Mman_asyn.aexp)
  : (t * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
  = 
  let hli = Mman_svar.svid_hli in
  (* Two cases: 
     a block starting from hli already exists or
     no block from hli
  *)
  let hliblk = (try MEV.EnvMap.find hli g.atoms with Not_found -> Emp) in
  match hliblk with
  | Emp -> (* no block *)
      (* create a new location *)
      let _ = Mman_options.Self.feedback "MSH:mutate hli offset:create a new location...@." in
      let nseid, nvi = senv_add_saddr seid in
      (* change the stack *)
      let nstack = MEV.EnvMap.add sviL nvi g.stack in
      (* add the block in atoms *)      
      let natoms = MEV.EnvMap.add hli (Blk(hli, nvi)) g.atoms in      
      (* constraint defining nvi *)
      let nc = ACmp(AEQ, ALval(ASVar(nvi)), ABinOp(AAdd, ALval(ASVar(hli)),eoff))
      in
      let ng = { stack = nstack; 
                 mls = g.mls @ [hli]; 
                atoms = natoms } 
      in 
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
      let nseid, nvi = senv_add_saddr seid in
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


let mutate_point (lv: Mman_asyn.alval) (e: Mman_asyn.aexp) (d: t)
: (t * (Mman_svar.svid list) * (Mman_asyn.aconstr list)) list
=[]

(**************************************************************************)
(** {2 Unfold} *)
(**************************************************************************)
    
(** Split the input memory list.
 *  The resulting lists are those before and after the svid given as parameter.
 *  mls => mls * x * mls
 *
*)
let rec split_mls svid mls 
  : Mman_svar.svid list * Mman_svar.svid list
  =
  match mls with
  | [] -> raise Not_found

  | e::l ->
    if e == svid then 
      [],l
    else let l1,l2 = split_mls svid l in
          (e::l1), l2


(** Unfold a chunk.
 *  the atom chk(a)[fl] is replaced by
 *  the atoms chd(a)[fl,DA_CDAT->b].blk(b,fl[DA_CNXT])
*)
let unfold_chk (svi: int) (sh:valinfo)
  : (valinfo * Mman_svar.svid list * Mman_asyn.aconstr list) list
  =
  match sh.mem with
  | Bot | Top -> [(sh,[],[])]
  
  | S(g) ->
    (* search svi in g.mls *)
    let mls1,mls2 =
      (try
         split_mls svi g.mls
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a chunk not in the memory list@."
         in [],[]
      )
    in
    (* search the atom *)
    let chka =
      (try
         MEV.EnvMap.find svi g.atoms
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a location with no atoms@."
         in Emp
      )
    in
    (* generate a new symbolic location for DA_CDAT and update the environment *)
    let seidnew, slnew =
      MEV.senv_addsvar sh.seid [(Mman_svar.sv_mk_svar ~svid:0 (SVPtr(SVInt)))]
    in
    (* get the svid from the new env *)
    let svidt =
      try (List.hd slnew).id with _ -> Mman_svar.svid_hli
    in
    let _ =
      Mman_options.Self.debug  ~level:1 "Create a new locations %d as cdat of %d@."
        svidt svi
    in
    (* get the id of the location limit of the chunk from features or the memory list *)
    let fl_old = (match chka with Chk(_,fl) -> fl | _ -> []) in
    let cnxid =
      (try List.assoc DA_CNXT fl_old
       with Not_found -> match mls2 with e::_ -> e | _ -> Mman_svar.svid_hli)
    in
    (* create new atoms chd and blk *)
    let chda = Chd(svi, (fl_old @ [(DA_CDAT,svidt)])) in
    let blka = Blk(svidt,cnxid) in
    (* create the new value by inserting the above location and atoms *)
    let newmls = mls1 @ [svidt] @ mls2 in
    let newatoms = MEV.EnvMap.add svidt blka (MEV.EnvMap.add svi chda g.atoms) in
    let newg = { stack=g.stack; mls=newmls; atoms=newatoms } in
    let newvalinfo = { seid = seidnew; mem = S(newg) } in
    (* generate the constraint svidt-seid=sizeof(HDR) *)
    let newconstr = ACmp(AEQ,
                         ABinOp(ASub, ALval(ASVar(svidt)), ALval(ASVar(svi))),
                         ACst(Integer.zero))
    in
    (* generate the result *)
    [(newvalinfo, [svidt], [newconstr])]


(* TODO
 * unfold 
 * cls(a,b)[w] => 
 *   1.chk(a,c) * cls(c,b)[w2] /\ [a].[w2] = w
 *   2.cls(a,c)[w1] * chk(c,d) * cls(d,b)[w2] /\ [w1].[c].[w2] = w 
 *   3.cls(a,c)[w1] * chk(c,d) /\ [w1].[c] = w 
 *   4.blk(a,b) => blk(a,c)*blk(c,b)
 *  
*)

(**
 ** split blk(sv1, sv2) => 
 **   blk(sv1, svn) * blk(svn,sv2) /\ sv1 < svn /\ svn < sv2
 **)
let unfold_blk (sv1:int) (sv2:int) (sh:valinfo)
  : (valinfo * Mman_svar.svid list * Mman_asyn.aconstr list) list
  = 
  match sh.mem with
  | Bot | Top -> [(sh,[],[])]

  | S(g) -> 
    let mls1,mls2 =
      (try
         split_mls sv1 g.mls
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a chunk not in the memory list@."
         in [],[]
      )
    in    
     (* search the atom blk(sv1,sv2)*)
    let blka =
      (try
         MEV.EnvMap.find sv1 g.atoms
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a location with no atoms@."
         in Emp
      )
    in
    (* generate a new symbolic location for middle node and dws and update the environment *)
    let seidnew, slnew =
      MEV.senv_addsvar sh.seid [(Mman_svar.sv_mk_svar ~svid:0 (SVPtr(SVChunk)))] (* TODO *)
    in
    let svnew =
      try (List.hd slnew).id with _ -> Mman_svar.svid_hli
    in 
    (* create new atoms cls(sv1, svnew) and cls(svnew, sv2) *)
    let blk1 = Blk(sv1, svnew) in
    let blk2 = Blk(svnew, sv2) in 
    let newmls = mls1 @ [svnew] @ mls2 in
    let newatoms = MEV.EnvMap.add sv1 blk1 (MEV.EnvMap.add svnew blk2 g.atoms) in
    let newg = { stack = g.stack; mls = newmls; atoms = newatoms } in
    let newvalinfo = { seid = seidnew; mem = S(newg) } in
    (* generate the constraint svnew > sv1  /\  sv2 > svnew *)
    let newconstr1 = ACmp(ASUP,ALval(ASVar(svnew)), ALval(ASVar(sv1))) 
    in
    let newconstr2 = ACmp(ASUP,ALval(ASVar(sv2)), ALval(ASVar(svnew))) 
    in
    (* generate the result *)
    [(newvalinfo, [svnew], [newconstr1;newconstr2])]



(** 
 ** decompose cls(sv1,sv2)[svw] => cls(sv1,svn)[w1] * cls(svn,sv2)[w2] 
 **)
let unfold_cls (sv1:int) (sv2:int) (svw:int) (sh:valinfo)
  : (valinfo * Mman_svar.svid list * Mman_asyn.aconstr list) list
  = 
  match sh.mem with
  | Bot | Top -> [(sh,[],[])]
  
  | S(g) -> 
    let mls1,mls2 =
      (try
         split_mls sv1 g.mls
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a chunk not in the memory list@."
         in [],[]
      )
    in    
    (* search the atom cls(sv1,sv2)[w1]*)
    let clsa =
      (try
         MEV.EnvMap.find sv1 g.atoms
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a location with no atoms@."
         in Emp
      )
    in
    (* generate a new symbolic location for middle node and dws and update the environment *)
    let seidnew, slnew =
      MEV.senv_addsvar sh.seid [(Mman_svar.sv_mk_svar ~svid:0 (SVChunk)); 
                                (Mman_svar.sv_mk_svar ~svid:0 (SVWord)); 
                                (Mman_svar.sv_mk_svar ~svid:0 (SVWord))]
    in
    let svnew =
      try (List.hd slnew).id with _ -> Mman_svar.svid_hli
    in
    let w1 =
      try (List.nth slnew 2).id with _ -> Mman_svar.svid_hli
    in
    let w2 =
      try (List.nth slnew 3).id with _ -> Mman_svar.svid_hli
    in
    let _ =
      Mman_options.Self.debug  ~level:1 "Create a new locations %d as middle node@."
      svnew
    in
     (* create new atoms cls(sv1, svnew) and cls(svnew, sv2) *)
    let cls1 = Cls(sv1, svnew, w1) in
    let cls2 = Cls(svnew, sv2, w2) in 
    let newmls = mls1 @ [svnew] @ mls2 in
    let newatoms = MEV.EnvMap.add sv1 cls1 (MEV.EnvMap.add svnew cls2 g.atoms) in
    let newg = { stack = g.stack; mls = newmls; atoms = newatoms } in
    let newvalinfo = { seid = seidnew; mem = S(newg) } in
    (* generate the constraint svw = w1.w2 ('.' is represented by '+' ) *)
    let newconstr = ACmp(AEQ,
                    ABinOp(AAdd, ALval(ASVar(w1)), ALval(ASVar(w2))),
                    ALval(ASVar(svw)))
    in
    (* generate the result *)
    [(newvalinfo, [svnew;w1;w2], [newconstr])]



(**
 ** uofold cls(sv1,sv2)[svw] => chk(sv1,fl(DA_CNXT)=svn) * cls(svn,sv2)[svw1] 
 **)
let unfold_cls_chk (sv1:int) (sv2:int) (svw:int) (sh:valinfo)
  : (valinfo * Mman_svar.svid list * Mman_asyn.aconstr list) list
  = 
  match sh.mem with
  | Bot | Top -> [(sh,[],[])]
  
  | S(g) -> 
    let mls1,mls2 =
      (try
         split_mls sv1 g.mls
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a chunk not in the memory list@."
         in [],[]
      )
    in    
    (* search the atom cls(sv1,sv2)[w1]*)
    let clsa =
      (try
         MEV.EnvMap.find sv1 g.atoms
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a location with no atoms@."
         in Emp
      )
    in
    (* generate a new symbolic variable for chunk node and dws and update the environment *)
    let seidnew, slnew =
        MEV.senv_addsvar sh.seid [(Mman_svar.sv_mk_svar ~svid:0 (SVChunk)); 
                                    (Mman_svar.sv_mk_svar ~svid:0 (SVWord))]
    in
    let svnew =
      try (List.hd slnew).id with _ -> Mman_svar.svid_hli
    in
    let nw =
      try (List.nth slnew 2).id with _ -> Mman_svar.svid_hli
    in  
    (* create new atoms chk(sv1, fl) and cls(svnew, sv2)[] *)
    let chk1 = Chk(sv1, [(DA_CNXT, svnew)]) in                        (* TODO: to intialize other fields *)
    let cls2 = Cls(svnew, sv2, nw) in 
    let newmls = mls1 @ [svnew] @ mls2 in
    let newatoms = MEV.EnvMap.add sv1 chk1 (MEV.EnvMap.add svnew cls2 g.atoms) in
    let newg = { stack = g.stack; mls = newmls; atoms = newatoms } in
    let newvalinfo = { seid = seidnew; mem = S(newg) } in
    (* generate the constraint svw = sv1.w2 ('.' is represented by '+' ) *)
    let newconstr = ACmp(AEQ,
                        ABinOp(AAdd, ALval(ASVar(sv1)), ALval(ASVar(nw))),
                        ALval(ASVar(svw)))
    in
    (* generate the result *)
    [(newvalinfo, [svnew;nw], [newconstr])]


 

(**
 **decompose fls(sv1,sv2)[svw] => fls(sv1,svn)[w1] * fls(svn,sv2)[w2] 
 **)
let unfold_fls (sv1:int) (sv2:int) (svw:int) (sh:valinfo)
  : (valinfo * Mman_svar.svid list * Mman_asyn.aconstr list) list
  = 
  match sh.mem with
  | Bot | Top -> [(sh,[],[])]
  
  | S(g) -> 
    let mls1,mls2 =
      (try
         split_mls sv1 g.mls
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a chunk not in the memory list@."
         in [],[]
      )
    in    
    (* search the atom cls(sv1,sv2)[w1]*)
    let flsa =
      (try
         MEV.EnvMap.find sv1 g.atoms
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a location with no atoms@."
         in Emp
      )
    in
    (* generate a new symbolic location for middle node and dws and update the environment *)
    let seidnew, slnew =
      MEV.senv_addsvar sh.seid [(Mman_svar.sv_mk_svar ~svid:0 (SVChunk)); 
                                (Mman_svar.sv_mk_svar ~svid:0 (SVWord)); 
                                (Mman_svar.sv_mk_svar ~svid:0 (SVWord)) ]
    in
    let svnew =
      try (List.hd slnew).id with _ -> Mman_svar.svid_hli
    in
    let w1 =
      try (List.nth slnew 2).id with _ -> Mman_svar.svid_hli
    in
    let w2 =
      try (List.nth slnew 3).id with _ -> Mman_svar.svid_hli
    in
    let _ =
      Mman_options.Self.debug  ~level:1 "Create a new locations %d as middle node@."
      svnew
    in
     (* create new atoms cls(sv1, svnew) and cls(svnew, sv2) *)
    let fls1 = Cls(sv1, svnew, w1) in
    let fls2 = Cls(svnew, sv2, w2) in 
    let newmls = mls1 @ [svnew] @ mls2 in
    let newatoms = MEV.EnvMap.add sv1 fls1 (MEV.EnvMap.add svnew fls2 g.atoms) in
    let newg = { stack = g.stack; mls = newmls; atoms = newatoms } in
    let newvalinfo = { seid = seidnew; mem = S(newg) } in
    (* generate the constraint svw = w1.w2 ('.' is represented by '+' ) *)
    let newconstr = ACmp(AEQ,
                    ABinOp(AAdd, ALval(ASVar(w1)), ALval(ASVar(w2))),
                    ALval(ASVar(svw)))
    in
    (* generate the result *)
    [(newvalinfo, [svnew;w1;w2], [newconstr])]



(**
 ** uofold fls(sv1,sv2)[svw] => fck(sv1,svn) * cls(svn,sv2)[svw1] 
 **)
let unfold_fls_fck (sv1:int) (sv2:int) (svw:int) (sh:valinfo)
  : (valinfo * Mman_svar.svid list * Mman_asyn.aconstr list) list
  = 
  match sh.mem with
  | Bot | Top -> [(sh,[],[])]
  
  | S(g) -> 
    let mls1,mls2 =
      (try
         split_mls sv1 g.mls
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a chunk not in the memory list@."
         in [],[]
      )
    in    
    (* search the atom cls(sv1,sv2)[w1]*)
    let flsa =
      (try
         MEV.EnvMap.find sv1 g.atoms
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a location with no atoms@."
         in Emp
      )
    in
    (* generate a new symbolic variable for chunk node and dws and update the environment *)
    let seidnew, slnew =
        MEV.senv_addsvar sh.seid [(Mman_svar.sv_mk_svar ~svid:0 (SVChunk)); 
                                    (Mman_svar.sv_mk_svar ~svid:0 (SVWord))]
    in
    let svnew =
      try (List.hd slnew).id with _ -> Mman_svar.svid_hli
    in
    let nw =
      try (List.nth slnew 2).id with _ -> Mman_svar.svid_hli
    in  
    (* create new atoms chk(sv1, fl) and cls(svnew, sv2)[] *)
    let fck1 = Fck(sv1, svnew) in                        (* TODO: to intialize other fields *)
    let cls2 = Cls(svnew, sv2, nw) in 
    let newmls = mls1 @ [svnew] @ mls2 in
    let newatoms = MEV.EnvMap.add sv1 fck1 (MEV.EnvMap.add svnew cls2 g.atoms) in
    let newg = { stack = g.stack; mls = newmls; atoms = newatoms } in
    let newvalinfo = { seid = seidnew; mem = S(newg) } in
    (* generate the constraint svw = sv1.w2 ('.' is represented by '+' ) *)
    let newconstr = ACmp(AEQ,
                        ABinOp(AAdd, ALval(ASVar(sv1)), ALval(ASVar(nw))),
                        ALval(ASVar(svw)))
    in
    (* generate the result *)
    [(newvalinfo, [svnew;nw], [newconstr])]


(**
 ** unfold based on which feature kind
 **)
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
                | Emp | Blk _  | Chd _ | Chk _ -> []                      (* do not need to unfold *) 
                | Cls (svi1,svi2,sviw) ->  unfold_cls svi1 svi2 sviw sh   (* unfold cls *)
             (* | Fck | Fls ->[] (error case) *)
              end 
          
          | DA_FNXT | DA_FPRV -> 
              begin 
                match at with
                | Emp | Blk _  | Chd _ | Chk _ | Cls _  -> []             (* error case  *) 
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

 


(* TODO
 * fold 
 * cls(a,b)[w_1] * cls(b,c)[w_2]=> cls(a,c)[W] /\ W = w_1.w_2 /\ constaints  
 * blk(a,b)*blk(b,c) => blk(a,c)
 *  
*)

(**
 ** fold blk(sv1,sv2)*blk(sv2,sv3) = > blk(sv1,sv3) /\ sv3>sv1
 **)
 (*
let fold_blk (sv1:int) (sv2:int) (sv3:int) (sh:valinfo)
  : (valinfo * Mman_svar.svid list * Mman_asyn.aconstr list) list
  = 
  match sh.mem with
  | Bot | Top -> [(sh,[],[])]

  | S(g) -> 
    let mls1,mls2 =
      (try
         split_mls sv2 g.mls
       with Not_found ->
         let _ = Mman_options.Self.failure "fold a chunk not in the memory list@."
         in [],[]
      )
    in    
     (* search the atom blk(sv1,sv2) and blk(sv2,sv3) *)
    let blka =
      (try
         MEV.EnvMap.find sv1 g.atoms
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a location with no atoms@."
         in Emp
      )
    in
    let blkb =
      (try
         MEV.EnvMap.find sv2 g.atoms
       with Not_found ->
         let _ = Mman_options.Self.failure "Unfold a location with no atoms@."
         in Emp
      )
    in

    (* generate a new symbolic location for middle node and dws and update the environment *)
    (* create new atoms Blk(sv1, sv3) *)
    let blk1 = Blk(sv1, sv3) in 
    let newmls = mls1 @ mls2 in
    let newatoms = MEV.EnvMap.add svnew blk1 g.atoms in
    let newg = { stack = g.stack; mls = newmls; atoms = newatoms } in
    let newvalinfo = { seid = seidnew; mem = S(newg) } in
    (* generate the constraint sv3 > sv1  /\ *)
    let newconstr = ACmp(ASUP,ALval(ASVar(sv3)), ALval(ASVar(sv1))) 
    in 
    (* generate the result *)
    [(newvalinfo, [], [newconstr])]
*)
 



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

