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

(** {1 Data abstraction utilities} *)

open Cil_types
    
(* ********************************************************************** *)
(** {2 Types} *)
(* ********************************************************************** *)
    
(** Features of the abstraction *)
type feature_kind =
  | DA_CTY         (** type of the ADDRESS of the chunk start *)
  | DA_CAL         (** alignment of addresses for chunk start *)
  | DA_CBE         (** start of the chunk list = memory region managed *)
  | DA_CEN         (** end = last chunk of the chunk list *)
  | DA_FBE         (** start of the free list *)
  | DA_FEN         (** end of the free list *)
  | DA_CSZ         (** total size of chunk in bytes *)
  | DA_CNXT        (** next chunk *)
  | DA_CPRV        (** previous chunk *)
  | DA_CDAT        (** start of the user block *)
  | DA_FNXT        (** next free chunk *)
  | DA_FPRV        (** previous free chunk *)
  | DA_CFF         (** free flag of the current chunk *)
  | DA_CPF         (** free flag of the previous chunk *)
  | DA_OTHER       (** NOT USED *)


(** Strings used to specify and print these features *)
let feature_names = [
  (DA_CTY,  "cty");
  (DA_CAL,  "cal");
  (DA_CBE,  "cbe");
  (DA_CEN,  "cen");
  (DA_FBE,  "fbe");
  (DA_FEN,  "fen");
  (DA_CSZ,  "csz");
  (DA_CNXT, "cn");
  (DA_CPRV, "cp");
  (DA_CDAT, "cdt");
  (DA_FNXT, "fn");
  (DA_FPRV, "fp");
  (DA_CFF,  "cf");
  (DA_CPF,  "cpf")
]

(** Enumerate methods *)
type method_kind =
  | DA_MINIT
  | DA_MALLOC
  | DA_MFREE
  | DA_MREALLOC

(** Strings used to specify methods o the interface *)
let method_names = [
  (DA_MINIT,    "minit");
  (DA_MALLOC,   "malloc");
  (DA_MFREE,    "minit");
  (DA_MREALLOC, "mrealoc");
]

(** Stored abstraction *)
type dabs_ty = {
  (** Header type informations, it gives the minimal alignment 
   *  of chunk start address 
  *)
  mutable cty: Cil_types.typ;
  
  (** Feature DA_CAL, additional congruence property of chunk sizes *)
  mutable align: int;
  
  (** Definition of abstract features in the data abstraction *)
  mutable abs_term: (Cil_types.logic_var option * Cil_types.term) array;
  
  (** Definition of the methods of the interface *)
  mutable meth_name: string array;
}

(* ********************************************************************** *)
(** {2 Globals} *)
(* ********************************************************************** *)

(** Error raised while reading and checking features abstraction *)
exception ErrorDataAbs of string


(** Debug info *)
let dabs_dkey = Mman_options.Self.register_category "mman:dabs"
    
(** Data abstraction used *)
let dummy_term = List.hd Cil_datatype.Term.reprs
let dabs : dabs_ty ref =
  ref { cty = Cil.voidType;
        align = 1;
        abs_term = (Array.make 14 (None, dummy_term));
        meth_name = (Array.make 4 "none");
      }
    

(* ********************************************************************** *)
(** {2 Queries} *)
(* ********************************************************************** *)
    
let int2featurekind (f:int) : feature_kind =
  if f <= 0 || f >= 14 then DA_OTHER
  else
    (fst (List.nth feature_names f))
    
let featurekind2int (f:feature_kind) : int =
  match f with
  | DA_CTY -> 0
  | DA_CAL -> 1
  | DA_CBE -> 2
  | DA_CEN -> 3
  | DA_FBE -> 4
  | DA_FEN -> 5
  | DA_CSZ -> 6
  | DA_CNXT -> 7
  | DA_CPRV -> 8
  | DA_CDAT -> 9
  | DA_FNXT -> 10
  | DA_FPRV -> 11
  | DA_CFF -> 12
  | DA_CPF -> 13
  | DA_OTHER -> 14
    
