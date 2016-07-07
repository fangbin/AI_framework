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

(** Provides utilities for manipulating symbolic variables
    including program variables *)

open Cil_types
open Mman_dabs
    
(* ********************************************************************** *)
(* {1 Types} *)
(* ********************************************************************** *)

type svtyp = 
    SVInt   (* int *)
  | SVAddr  (* pointer of type != cty *)
  | SVChunk (* pointer of type == cty *)
  | SVWord  (* sequence of chunks *)
  | SVOth   (* internal use only *)

type svid = int
  
type svkind =

  | (* a program variable *)
    PVar of Cil_types.varinfo ref
        
  | (* a symbolic address *)
    SAddr 
        
  | (* a symbolic feature variable 
     * Feat(None,fkind) is a global feature
     * Feat(Some(id),fkind) is a chunk feature
    *)
    Feature of svid option * Mman_dabs.feature_kind

  | (* a location (storing address) of a program variable *)
    Loc of svid

  | (* a word variable  attached to some symbolic address denoting
     * the starting chunk of the word
    *)
    Word of svid

  | Hst (* the start of the data segment of this process, constant location *)
    
  | Hli (* the end of the data segment of this process, updated by sbrk *)

  | Null (* the symbolic address for 0 *)

  | Hole (* a symbolic variable useful for building abstract expressions
          * and for functon call transfer *)
    
(**
 * Symbolic variables
 *
 * Each variable has a unique integer identifier !{svid} and 
 * a type !{svtype}.
*)
type svarinfo = {
  mutable id: svid;
  (** An integer identifier, unique in the environment. 
      Used to build environments as maps from ids to svinfo. *)

  mutable kind: svkind;
  (** Kind of this symbolic variable: program, address, feature, word,... *)
  
  mutable typ: svtyp;
  (** The type of this variable. Class of the program variable, if any *)
  
}

(* ********************************************************************** *)
(* {2 Operations} *)
(* ********************************************************************** *)

let sv_compare_type sv1 sv2 =
  match sv1.typ, sv2.typ with
  | SVInt, SVInt | SVAddr, SVAddr | SVChunk, SVChunk | SVWord, SVWord
  | SVOth, SVOth  -> 0
  | SVInt, _ -> -1
  | SVAddr, SVInt -> 1
  | SVAddr, _ -> -1
  | SVChunk, SVInt | SVChunk, SVAddr -> 1
  | SVChunk, _ -> -1
  | SVWord, SVInt | SVWord, SVAddr | SVWord, SVChunk -> 1
  | SVWord, _ -> -1
  | SVOth, _ -> 1

let sv_compare sv1 sv2 =
  (* let cmp_typ = sv_compare_type sv1 sv2 in
  if cmp_typ != 0 then cmp_typ
     else *)
  match sv1.kind, sv2.kind with
  (* order used Null < Hole < Hli < Hsta < Pvar < Loc < (SAddr < Feature) < Word *)
  | Null, Null -> 0
  | Null, _ -> -1
  | _, Null -> 1

  | Hole, Hole -> 0
  | Hole, _ -> -1
  | _, Hole -> 1

  | Hli, Hli -> 0
  | Hli, _ -> -1
  | _, Hli -> 1

  | Hst, Hst -> 0
  | Hst, _ -> -1
  | _, Hst -> 1
    
  | PVar vi1, PVar vi2 ->
      (* globals and locals before formal arguments *)
      (if (!vi1).vformal == (!vi2.vformal) then
         String.compare (!vi1).vname (!vi2).vname
       else if (!vi1).vformal && not (!vi2.vformal) then 1 else -1
      )
  | PVar _vi, _ -> -1
  | _, PVar _vi -> 1

  | Loc svid1, Loc svid2 -> svid1 - svid2
  | Loc _, _ -> -1
  | _, Loc _ -> 1

  | SAddr, SAddr -> sv1.id - sv2.id 
  | SAddr, _ -> -1
  | _, SAddr -> 1

  (* push words before featurs because they are associatd with SAddr *)
  | Word svid1, Word svid2 -> svid1 - svid2
  | Word _, _ -> -1
  | _, Word _ -> 1
      
  | Feature(None,fk1), Feature(None,fk2) ->
      Datatype.Int.compare
        (Mman_dabs.featurekind2int fk1)
        (Mman_dabs.featurekind2int fk2)
  | Feature(None,_), Feature(Some(_),_) -> -1
  | Feature(Some(_),_), Feature(None,_) -> 1
  | Feature(Some(svid1),fk1), Feature(Some(svid2),fk2) ->
      let cmp_svid = svid1 - svid2 in
      if cmp_svid != 0 then cmp_svid
      else
        Datatype.Int.compare
          (Mman_dabs.featurekind2int fk1)
          (Mman_dabs.featurekind2int fk2)
 
let sv_equal sv1 sv2 =
  if sv1.typ <> sv2.typ then false
  else
    match sv1.kind, sv2.kind with
    | Null, Null | Hole, Hole | Hli, Hli | Hst, Hst -> true
    | PVar vi1, PVar vi2 ->
        Cil_datatype.Varinfo.equal !vi1 !vi2
    | Loc svi1, Loc svi2 ->
        svi1 = svi2
    | SAddr, SAddr ->
        let cmp = sv1.id - sv2.id in
        cmp = 0
        
    | Word svi1, Word svi2 ->
        svi1 = svi2

    | Feature(None, fk1), Feature(None, fk2) -> fk1 = fk2

    | Feature(Some(svi1),fk1), Feature(Some(svi2),fk2) ->
        (svi1 = svi2) && (fk1 = fk2)

    | _, _ -> false


let sv_getref sv =
  match sv.kind with
  | Loc(i) | Feature(Some(i),_) | Word(i) -> i
  | _ -> -1


