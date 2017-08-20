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

(** This module includes utilities for the program environment.
  A program environement is the set of symbolic locations in
  the program stack and heap.
  Recall that a program variable is a label for a location in the
  program stack (including the base frame for global variables).
*)


open Cil_types
open Mman_svar

(* ********************************************************************** *)
(* {1 Types} *)
(* ********************************************************************** *)

(** Indexed symbolic variables.
 *
 * Maps variables identifiers to their record.
 * Invariant: (program|feature|word) variables with same record
 *            have different identifiers.
*)
module VidMap = Datatype.Int.Map;;
type vidmap = Svar.t VidMap.t


(** Mapping between symbolic variable identifiers.
 *
 * Used to unify or compare environments and values.
*)
module EnvMap = Datatype.Int.Map
type envmap = Mman_svar.svid EnvMap.t


(** External type of the environment.
 *  Gets the integer index of the environment in the {!envs} table.
*)
type t = int


(** Program environments.
 *
 * They are fixed by for each statement of the program and given
 * by the stack domain.
 * A variable local to a function (including function parameters)
 * apears only once.
*)
type penvinfo = {
  mutable pe_id: int;
  (** A unique integer identifier. Used in the map of environments.
      {!Mman_env.peid_new} gets a new/unused one. *)

  mutable pe_ucnt: int;
  (** A reference counter. Used to manage the set of environments. *)

  mutable pvars: vidmap;
  (** A set of symbolic variables including:
      - locations in th stack provided by the program variables
      - ghost locations in the heap (data segment)
      - ghost locations used in the analysis ({!null}, {!hole})

   *)
}

(** Symbolic environments.
 *
 * They collect all the symbolic variables (locations) in
 * the stack and the heap of the program.
 *)
type senvinfo = {
  mutable se_id: int;
  (** A unique indentifier. Used in the map of environments.
      {!Mman_env.seid_new} gets a new/unsed one. *)

  mutable se_ucnt: int;
  (** A reference counter. Used to manage the set of environments. *)

  mutable peid: int;
  (** The program environment on which is based this symbolic environment. *)

  mutable svars: vidmap;
  (** The set of symbolic variables (locations) in the heap.
    Some of them may be garbage, i.e., not reachable from the stack.
    Their identifiers shall be > program variables identifiers.
  *)
}

(* ********************************************************************** *)
(* {2 Operations on auxiliarly types } *)
(* ********************************************************************** *)

(**
 * Prints VidMap.t values
*)
let pp_vidmap fmt (m: vidmap) =
  begin
    Format.fprintf fmt "\n{";
    VidMap.iter
      (fun i svi ->
           Format.fprintf fmt "\t%a%s"
             Mman_svar.Svar.pretty svi
             (if i mod 5 = 4 then ";\n" else ";")
      )
      m;
    Format.fprintf fmt "}"
  end

(**
 * Compare maps using comparison of svinfo
*)
let compare_vidmap m1 m2 =
  (VidMap.compare (fun sv1 sv2 -> Mman_svar.Svar.compare sv1 sv2) m1 m2)

let equal_vidmap m1 m2 =
  (VidMap.equal (fun sv1 sv2 -> Mman_svar.Svar.equal sv1 sv2) m1 m2)

(**
 * Get the max key
*)
let max_key_vidmap (m: vidmap) =
  if (VidMap.is_empty m)
  then 0
  else fst (VidMap.max_binding m)

(**
 * Copy a map
*)
let copy_vidmap (m: vidmap)
  : vidmap
  =
  if (VidMap.is_empty m)
  then m
  else fst (VidMap.partition (fun _ _ -> true) m)

(**
 * Searches the value in the codomain of m
*)
let comem_vidmap (m: vidmap) (sv: Mman_svar.Svar.t)
  : Mman_svar.Svar.t
  =
  let svmap =
    VidMap.filter (fun _i sv' -> Mman_svar.Svar.equal sv sv') m
  in
  if VidMap.is_empty svmap then
    raise Not_found
  else let svlist = VidMap.bindings svmap in
    let _ =
      if List.length svlist > 1 then
        (Mman_options.Self.debug ~level:1 "Internal invariant on vidmap broken")
    in
    snd (List.hd svlist)

(**
 * Builds a map from the list of pairs.
*)
let of_list_vidmap (l: (int * Mman_svar.Svar.t) list)
  : vidmap
  =
  let m = ref VidMap.empty in
  begin
    List.iter (fun (k,svi) -> m := VidMap.add k svi !m) l;
    !m
  end

(* ********************************************************************** *)
(* {3 Datatype of program environments } *)
(* ********************************************************************** *)

let penv_compare e1 e2 =
  compare_vidmap e1.pvars e2.pvars