let get_feature (fname:string) : feature_kind =
  let fk = ref DA_OTHER in
  let check_name = (fun kn ->
      if (String.compare (snd kn) fname) == 0
      then fk := (fst kn)
      else ())
  in (
    List.iter check_name feature_names;
    !fk)
  
let get_fname (fk: feature_kind) : string =
  List.assoc fk feature_names
    
let is_feature (fk:feature_kind) (s:string) =
  (String.compare (List.assoc fk feature_names) s) == 0
  
let logic_utils_drop_at (t:Cil_types.term) =
  match t.term_node with
  | Tat(t',_) -> t'
  | _ -> t
    
let get_feature_term (fk:feature_kind) 
  : (Cil_types.logic_var option * Cil_types.term) =
  Array.get (!dabs).abs_term (featurekind2int fk) 
    
let is_active_feature (fk:feature_kind) : bool =
  let _,t = get_feature_term fk in 
  (t != dummy_term)
  
let get_active_features () : feature_kind list =
  let rs = ref [] in
  begin
    List.iter (fun fkn -> if is_active_feature (fst fkn) then 
                  rs := (!rs) @ [(fst fkn)]
              )
      feature_names;
    !rs
  end
  
let is_chunk_feature (fk:feature_kind) : bool =
  match fk with
  | DA_CTY | DA_CAL | DA_CBE | DA_CEN | DA_FBE | DA_FEN | DA_OTHER -> false
  | _ -> is_active_feature fk
           
let get_chunk_features () : feature_kind list =
  let rs = ref [] in
  begin
    List.iter (fun fkn -> if is_chunk_feature (fst fkn) then
                  rs := (!rs) @ [(fst fkn)]
              )
      feature_names;
    !rs
  end
  

 let is_chunk_struct (ty: Cil_types.typ) : bool =
   if !dabs.cty == Cil.voidType
   then false
   else (* it is already unrolled *)
     match !dabs.cty with
     | TPtr(TComp (_,_,_) as sty,_) ->
         (Cil_datatype.Typ.equal sty ty)
     | _ -> false
     
 let is_chunk_ptr (ty: Cil_types.typ) : bool =
   if !dabs.cty == Cil.voidType
   then false
   else Cil_datatype.Typ.equal !dabs.cty ty
 
 

(* ********************************************************************** *)
(** {2 Mapping of fields to features} *)
(* ********************************************************************** *)
  
(** Module for the map from {!Cil_datatype.fieldinfo} to features identifiers *) 
module Finfo2feat = Cil_datatype.Fieldinfo.Map.Make(Datatype.Int)
    
(** Type for map from fields to features *)
let finfo2feat = ref Cil_datatype.Fieldinfo.Map.empty
    
(** Add to {!finfo2feat} the fields in the sub-term {fterm} in
 *  the definition of {feati}.
*)
let rec get_feature_field feati fterm isPtr =
  match fterm.Cil_types.term_node with
  | TLval(TMem(_), TField(fi,_)) ->
      let fl = try Cil_datatype.Fieldinfo.Map.find fi (!finfo2feat) 
        with Not_found -> []
      in if
        (List.mem feati fl) (* field already mapped on fk *)
        || ((Cil.isPointerType fi.ftype) != isPtr) (* field and feature of different types *)
      then
        ()
      else
        finfo2feat := Cil_datatype.Fieldinfo.Map.add fi (feati::fl) (!finfo2feat)
            
  | TUnOp(_,t) | TCastE(_,t) | TCoerce(t,_) | TLogic_coerce(_,t)
    ->
      begin
        Mman_options.Self.debug ~level:2 ~dkey:dabs_dkey "Term UnOp %a:"
          Printer.pp_term fterm;
        get_feature_field feati t isPtr
      end
      
  | TBinOp(_,t1,t2) -> 
      begin
        Mman_options.Self.debug ~level:2 ~dkey:dabs_dkey "Term BinOp %a:"
          Printer.pp_term fterm;
        get_feature_field feati t1 isPtr; 
        get_feature_field feati t2 isPtr
      end
      
  | TLval (TVar(_), _)
    ->
      begin
        Mman_options.Self.debug ~level:2 ~dkey:dabs_dkey "Term TLval(TVar,_)";
        ()
      end
      
  | TConst _ 
  | TSizeOf _ | TAlignOf _ | TAlignOfE _
  | Tnull 
    -> ()
       
  | _ ->
      begin
        Mman_options.Self.debug ~level:2 ~dkey:dabs_dkey "Term %a: "
          Printer.pp_term fterm;
        Mman_options.Self.not_yet_implemented "logic term in abstraction"
      end
      
let get_field_feature fi =
  begin
    if Cil_datatype.Fieldinfo.Map.is_empty (!finfo2feat) then
      (* build the map by going through each feature *)
      Array.iteri (fun i b ->
          let deft = (snd b) in
          begin
            Mman_options.Self.debug ~level:2 ~dkey:dabs_dkey
              "Feature %s, term %a@: "
              (snd (List.nth feature_names i))
              Printer.pp_term deft;
            get_feature_field i deft 
              (Logic_utils.isLogicPointerType deft.term_type)
          end)
        (!dabs).abs_term
    ;
    try
      Cil_datatype.Fieldinfo.Map.find fi (!finfo2feat)
    with Not_found -> []
  end
  
(** The index of the method {mk} in {!dabs} *)
let get_method_idx (mk:method_kind) : int =
  match mk with
  | DA_MINIT -> 0
  | DA_MALLOC -> 1
  | DA_MFREE -> 2
  | DA_MREALLOC -> 3
    
let get_method_name (mk:method_kind) : string =
  let i = get_method_idx mk in
  Array.get (!dabs).meth_name i
    

(* ********************************************************************** *)
(** {2 Parsing and typechecking} *)
(* ********************************************************************** *)
    
(** Check the logic type {lty} to be a pointer to a C struct type *)
let is_valid_cty lty =
  begin
    if ((!dabs).cty != Cil.voidType)
    then
      (Mman_options.Self.warning
         "cty already defined, re-definition ignored!";
       false)
    else if (List.length lty.lt_params) > 0
    then
      (Mman_options.Self.failure
         "cty is a parameterized type, not a C type!";
       false)
    else match lty.lt_def with
      | Some (LTsyn (Ctype cty)) ->
          (
            (* Get the original type by removing the alias *)
            let dty = Cil.unrollTypeDeep cty in
            match dty with
            | TPtr(TComp (_,_,_) as sty,_) -> 
                begin
                  Mman_options.Self.debug ~level:2 ~dkey:dabs_dkey 
                    "cty is a pointer to a C union or structure!";
                  !dabs.cty  <- dty;
                  !dabs.align <- Cil.bytesAlignOf sty;
                  true
                end
            | _ ->
                begin
                  Mman_options.Self.failure "cty is not a C pointer type!";
                  false
                end
          )
      | _ -> 
          begin
            Mman_options.Self.failure "cty is not a C type!";
            false
          end
  end
  
(** Check that the profile of {fname} corresponds to a feature *)
let is_fun_const (fname:string) (lf:logic_info) : bool =
  if (lf.l_tparams != []) ||
     (lf.l_profile != [])
  then begin
    Mman_options.Self.error "%s feature not a constant@." fname;
    false
  end else
    true
      
(** Check that feature {fname} has one argument of type {!dabs.cty} *)
let is_fun_cty (fname:string) (lf:logic_info) : bool =
  if (lf.l_tparams != [])
  then
    (Mman_options.Self.error "%s feature can not be parameterized@." fname;
     false)
  else
    match lf.l_profile with
    | [lv] ->
        (match lv.lv_type with
         | Ltype(lti,_) ->
             if is_feature DA_CTY lti.lt_name then
               true
             else 
               (Mman_options.Self.error
                  "%s feature parameter of bad type@." fname;
                false)
         | _ -> (Mman_options.Self.error
                   "%s feature parameter of bad type@." fname;
                 false)
        )
    | _ -> (Mman_options.Self.error
              "%s feature shall have one cty argument@." fname;
            false)


(** Check that the result of feature {fname} is of type given by {p} *)
let is_fun_result (fname:string) (lf:logic_info)
    (p:Cil_types.logic_type -> bool)
  : bool =
  match lf.l_type with
  | Some(ty) ->
      if not (p ty) then
        (Mman_options.Self.error "%s feature has bad result type@." fname;
         false)
      else
        true
  | _ -> (Mman_options.Self.error "%s feature not a predicate@." fname;
          false)

         
(** Read annotation for feature {!DA_CAL} and 
 *  set the {!dabs.align}, if correct.
*)
let read_da_cal (lf: Cil_types.logic_info) =
  (* Name already checked *)
  let calt = match lf.l_body with
    | LBterm t -> logic_utils_drop_at t
    | _ -> Mman_options.Self.fatal
             "feature 'cal': definition not a term@."
  in
  let calv = match Logic_utils.constFoldTermToInt calt with
    | Some i -> i
    | _ -> Mman_options.Self.fatal
             "feature 'cal': definition not a constant@."
  in
  if (not(is_fun_const "cal" lf)) ||
     (not(is_fun_result "cal" lf (fun lt -> (lt == Linteger))))
  then
    Mman_options.Self.error "feature 'cal': bad profile@."
  else (* Typecheck to : -> int *)
    (Array.set (!dabs.abs_term) (featurekind2int DA_CAL) (None, calt);
     (!dabs).align <- Integer.to_int
         (Integer.ppcm calv (Integer.of_int (!dabs).align));
     Mman_options.Self.feedback "feature 'cal': ok@."
    )
    
(** Read the annotations for the begin and end of chunk and free list and 
 * sets {!dabs}, if correct.
*)
let read_da_list (kind:feature_kind) (lf:logic_info) =
  (* Name already checked *)
  let fname = get_fname kind in
  (* typecheck to : -> cty *)
  let clt = match lf.l_body with
    | LBterm t -> logic_utils_drop_at t
    | _ -> Mman_options.Self.fatal "feature '%s': definition not a term@."
             fname
  in
  if (not(is_fun_const "list" lf)) ||
     (not(is_fun_result "list" lf
            (fun t -> match t with
               |  Ltype (ti,_) ->
                   if (is_feature DA_CTY ti.lt_name) then true
                   else false
               | _ -> false)))
  then
    Mman_options.Self.error "feature '%s': bad profile@." fname
  else if not(Logic_utils.isLogicPointer clt) then
    Mman_options.Self.error "feature '%s': definition not a pointer expression@."
      fname
  else if (Cil.isLogicNull clt) &&
          ((kind == DA_CBE) || (kind == DA_CEN) || (kind == DA_FBE))
  then
    Mman_options.Self.error "feature '%s': definition can not be NULL@."
      fname
  else begin
    Array.set (!dabs.abs_term) (featurekind2int kind) (None,clt);
    Mman_options.Self.feedback "feature '%s': ok@."
      fname
  end
  
(** Read the annotation for chunk size and 
 *  set {!dabs}, if correct 
*)
let read_da_csz (lf:logic_info) =
  (* Name already checked *)
  (* Typecheck to : cty -> int *)
  let cszt = match lf.l_body with
    | LBterm t ->
        if (Logic_utils.constFoldTermToInt t) != None
        then
          Mman_options.Self.fatal "feature 'csz': definition can not be constant@."
        else
          logic_utils_drop_at t
    | _ -> Mman_options.Self.fatal "feature 'csz': definition not a term@."
  in
  if (not(is_fun_cty "csz" lf)) ||
     (not(is_fun_result "csz" lf (fun lt -> (lt == Linteger))))
  then
    Mman_options.Self.error "feature 'csz': bad profile@."
  else 
    (Array.set (!dabs.abs_term)
       (featurekind2int DA_CSZ)
       (Some(List.hd lf.l_profile), cszt);
     Mman_options.Self.feedback "feature 'csz': ok@."
    )
    
(** Read the annotations for list fields next and previous and 
 *  sets {!dabs}, if correct.
*)
let read_da_list_fld (kind:feature_kind) (lf:logic_info) =
  (* Name already checked *)
  let fname = get_fname kind in
  (* Typecheck to : cty -> cty *)
  let cft = match lf.l_body with
    | LBterm t ->
        if (Logic_utils.constFoldTermToInt t) != None
        then
          Mman_options.Self.fatal "feature '%s': can not be constant@." fname
        else
          (logic_utils_drop_at t)
    | _ -> Mman_options.Self.fatal "feature '%s': not a term@." fname
  in
  if (not(is_fun_cty "list field" lf)) ||
     (not(is_fun_result "list field" lf
            (fun t -> match t with
               |  Ltype (ti,_) ->
                   if (is_feature DA_CTY ti.lt_name) then true
                   else false
               | _ -> false)))
  then
    Mman_options.Self.error "feature '%s': bad profile@." fname
  else begin
    Array.set (!dabs.abs_term)
      (featurekind2int kind)
      (Some(List.hd lf.l_profile), cft);
    Mman_options.Self.feedback "feature '%s': ok@." fname
  end
  
(** Read the annotation for feature {cdt} and
 *  set {dabs}, if correct
*)
(** TODO: change to have a constant *)
let read_da_cdat (lf:logic_info) =
  (* Name already checked *)
  let cdt = match lf.l_body with
    | LBterm t ->
        if (Logic_utils.constFoldTermToInt t) != None
        then
          Mman_options.Self.fatal "feature 'cdt': definition can not be constant@."
        else
          t
    | _ -> Mman_options.Self.fatal "feature 'cdt': definition not a term@."
  in
  (* Typecheck to : cty -> void* *)       
  if (not(is_fun_cty "cdat" lf)) ||
     (not(is_fun_result "cdat" lf
            Logic_utils.isLogicVoidPointerType))
  then
    Mman_options.Self.error "feature 'cdat': definition not of type void*@."
  else
    (Array.set (!dabs.abs_term)
       (featurekind2int DA_CDAT)
       (Some(List.hd lf.l_profile),cdt);
     Mman_options.Self.feedback "feature 'cdat': ok@.")
    
(** Read the annotation for the free flag features and
 *  set the {dabs}, if correct.
*)
let read_da_cflg (kind:feature_kind) (lf:logic_info) =
  (* Names already checked *)
  let fname = get_fname kind in
  let cft = match lf.l_body with
    | LBterm t ->
        if (Logic_utils.constFoldTermToInt t) != None
        then
          Mman_options.Self.fatal "feature '%s': definition can not be constant@."
            fname
        else
          t
    | _ -> Mman_options.Self.fatal "feature '%s': definition not a term@." fname
  in
  if (not(is_fun_cty "flag" lf)) ||
     (not(is_fun_result "flag" lf
            (fun lt -> match lt with
               | Ctype t -> Cil.isIntegralType t
               | _ -> false)))
  then (* Typecheck to : cty -> int *)
    Mman_options.Self.error "feature '%s': bad profile@." fname
  else begin
    Array.set (!dabs.abs_term) (featurekind2int kind)
      (Some(List.hd lf.l_profile),cft);
    Mman_options.Self.feedback "feature '%s': ok@." fname
  end
  
(** Read the annotation for {cty} and 
 *  set in {dabs}, if correct
*)
let read_type () =
  begin
    let lty =
      try
        Logic_env.Logic_type_info.find
          (List.assoc DA_CTY feature_names)
      with Not_found ->
        Mman_options.Self.fatal "'cty' definition: not found@."
    in
    if not (is_valid_cty lty)
    then Mman_options.Self.warning "'cty' definition: ignored@."
    else
      (* Side effects in is_valid_cty *)
      Mman_options.Self.feedback "'cty' definition: ok@."
  end
  
(** Read the logic annotations and 
 *  set the data abstraction {dabs}, if correct
*)
let read_feature (kind:feature_kind) (fname:string) =
  if (kind != DA_CTY) then
    begin
      let l = Logic_env.Logic_info.find_all fname in
      match l with
      | [] -> 
          Mman_options.Self.feedback "feature '%s': undefined@." fname
      | lf::l' -> (
          if (List.length l') >= 1 then
            Mman_options.Self.warning
              "feature '%s': multiple definitions, last ignored@." fname;
          (* Check and assign dabs with the feature definition *)
          match kind with
          | DA_CAL -> read_da_cal lf
          | DA_CBE | DA_CEN | DA_FBE | DA_FEN -> read_da_list kind lf
          | DA_CSZ -> read_da_csz lf
          | DA_CNXT | DA_CPRV | DA_FNXT | DA_FPRV -> read_da_list_fld kind lf
          | DA_CDAT -> read_da_cdat lf
          | DA_CFF | DA_CPF -> read_da_cflg kind lf
          | _ -> Mman_options.Self.error
                   "feature '%s': internal error read_feature@." fname
        )
    end
    
let read_method km mname =
  begin
    let l = Logic_env.Logic_info.find_all mname in
    match l with
    | [] -> 
        Mman_options.Self.feedback "method '%s': undefined@." mname
    | lf::l' -> (
        if (List.length l') >= 1 then
          Mman_options.Self.warning
            "method '%s': multiple definitions, last ignored@." mname
            (* Check and assign dabs with the method definition *)
        else
          let m = match lf.l_body with
            | LBterm t ->
                (match t.term_node with
                 | TConst(LStr s) -> s
                 | _ -> 
                     Mman_options.Self.fatal
                       "method '%s': definition not a string constant@." mname
                )
            | _ -> Mman_options.Self.fatal
                     "method '%s': definition not a term@." mname
          in
          let i = get_method_idx km in
          begin
            (Array.set (!dabs.meth_name) i m);
            Mman_options.Self.feedback "method '%s': ok@." mname
          end
      )
  end
  
let read () =
  Mman_options.Self.feedback "Reading data abstraction";
  read_type ();
  List.iter (fun kn -> read_feature (fst kn) (snd kn)) feature_names;
  List.iter (fun km -> read_method (fst km) (snd km)) method_names


(* ********************************************************************** *)
(** {2 Printing} *)
(* ********************************************************************** *)

let rec log () =
  (* Print using the Frama-c format for global annotations *)
  Annotations.iter_global (fun _ g -> log_global g)
    
and log_global (g:Cil_types.global_annotation) =
  match g with
  | Dfun_or_pred (li,_) ->
      let fk = get_feature li.l_var_info.lv_name in
      if fk != DA_OTHER then
        (Mman_options.Self.debug ~dkey:dabs_dkey ~level:2
           "annotation %a: stored term %a@."
           Printer.pp_global_annotation g
           Printer.pp_term (snd
                              (Array.get (!dabs).abs_term (featurekind2int fk)))
        )
      else
        ()
  | Dtype (lty,_) ->
      if is_feature DA_CTY lty.lt_name then
        Mman_options.Self.debug ~dkey:dabs_dkey ~level:2
          "annotation %a: stored for cty@."
          Printer.pp_global_annotation g 
      else
        ()
  | _ -> ()
         

(* ********************************************************************** *)
(** {2 Initialisation} *)
(* ********************************************************************** *)
         
let init () =
  read (); (* typechecking done inside *)
  log ()