let sv_null_name = "__null"
let sv_hole_name = "__hole"
let sv_hli_name = "__hli"
let sv_hst_name = "__hst"
  
(** 
 * Return the string printing of this variable
 * Keep it without environment
*) 
let sv_tostring (sv:svarinfo) =
  match sv.kind with
  | Null -> sv_null_name
  | Hole -> sv_hole_name
  | Hli -> sv_hli_name
  | Hst -> sv_hst_name

  | PVar vi ->
      (if (!vi).vformal then "f"^(string_of_int (!vi).vid)^"_"
       else "")^(!vi).vname
                  
  | SAddr ->
      "__a"^(string_of_int sv.id)
            
  | Feature(None, fk) ->
      "__"^(Mman_dabs.get_fname fk)

  | Feature(Some(vid), fk) ->
      let fname = (Mman_dabs.get_fname fk) in
      "c"^(string_of_int vid)^"__"^fname (* TODO: change in better way *)
      
  | Loc vid ->
      "__l"^(string_of_int vid)

  | Word vid ->
      "__w"^(string_of_int vid)
      
let sv_print fmt sv =
  let str = sv_tostring sv in
  Format.fprintf fmt "(%d)%s" sv.id str
 
let svid_null = 0

let sv_mk_null =
  { id = svid_null;
    kind = Null;
    typ = SVAddr
  }

let svid_hole = 1

let sv_mk_hole =
  { id = svid_hole;
    kind = Hole;
    typ = SVOth
  }

let svid_hli = 2

let sv_mk_hli =
  { id = svid_hli;
    kind = Hli;
    typ = SVAddr
  }

let svid_hst = 3

let sv_mk_hst =
  { id = svid_hst;
    kind = Hst;
    typ = SVAddr
  }

module Svar = struct
  let pretty_ref = ref sv_print
  include Datatype.Make_with_collections
      (struct
        type t = svarinfo
        let name = "Svar"
        let reprs =
          [ sv_mk_null; sv_mk_hole; sv_mk_hli; sv_mk_hst ]
        let compare sv1 sv2 = sv_compare sv1 sv2
        let hash sv1 = sv1.id
        let rehash = Datatype.identity
        let equal sv1 sv2 = sv_equal sv1 sv2
        let copy = Datatype.identity
        let pretty fmt s = !pretty_ref fmt s
        let varname _ = "sv"
        let structural_descr = Structural_descr.t_abstract
        let internal_pretty_code _ fmt sv = sv_print fmt sv
        let mem_project = Datatype.never_any_project
      end)
  let id sv = sv.id
  let pretty_svid fmt sv = Format.pp_print_int fmt sv.id
end

(**
 * Get the class of types from a !{Cil_types.varinfo}
*)
let svtype vinfo =
  let isChunk =
    Cil_datatype.Typ.equal
      !(Mman_dabs.dabs).cty vinfo.Cil_types.vtype in
  match vinfo.vtype with
  | TInt _ -> SVInt
  | TPtr _ -> (if isChunk then SVChunk else SVAddr)
  | _ -> SVOth
    
(**
 * Create a new symbolic variable of identifier svid for
 * the program variable vinfo. 
 *
 * If vinfo has taken its address
 * then create a pure symbolic address variable which reference to program var.
 * 
 * Return the last created index and the list of symbolic variables created.
*)
let sv_mk_var ?(svid=0) vinfo =
  { id = svid;
    kind = PVar(ref vinfo);
    typ = (svtype vinfo)
  }

let sv_mk_saddr ?(svid=0) aty =
  { id = svid;
    kind = SAddr;
    typ = aty
  }
  
let sv_mk_loc ?(svid=0) vid =
  { id = svid;
    kind = Loc(vid);
    typ = SVAddr (* TODO: depends of the type of vinfo *)
  }
  
let sv_mk_feat ?(svid=0) optvid fk =
  let fty = match fk with
    | Mman_dabs.DA_CAL | Mman_dabs.DA_CSZ
    | Mman_dabs.DA_CFF | Mman_dabs.DA_CPF -> SVInt
    | _ -> SVChunk
  in
  { id = svid;
    kind = Feature(optvid, fk);
    typ = fty
  }
  
let sv_mk_word ?(svid=0) vid =
  { id = svid;
    kind = Word(vid);
    typ = SVWord
  }

let sv_mk_gghost () =
  [(svid_null, sv_mk_null);
   (svid_hole, sv_mk_hole);
   (svid_hli, sv_mk_hli);
   (svid_hst, sv_mk_hst)]

let sv_add_pvar vinfo svid =
  let lid = ref svid in (* next index used *)
  let svl = ref [] in (* list of variables *)
  if not (vinfo.vreferenced) &&
     (String.compare vinfo.vname sv_hli_name != 0) then
    !lid-1, !svl
  else
    begin
      (* add the program variable *)
      svl := !svl @ [(svid, sv_mk_var ~svid:svid vinfo)];
      (* if address taken, add var with its location *)
      (if vinfo.vaddrof then
         begin
           lid := !lid + 1;
           svl := !svl @  [(!lid, sv_mk_loc ~svid:(!lid) svid)]
         end
      );
      (Mman_options.Self.debug ~level:2
         "Add '%a' of type %a (aka %a)@."
         Printer.pp_varinfo vinfo
         Printer.pp_typ vinfo.vtype
         Printer.pp_typ (Cil.unrollTypeDeep vinfo.vtype)
      );
      !lid, !svl
    end

    
(* ********************************************************************** *)
(* {3 Getters } *)
(* ********************************************************************** *)

let isPtrType (t: svtyp) =
  match t with
  | SVAddr | SVChunk -> true
  | _ -> false