let penv_equal e1 e2 =
  equal_vidmap e1.pvars e2.pvars

let penv_print fmt (e: penvinfo) =
  Format.fprintf fmt "penv_%d = (%d,[%d] %a )"
    e.pe_id
    e.pe_ucnt
    (VidMap.cardinal e.pvars)
    pp_vidmap e.pvars

let penv_new ~eid =
  { pe_id = eid;
    pe_ucnt = 0;
    pvars = VidMap.empty }

(**
 * Module used to create a state of program environments
*)
module PEnv = struct
  let pretty_ref = ref penv_print
  include Datatype.Make_with_collections
      (struct
        type t = penvinfo
        let name = "PEnv"
        let reprs = [ penv_new ~eid:(-1) ]
        let compare e1 e2 = penv_compare e1 e2
        let hash e1 = e1.pe_id
        let rehash = Datatype.identity
        let equal e1 e2 = penv_equal e1 e2
        let copy = Datatype.undefined
        let pretty fmt s = !pretty_ref fmt s
        let varname _ = "penv"
        let structural_descr = Structural_descr.t_abstract
        let internal_pretty_code _ fmt e =
          Format.fprintf fmt "%d" e.pe_id
        let mem_project = Datatype.never_any_project
      end)
  let id e = e.pe_id
  let pretty_pe_id fmt e = Format.pp_print_int fmt e.pe_id
end

(**
 * Set of existing program environments.
 * It is indexed by environment identifier.
 *
 * Created as a vector because it is fixed at the start of the analysis.
*)
let penvs : penvinfo Vector.t = Vector.create()

(**
 * Map of statements to program environments.
*)
module Stmt2penv = Cil_datatype.Stmt.Map.Make(Datatype.Int)
let stmt2penv : Stmt2penv.t ref = ref Cil_datatype.Stmt.Map.empty

(* Empty environment index *)
let empty_id : int = -1

(* Get in use flag *)
let penv_inuse e = e.pe_ucnt > 0

(* Set environment in use *)
let penv_newuse (e: penvinfo) = { e with pe_ucnt = e.pe_ucnt + 1 }
let penv_freeuse (e: penvinfo) =
  if e.pe_ucnt > 0 then { e with pe_ucnt = e.pe_ucnt - 1 }
  else e

let peid_new () = Vector.size penvs

(**
 * Get environment at position ei
*)
let penv_get (eid: int)
  : penvinfo
  =
  (*let _ = Mman_options.Self.debug ~level:2
          "ENV:penv_get @." in *)
  Vector.get penvs eid

(**
 * Get list of variables in ei
*)
let penv_vars (eid: int)
  : (int * Mman_svar.Svar.t) list
  =
  let e = penv_get eid in
  VidMap.bindings e.pvars

(**
 * Get list of variables in ei
*)
let penv_vars2 (eid:int )
: Mman_svar.Svar.t list
=
  begin
    let svl = ref [] in
    let pe = penv_get eid in
    VidMap.iter
    (
      fun i sv ->
      svl := !svl@[(sv)]
    )
    pe.pvars
    ;
    !svl
  end


(**
 * Get number of variables in ei
*)
let penv_size (eid: int)
  : int
  =
  let e = penv_get eid in
  VidMap.cardinal e.pvars

(**
 * Find a variable in the given environment
*)
let penv_getvar (eid: int) (sv: Mman_svar.Svar.t)
  : Mman_svar.Svar.t
  =
  try
    let e = penv_get eid in
    comem_vidmap e.pvars sv
  with Not_found ->
    Mman_svar.sv_mk_hole

(**
 * Find the variable information with index svid
*)
let penv_getvinfo (eid: int) (svid: int)
  : Mman_svar.Svar.t
  =
  try
    let e = penv_get eid in
    VidMap.find svid e.pvars
  with Not_found -> Mman_svar.sv_mk_hole


let penv_getvtyp ei svid =
  let svi = penv_getvinfo ei svid in

  (*let _ = Mman_options.Self.debug ~level:1 "ENV:penv_getvtyp, vi:%a@."
          Mman_svar.Svar.pretty svi
        in *)
  svi.Mman_svar.typ



(* get the features of a chunk *)
let penv_get_feats svid eid
:(Mman_dabs.feature_kind * Mman_svar.svid) list
=
let featl = ref [] in
let e = penv_get eid in
begin
  VidMap.iter
      (fun i svi ->
           match svi.Mman_svar.kind with
              | Feature(Some(optvid), fk) ->
                    if optvid == svid then
                      (*let _ = Mman_options.Self.debug ~level:2 "ENV:its feature (%d,%s)@."
                              optvid (Mman_dabs.get_fname fk)
                      in*)
                      featl := !featl @[(fk,i)]
              |_->()
      )
    e.pvars
    ;
    !featl
end




(* ********************************************************************** *)
(* {4 Operations on global environments } *)
(* ********************************************************************** *)

(**
 * Find a registered environment with the same set of variables
*)
let penv_find pe =
  let ri = ref (-1) in
  begin
    Vector.iteri
      (fun i ei -> if PEnv.compare pe ei == 0 then ri := i; ())
      penvs
    ;
    if !ri == -1 then
      raise Not_found
    else
      !ri
  end

(**
 * Add the environment @p e and return its unique identifier
 *)
let penv_add e =
  let ei =
    (try
       penv_find e
     with Not_found ->
       (* first use of this environment, set its index number *)
       Vector.addi penvs {e with pe_id = (peid_new ())})
  in
  let enew = penv_newuse (Vector.get penvs ei) in
  begin
    Vector.set penvs ei enew;
    ei
  end

(**
 * Duplicate an environment and return its copy
 *   new copy not inuse
 *)
let penv_copy ei =
  try
    let e = Vector.get penvs ei in
    { pe_id = -1;
      pe_ucnt = 0;
      pvars = e.pvars
    }
  with Not_found ->
    List.hd PEnv.reprs

(**
 * Unify ei and ej and
 * return the mappings from old to new identifiers for the symbolic vars.
*)
let penv_unify ei ej
  : int * int array * int array
  =
  let _ = (Mman_options.Self.feedback "MEV:Unify penvs %d, %d@." ei ej) in
  if (ei > 0)&&(ej < 0)
  then
    	let mi = ref (Array.init (penv_size ei) (fun i -> i)) in
  		let mj = ref (Array.init (0) (fun i -> i)) in
  		ei, !mi,!mj
  else
  let mapi = ref (Array.init (penv_size ei) (fun i -> i)) in
  let mapj = ref (Array.init (penv_size ej) (fun i -> i)) in
  if ei == ej then
    ei, !mapi, !mapj
  else
    (* merge the two sets of variables to the least common list *)
    let penvi = penv_get ei in
    let penvj = penv_get ej in
    let ssv1 = penvi.pvars in
    let ssv2 = penvj.pvars in
    let ssv = ref (copy_vidmap ssv1) in
    let lid = ref (1 + (max_key_vidmap !ssv)) in
    begin
      (* first add program variables *)
      VidMap.iter
        (fun svid sv ->
           (match sv.kind with
            | PVar(_) ->
                (try
                  let _ = comem_vidmap !ssv sv in 
                          () (* found, do nothing *)
                 with Not_found ->
                  begin
                    Mman_options.Self.debug ~level:2 "old pvar_%d(%a)/%d -> pvar_%d@."
                      sv.id
                      Mman_svar.Svar.pretty sv
                      (Array.length !mapj) !lid;
                    ssv := VidMap.add (!lid) { sv with id = !lid } !ssv;
                    Array.set (!mapj) svid !lid;
                    lid := !lid + 1
                  end
                )
            | _ -> ()
           )
        )
        ssv2;
      (* then add their locations if any and update references *)
      VidMap.iter
        (fun svid sv ->
           let refsvid = Mman_svar.sv_getref sv in
           if refsvid >= 0 then
             let nsvid = Array.get (!mapj) refsvid in
             if nsvid != refsvid then
               (* referenced variable has changed of id *)
               let nkind = (match sv.kind with
                   | Loc(_) -> Loc(nsvid)
                   | Feature(Some(_),fk) -> Feature(Some(nsvid),fk)
                   | Word(_) -> Word(nsvid)
                   | _ -> sv.kind
                 ) in
               let nsv = { id = !lid; kind = nkind; typ = sv.typ } in
               begin
                 Mman_options.Self.debug ~level:2 "old lvar_%d/%d -> lvar_%d@."
                   sv.id (Array.length !mapj) !lid;
                 ssv := VidMap.add (!lid) nsv !ssv;
                 Array.set (!mapj) svid !lid;
                 lid := !lid + 1
               end
        )
        ssv2;
      (* change variables' names to distinguish 
       * variables with same name but in different types, 
       * e.g., int ___retres, void* __retres. *)


      let npe = { pe_id = (-1); pe_ucnt = 0; pvars = !ssv } in
      let npeid = penv_add npe in
      (*let _ = (Mman_options.Self.debug ~level:2 "unified %a@."
                 penv_print (penv_get npeid)) in*)
      npeid, !mapi, !mapj
  end


(**
 * Size of the environment as number of variables
*)
let penv_size ei =
  try
    let e = penv_get ei in
    (VidMap.cardinal e.pvars)
  with Not_found -> 0

(**
 * Print the registered environments
*)
let pretty_penvs fmt i =
  Vector.iteri (fun j e ->
      Format.fprintf fmt "%a@."
        PEnv.pretty e)
    penvs

(**
 * Get the environment of a statement
*)
let penv_of_stmt s =
  try
    Cil_datatype.Stmt.Map.find s (!stmt2penv)
  with Not_found -> -1


(**
 * Print maping of stmt to envs
*)
let pretty_stmt2penv fmt i =
  Cil_datatype.Stmt.Map.iter
    (fun s j ->
       Format.fprintf fmt "(%d) s_%a (@%a) -> e_%d@."
         i
         Cil_datatype.Stmt.pretty_sid s
         Cil_datatype.Location.pretty_line (Cil_datatype.Stmt.loc s)
         j)
    !stmt2penv

(**
 * Initialise the program environments with the program variables
 * for each statement
*)
let penvs_init_globals () =
  (*let _ = Mman_options.Self.feedback "ENV:penvs_init_globals...@." in *)
  if Vector.size penvs >= 1 then
    ()
  else
  (* Add the ghost program variables: null, hole, Hli, Hst *)
  let gvlist = ref (Mman_svar.sv_mk_gghost ()) in
  let svid = ref (List.length !gvlist) in
  begin
    Vector.clear penvs;
    Globals.Vars.iter_in_file_order
      (fun vinfo _ ->
         (*if (vinfo.vstorage == Cil_types.Static) ||
            (Mman_dabs.is_chunk_struct vinfo.Cil_types.vtype) ||
            (Mman_dabs.is_chunk_ptr vinfo.Cil_types.vtype) ||
            (Cil.isVoidPtrType vinfo.vtype) ||
            (vinfo.vstorage == Cil_types.NoStorage)*)

        if (vinfo.vstorage == Cil_types.Static) ||
            (Mman_dabs.is_chunk_struct vinfo.Cil_types.vtype) ||
            (Mman_dabs.is_chunk_ptr vinfo.Cil_types.vtype)
            (* TODO: to consider pointer type:void * *)
         then
          (* adds vinfo program variable and
           * its location on stack, if used in the program *)
          let lastid, svl = sv_add_pvar vinfo !svid in
          begin
            svid := lastid + 1;
            gvlist := List.append (!gvlist) svl
          end
      );
    (* Set the environment of globals at position 0 *)
    Vector.add penvs
      { pe_id = 0;
        pe_ucnt = 1;
        pvars = of_list_vidmap !gvlist }
  end

(**
 * Initialise program environments for each statement from
 * - global variables
 * - function definition
 * Fill both penvs and stmt2penv
*)
let rec penvs_init_gfun () =
  Globals.Functions.iter
    (fun kf -> (try
                  let _ = (Kernel_function.get_definition kf) in
                  penvs_init_from_kfun kf
                with Kernel_function.No_Definition | Not_found -> ())
    )

and penvs_init_from_kfun kf =
  (* copy the global vars *)
  let _ = Mman_options.Self.debug ~level:2 "Initialize penv for '%a'@."
      Kernel_function.pretty kf in
  let lvars = ref (copy_vidmap (Vector.get penvs 0).pvars) in
  let svid = ref (1 + (max_key_vidmap (Vector.get penvs 0).pvars)) in
  (* copy the formals, if any *)
  let _ = List.iter
  	 (fun vi ->
      let idn, lv = sv_add_pvar vi !svid in
      begin
        svid := idn + 1; (* normally increments svid, no address taken on formals *)
        List.iter (fun (id, svi) -> lvars := VidMap.add id svi !lvars) lv
      end) (Kernel_function.get_formals kf)
  in
  (* copy the locals (including the return __retres) *)
  let _ = List.iter (fun vi ->
      let idn, lv = sv_add_pvar vi !svid in
      begin
        svid := idn + 1; (* address may be taken on locals *)
        List.iter (fun (id, svi) -> lvars := VidMap.add id svi !lvars) lv
      end) (Kernel_function.get_locals kf)
  in
  (* build the environment of this function *)
  let kfenv = { pe_id = peid_new ();
                pe_ucnt = 1;
                pvars = !lvars
              } in
  (* add the final env to envs *)
  let eid = penv_add kfenv in
  (* iterate over the statements (in deep)
   *   add the mapping stmt -> penvid to stmt2env
  *)
  List.iter
    (fun s ->
       stmt2penv := Cil_datatype.Stmt.Map.add s eid !stmt2penv)
    (try
       (Kernel_function.get_definition kf).sallstmts
     (* {!Cfg.computeCFGInfo} called by !{Db.Value} *)
     with Kernel_function.No_Definition | Not_found -> []
    )



(**
 * Add a list of new variables and build a new environment
 * Return the identifier of the new environment and
 *        the list of varinfo added (successfully if vi != hole)
*)
let penv_addsvar (eid: t) (svl: Mman_svar.Svar.t list)
  : t * (Mman_svar.Svar.t list)
  =
  let pe = penv_get eid in
  let pe_size = penv_size eid in
  let maxkey = pe_size -1  in
  let pvars = ref (copy_vidmap pe.pvars) in
  let rkey = ref (maxkey + 1) in
  let nsvl = List.map (fun svi ->
      (let force_add = fun sv ->
          let nsv = { sv with Mman_svar.id = !rkey } in
          begin
            pvars := VidMap.add !rkey nsv !pvars;
            rkey := !rkey + 1;
            nsv
          end
       in
       match svi.Mman_svar.kind with
       | Mman_svar.SVar -> force_add svi
       | _ ->
           try
             let _ = comem_vidmap pe.pvars svi
             in begin
               (Mman_options.Self.failure "Existing symbolic variable");
               Mman_svar.sv_mk_hole
             end
           with Not_found -> force_add svi
      ))
      svl
  in

  (penv_add { pe with pvars = !pvars }), nsvl



(**
 * Initialise the environment tables
 * Shall be called once.
*)
let penvs_init () =
  begin
    (*Mman_options.Self.debug ~level:2 "ENV:Initialize global environment...@.";*)
    penvs_init_globals ();
    penvs_init_gfun ();
    (* print computed mappings *)
    Mman_options.Self.debug ~level:1 "stmt2penvs:\n%a@."
      pretty_stmt2penv 1 ;
    Mman_options.Self.debug ~level:1 "penvs:\n%a@."
      pretty_penvs 1
  end


(* ********************************************************************** *)
(* {5 Basic operations on symbolic environments } *)
(* ********************************************************************** *)

let senv_compare e1 e2 =
  let cmp_peid = e1.peid - e2.peid in
  if cmp_peid != 0 then cmp_peid
  else
    let cmp_vars = compare_vidmap e1.svars e2.svars in
    cmp_vars

let senv_equal e1 e2 =
  (e1.peid == e2.peid) &&
  (equal_vidmap e1.svars e2.svars)

let senv_print fmt (e: senvinfo) =
  Format.fprintf fmt "senv_%d = @(%d,penv_%d,@.[%d] \n senv:%a @. penv_%d:%a @)"
    e.se_id
    e.se_ucnt
    e.peid
    (VidMap.cardinal e.svars)
    pp_vidmap e.svars
    e.peid
    pp_vidmap ((penv_get e.peid).pvars)

let senv_new ~eid =
  { se_id = eid;
    se_ucnt = 0;
    peid = 0;
    svars = VidMap.empty }

(**
 * Module used to create a state of program environments
*)
module SEnv = struct
  let pretty_ref = ref senv_print
  include Datatype.Make_with_collections
      (struct
        type t = senvinfo
        let name = "SEnv"
        let reprs = [ senv_new ~eid:(-1) ]
        let compare e1 e2 = senv_compare e1 e2
        let hash e1 = e1.se_id
        let rehash = Datatype.identity
        let equal e1 e2 = senv_equal e1 e2
        let copy = Datatype.undefined
        let pretty fmt s = !pretty_ref fmt s
        let varname _ = "senv"
        let structural_descr = Structural_descr.t_abstract
        let internal_pretty_code _ fmt e =
          Format.fprintf fmt "%d" e.se_id
        let mem_project = Datatype.never_any_project
      end)
  let id e = e.se_id
  let pretty_se_id fmt e = Format.pp_print_int fmt e.se_id
end

(**
 * Set of existing symbolic environments.
 * It is indexed by environment identifier.
 *
 * Created as a map because it may change during the analysis.
*)
module SEnvMap = FCMap.Make(Datatype.Int)

let senvs : senvinfo SEnvMap.t ref = ref SEnvMap.empty

(* ********************************************************************** *)
(* {6 Getters and setters of senvinfo } *)
(* ********************************************************************** *)

(* Get in use flag *)
let senv_inuse e = e.se_ucnt > 0

(* Set environment in use *)
let senv_newuse (e: senvinfo) = { e with se_ucnt = e.se_ucnt + 1 }
let senv_freeuse (e: senvinfo) =
  if e.se_ucnt > 0 then { e with se_ucnt = e.se_ucnt - 1 }
  else e

(* Symbolic identifiers are given in order *)
let seid_new () = (SEnvMap.cardinal (!senvs))

(**
 * Get environment at position ei
*)
let senv_get eid =
  (*let _ = Mman_options.Self.debug ~level:2
          "ENV:senv_get@." in*)
  SEnvMap.find eid (!senvs)

(**
 * Find a registered environment with same features (not same se_id)
*)
let senv_find se =
  let senvl = SEnvMap.filter (fun _k si -> (senv_equal se si))
      (!senvs) in
  let sz = SEnvMap.cardinal senvl in
  if sz == 0 then
    raise Not_found
  else if sz == 1 then
    fst (SEnvMap.choose senvl)
  else begin
    Mman_options.Self.failure "Bad symbolic environments@.";
    fst (SEnvMap.choose senvl)
  end

(**
 * Add the environment @p e and return its unique identifier
*)
let senv_add se =
  let nseid = seid_new () in
  try
    senv_find se
  with Not_found ->
    begin
      senvs := SEnvMap.add nseid {se with se_id = nseid } (!senvs);
      nseid
    end

(**
 * Get list of all symbolic variables in ei
*)
let senv_vars ei =
  let se = senv_get ei in
  (penv_vars se.peid)@(VidMap.bindings se.svars)


(**
 * Get list of symbolic variables and program variables in senv(peid,seid)
*)
let senv_vars2 (eid:int )
  :Mman_svar.Svar.t list
  =
  begin
    let _ = Mman_options.Self.debug ~level:2
          "ENV:get list of symbolic variables and program variables eid: %d,@." eid in
    let svl = ref [] in
    let se = senv_get eid in
    let pe = penv_get se.peid in
    VidMap.iter
    (
      fun i sv ->
        svl := !svl@[(sv)]
    )
    pe.pvars
    ;
    VidMap.iter
    (
      fun i sv ->
        svl := !svl@[(sv)]
    )
    se.svars
    ;
    !svl
  end


(**
 * Find a variable in the given environment
*)
let senv_getvar (eid: int) (sv: Mman_svar.Svar.t)
  : Mman_svar.Svar.t
  =
  let se = senv_get eid in
  try
    comem_vidmap se.svars sv
  with Not_found ->
    penv_getvar se.peid sv


(**
 * Check a variable is in the given environment or not
*)
let senv_var_isin (eid: int) (sv: Mman_svar.Svar.t)
  : Mman_svar.Svar.t
  =
  let se = senv_get eid in
  try
    comem_vidmap se.svars sv
  with Not_found ->
    Mman_svar.sv_mk_hole

    (*penv_getvar se.peid sv*)


(**
 * Find the symbolic variable information with index svid
*)
let senv_getvinfo (eid: int) (svid: int)
  : Mman_svar.Svar.t
  =
  let se = senv_get eid in
  try
    VidMap.find svid se.svars
  with Not_found ->
    penv_getvinfo se.peid svid

(**
 * Get the type of a symbolic variable
 *)
let senv_getvtyp ei svid =
  let svi = senv_getvinfo ei svid in
  svi.Mman_svar.typ



(**
 * Add a list of new variables and build a new environment
 * id starts from 0, not extended after penv
*)
let senv_addsvar (eid: t) (svl: Mman_svar.Svar.t list)
  : t * (Mman_svar.Svar.t list)
  =
  let se = senv_get eid in
  let pe_size = penv_size se.peid in
  (*let maxkey = (VidMap.cardinal se.svars) + pe_size -1  in*)
  let maxkey = (VidMap.cardinal se.svars) + 30 in (* set the max number of program variables*)
  let svars = ref (copy_vidmap se.svars) in
  let rkey = ref (maxkey ) in
  let nsvl =
    List.map
    (fun svi ->
      (let force_add =
        fun sv ->
          let nsv = { sv with Mman_svar.id = !rkey } in
          begin
            svars := VidMap.add !rkey nsv !svars;
            rkey := !rkey + 1;
            nsv
          end
       in
       match svi.Mman_svar.kind with
       | Mman_svar.SVar -> force_add svi
       | _ ->
           try
             let _ = comem_vidmap se.svars svi
             in begin
               (Mman_options.Self.failure "Existing symbolic variable");
               Mman_svar.sv_mk_hole
             end
           with Not_found -> force_add svi
    ))
    svl
  in
  (*senvs := SEnvMap.remove eid (!senvs);*)
  (senv_add { se with svars = !svars }), nsvl


(**
 * add a list of new variables but do not build a new environment
 * Return the identifier of the new environment and
 *        the list of varinfo added (successfully if vi != hole)
*)
(*let senv_addsvar_2 (eid: t) (svl: Mman_svar.Svar.t list)
  =
  begin 
  let se = senv_get eid in
  let pe_size = penv_size se.peid in
  let maxkey = (VidMap.cardinal se.svars) + pe_size -1  in
  let svars = ref (copy_vidmap se.svars) in
  let rkey = ref (maxkey + 1) in
    List.map
    (fun svi ->
      (let force_add =
        fun sv ->
          let nsv = { sv with Mman_svar.id = !rkey } in
          begin
            svars := VidMap.add !rkey nsv !svars;
            rkey := !rkey + 1;
            nsv
          end
       in
       match svi.Mman_svar.kind with
       | Mman_svar.SVar -> force_add svi
       | _ ->
           try
             let _ = comem_vidmap se.svars svi
             in begin
               (Mman_options.Self.failure "Existing symbolic variable");
               Mman_svar.sv_mk_hole
             end
           with Not_found -> force_add svi
    ))
    svl
    ;
    senvs := SEnvMap.add eid {se with svars = !svars} (!senvs);
    eid
    end *)

(* initialise the symbolic environment,
 * id starts from a fixed number
 *)
let senvs_init (peid:int)
    : t
    =
    begin
      let penv = penv_get peid in
      let seid = seid_new () in
      Mman_options.Self.debug ~level:1 "MEV:initialise symbolic environment, seid:%d" seid ;
      (*let psvars = penv_vars peid in *)
      let senvnew =
          { se_id = seid;
            se_ucnt = 0;
            peid = peid;
            svars = VidMap.empty
            (* svars = penv.pvars *)
            }
      in
      (* add the senv *)
      senvs := SEnvMap.add seid senvnew (!senvs);
      seid

      (*let sei, ls = senv_addsvar seid Mman_svar.Svar.reprs  in
      sei*)
    end



(* ********************************************************************** *)
(* {7 Operations on symbolic environments } *)
(* ********************************************************************** *)

(**
 * Size of the environment as number of program resp. symbolic variables
*)
let senv_size ei =
  try
    let se = senv_get ei in
    (penv_size se.peid), (VidMap.cardinal se.svars)
  with Not_found -> 0, 0

(**
 * Unify the two environments
*)
let senv_unify ei ej
  : int * int array * int array
  =
  let _ = (Mman_options.Self.feedback "Unify senvs %d, %d@." ei ej) in
  if ei == ej then ei, (Array.of_list []), (Array.of_list [])
  else
    let sei = senv_get ei in
    let sej = senv_get ej in
    (* get the program environment which unifies both envs *)
    let peij, mapi, mapj = penv_unify sei.peid sej.peid in
    peij, mapi, mapj (* TODO *)

(* TODO:
   peij, mapi, mapj = penv_unify sei.peid sej.peid
   npstack = Array.create (penv_size peij)
              (fun i -> if i < (penv_size pei) then (pstacki i) else -1)
   svarsij = sei.svars
   szj1, szj2 = senv_size ej
   svmapj = Array.create (szj1 + szj2) (fun i -> if i < szj1 then mapj(i) else -1)
   -- start by SAddr, because features and Words depends on it
   Svar.Set.iter
      (fun svi -> if svi.kind == SAddr then
         let pv = sej.pstack-1(svi.id) in
         if pv == -1 then
           (* address not the content of some var, add it *)
           svarsij += svi with id = newid
           svmapij(svi.id) = newid
           incr newid
         else
           (* address the content of some var check if conflict *)
           let npv = mapj(pv) in
           if npstack(npv) != -1 then
              -- do not add
              svmapj(svi.id) = -npstack(npv)
           else
              -- do add new svi in nsvi
              npstack(npv) = nsvi
              svmapj(svi.id) = nsvi
      )
      sej.svars;
   -- get the remaining depending on mapping of SAddr
   Svar.Set.iter
      (fun svi -> let refsvi = ... in
         if svmapj(refsvi) < 0 then nothing
         else
           -- do add
      )
      sej.svars;

 *)

(**
 * Print the registered environments
*)
let pretty_senvs fmt =
  SEnvMap.iter (fun k se ->
      Format.fprintf fmt "se_%d -> %a@."
        k
        SEnv.pretty se)
    !senvs


(**
 * Compute a mapping between two symbolic environments using
 * the stacks mapping program variables to heap locations.
 * The mapping contains only locations in heap, i.e.,
 * symbolic variables not in the domain of the stack.
*)
let senv_embed (ei0: t) (s0: envmap) (ei1: t) (s1: envmap)
  : envmap
  =
  let sinfo0 = senv_get ei0 in
  let sinfo1 = senv_get ei1 in


  if (sinfo0.peid != sinfo1.peid) ||
     ((VidMap.cardinal sinfo0.svars) != (VidMap.cardinal sinfo1.svars))
  then
    let _ = Mman_options.Self.feedback "MEV:senv_embed, different peid...@." in
    EnvMap.empty
  else
    try
      let hmap01 = ref EnvMap.empty in
      let pesz = penv_size sinfo0.peid in
      begin
        (* start from program variables *)
        EnvMap.iter
        (fun pv l0 ->
            (
             let l1 = EnvMap.find pv s1 in
             if (l0 >= pesz) && (l1 >= pesz)
              (* both program variables are mapped to locations in heap *)
             then (
                if (not (EnvMap.mem l0 !hmap01))
                then begin
                  hmap01 := EnvMap.add l0 l1 !hmap01
                end
                else if (EnvMap.find l0 !hmap01) == l1 then
                  ()
                else
                  raise Not_found
             )
             else if l0 == l1
             then (* may be true only if both are global locations *)
                  (
                      hmap01 := EnvMap.add l0 l0 !hmap01  (* TODO *)
                  )
             else
                  raise Not_found
            )
        )
        s0
        ;

        (* both symbolic env are empty *)
        (*if (VidMap.cardinal  sinfo0.svars == 0) &&
           (VidMap.cardinal  sinfo1.svars == 0)
        then
            hmap01 := s0

        (* go through symbolic variables to update the mapping *)
        else
         ( *)
          VidMap.iter
          (
            fun _svid sv0 ->
                (
                  let sv1 = (
                      match sv0.kind with
                     | Loc(rid0) ->
                         let rid1 = EnvMap.find rid0 !hmap01 in
                         senv_getvar ei1 (Mman_svar.sv_mk_loc rid1 sv0.typ)

                     | Feature(Some(rid0), fk) ->
                        let rid1 = EnvMap.find rid0 !hmap01 in
                         senv_getvar ei1 (Mman_svar.sv_mk_feat (Some(rid1)) fk)

                     | Feature(None, fk) ->
                         senv_getvar ei1 (Mman_svar.sv_mk_feat None fk)

                     | Word(rid0) ->
                         let rid1 = EnvMap.find rid0 !hmap01 in
                         senv_getvar ei1 (Mman_svar.sv_mk_word rid1)

                     | _ ->
                          sv0
                    )
                  in
                 if not (EnvMap.mem sv0.id !hmap01)
                 then
                 begin
                   hmap01 := EnvMap.add sv0.id sv1.id !hmap01
                 end
              )
            )
            sinfo0.svars;
        !hmap01
      end
    with Not_found ->
        (*let _ = Mman_options.Self.feedback "MEV:senv_embed, not found ...@." in*)
        EnvMap.empty

(* get the features of a chunk *)
let senv_get_feats svid eid
  :(Mman_dabs.feature_kind * Mman_svar.svid) list
  =
  let featl = ref [] in
  let e = senv_get eid in
  begin
  VidMap.iter
      (fun i svi ->
           match svi.Mman_svar.kind with
              | Feature(Some(optvid), fk) ->
                    if optvid == svid then
                      (*let _ = Mman_options.Self.debug ~level:2 "ENV:its feature (%d,%s)@."
                              optvid (Mman_dabs.get_fname fk)
                      in*)
                      featl := !featl @[(fk,i)]
              |_->   ()
      )
    e.svars
    ;
    !featl
end

(* get the features of a chunk *)
let senv_get_feat svid eid fk
  :Mman_svar.Svar.t
  =
  let feat = ref [] in
  let e = senv_get eid in
  let pe = penv_get e.peid in
  begin
    VidMap.iter
      (fun i svi ->
           match svi.Mman_svar.kind with
              | Feature(Some(optvid), fki) ->
                    if (optvid == svid) &&
                       (fk == fki)
                    then
                      feat := [(svi)]
              |_->   ()
      )
    e.svars
    ;
    if (!feat == []) then
      (
      VidMap.iter
        (fun i svi ->
           match svi.Mman_svar.kind with
              | Feature(Some(optvid), fki) ->
                    if (optvid == svid) &&
                       (fk == fki)
                    then
                      feat := [(svi)]
              |_->   ()
        )
        pe.pvars
      )
    ;
    if !feat != [] then
    	List.hd !feat
	else
		Mman_svar.sv_mk_hole (* it is error *)
end



(* change peid of senv, and add new pair(seid, peid) in to
 * envs table, and return the new seid
 *)
let senv_change_pe (seid:int) (newpeid:int)
: int
=
  begin
    let _ = (Mman_options.Self.debug ~level:2 "MEV:senv_change_pe, old senv:(seid:%d,peid:%d)@."
            seid
            (senv_get seid).peid)
    in
    let se = senv_get seid in
    (*let nseid = senv_new () in *)
    let new_se =
      {
        se_id = seid;
        (*se_id = newpeid;*)
        se_ucnt = se.se_ucnt;
        peid = newpeid;
        svars = se.svars;
      }
   in
   (* add the new senv paris(seid, peid) *)
   let nseid = senv_add new_se in
   let _ = (Mman_options.Self.debug ~level:1 "MEV:senv_change_pe, new senv:(seid:%d,peid:%d) @."
              nseid
              newpeid)
   in
   nseid
 end
