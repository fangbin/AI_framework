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

(** Abstract values for the analysis *)

(* open Apron;; *)
(* open Polka;; *)
open Mman_asyn

(* ********************************************************************** *)
(* {1 Environment: translation to Apron.Environment.t} *)
(* ********************************************************************** *)

(**
 * Set the function to be used for environments
*)

(* numerical analysis *)

(* 
 * find a variable in the given environment 
*)
let env_getvar (eid: Mman_env.t) (svi: Mman_svar.svarinfo)
  : Mman_svar.svarinfo
  =
   Mman_env.senv_getvar eid svi
   
  (*if Mman_options.OptNumAnalysis.get() then
      Mman_env.penv_getvar eid svi
  else
      Mman_env.senv_getvar eid svi
*)


(**                                                                              
 * Get list of variables in ei                                                   
*)
let env_vars (eid: Mman_env.t)
  : (int * Mman_svar.svarinfo) list
  =
  let _= Mman_options.Self.debug ~level:1 "DW:env_vars , seid:%d@." eid in 
    Mman_env.senv_vars eid 

 (* if Mman_options.OptNumAnalysis.get() then 
    Mman_env.penv_vars eid
  else 
    Mman_env.senv_vars eid
*)

let env_getvinfo (eid: Mman_env.t) (sid: Mman_svar.svid)
  : Mman_svar.svarinfo
  =
  Mman_env.senv_getvinfo eid sid
  (*
  if Mman_options.OptNumAnalysis.get() then
      Mman_env.penv_getvinfo eid sid
  else 
      Mman_env.senv_getvinfo eid sid
*)





  (*let sv = Mman_env.penv_getvinfo eid sid in 
  if (sv.id == Mman_svar.svid_hole)
    then     
        Mman_env.senv_getvinfo eid sid
    else 
        sv
    *)

let env_size (eid: Mman_env.t)
  : int
  =
    
   if Mman_options.OptNumAnalysis.get() then
    Mman_env.penv_size eid
  else
    let psz, ssz = Mman_env.senv_size eid in
    psz + ssz

let env_unify (eid1: Mman_env.t) (eid2: Mman_env.t)
  : int * int array * int array
  =
  if Mman_options.OptNumAnalysis.get() then
    Mman_env.penv_unify eid1 eid2
  else
    Mman_env.senv_unify eid1 eid2
      

(**
 * Memoize results of env2apron translations.
*)

(* Vector of created Apron environments *)
let apronenvs : Apron.Environment.t Vector.t = Vector.create()

(* Map of Mman_env.t to indexes in vector above *)
module EnvAPMap = FCMap.Make(Datatype.Int)
let env_map = ref EnvAPMap.empty
    
(** 
 * Return the Apron environment corresponding to a value environment
 *
 * The set of variables pushed includes the features and a hole variable.
*)
let env2apron (eid: Mman_env.t) 
  : Apron.Environment.t 
  =
    (*let _ = 
    EnvAPMap.iter 
    (
      fun ei apei -> 
        Mman_options.Self.debug ~level:1 "DW:old apron envs list: %a @."
        (Apron.Environment.print ~first:"[" ~sep:" " ~last:"]") (Vector.get apronenvs apei)
    )
    !env_map in *)
    try
      let apei = EnvAPMap.find eid !env_map in
      Vector.get apronenvs apei
    with Not_found ->    
      let svl = 
            if eid != -1 
            (*then (env_vars eid) *)
            then Mman_env.senv_vars2 eid 
            else [] 
        in
      let avl = 
          List.map
          (
            fun  sv-> Apron.Var.of_string (Mman_svar.sv_tostring sv)
          )
          svl
      in

      let ap_env = Apron.Environment.make
          (Array.of_list avl) (Array.of_list [])
      in
      let apei = Vector.addi apronenvs ap_env in
      let _ = (env_map := EnvAPMap.add eid apei !env_map) in      
      let _ = Mman_options.Self.debug ~level:1
          "DW:env2apron: \n seid_%d -> [%d]\n%a@."
          eid apei
          (Apron.Environment.print ~first:"[" ~sep:" " ~last:"]") ap_env
      in      
      ap_env


(*let env2apron_print 
  =
  let _ = Mman_options.Self.debug ~level:2
          "DW:env2apron_print@." 
        in 
  EnvAPMap.iter 
          (
            fun ei apei -> 
              Mman_options.Self.debug ~level:2 "\n (seid_%d, peid_%d)-> apei_%d \n %a @."
              ei 
              (Mman_env.senv_get ei).peid 
              apei 
              (Apron.Environment.print ~first:"[" ~sep:" " ~last:"]") (Vector.get apronenvs apei)
          )
          !env_map
*)

(* update the apron environment corresponding to a value environment *)
let update_env2apron (eid: Mman_env.t) 
  = 
    (

      let _ = Mman_options.Self.debug ~level:2
          "DW:update apron mapping, \n senv:%a...@."
          Mman_env.senv_print (Mman_env.senv_get eid)
        in 
      let _ = Mman_options.Self.debug ~level:2
          "DW:update apron mapping, seid:%d, peid:%d...@. old aprons:@."
          eid 
          (Mman_env.senv_get eid).peid 
        in 
      let _ = 
          EnvAPMap.iter 
          (
            fun ei apei -> 
              if (ei>=0) then  
              Mman_options.Self.debug ~level:1 "\n (seid_%d, peid_%d)-> apei_%d \n %a @."
              ei 
              (Mman_env.senv_get ei).peid 
              apei 
              (Apron.Environment.print ~first:"[" ~sep:" " ~last:"]") (Vector.get apronenvs apei)
          )
          !env_map
        in 
      (* remove the old apron correponding to eid *)
      let _ = Mman_options.Self.debug ~level:2
          "DW:update env_map@."
        in 
      let svl = 
          if eid != -1 
          (*then (env_vars eid) *)
          then Mman_env.senv_vars2 eid 
          else [] 
      in
      let avl = List.map
          (
            fun sv -> 
                  Apron.Var.of_string (Mman_svar.sv_tostring sv)
          )
          svl
      in
      let _ = Mman_options.Self.debug ~level:1 
            "DW:update_env2apron, avl length:%d" (List.length avl)  
      in 

      let ap_env = Apron.Environment.make
          (Array.of_list avl) (Array.of_list [])
      in
      (* update the mapping between value env and apron env *)
       
      let apei = Vector.addi apronenvs ap_env in  
      env_map := EnvAPMap.remove eid !env_map; 
      env_map := EnvAPMap.add eid apei !env_map;
      

      (*let apei = Vector.addi apronenvs ap_env in      
      let _ = (env_map := EnvAPMap.add eid apei !env_map) in  
      *)
      EnvAPMap.iter 
          (
            fun ei apei -> 
              Mman_options.Self.debug ~level:1 "DW:new aprons: \n (seid_%d, peid_%d)-> apei_%d \n %a @."
              ei 
              (Mman_env.senv_get eid).peid 
              apei 
              (Apron.Environment.print ~first:"[" ~sep:" " ~last:"]") (Vector.get apronenvs apei)
          )
          !env_map
    )
  
(* ********************************************************************** *)
(* {2 Translation to Apron syntax} *)
(* ********************************************************************** *)

(**
 * Constant used for error cases 
*)
let ap_exp_zero eid =
  let apenv = env2apron eid in
  Apron.Texpr1.cst apenv (Apron.Coeff.s_of_int 0)

(** 

 * Exception used during the translation
*)
exception Not_dealt of string

(** Precision of operations in Apron *)
let ap_round =
  Apron.Texpr1.Zero

let ap_optyp =
  Apron.Texpr1.Int

(**
 * From abstract left value to Apron variable
*)
let to_var (sei: Mman_env.t) (lv: Mman_asyn.alval)
  : Apron.Var.t
  =
  match lv with
  | Mman_asyn.AVar(vi) ->
      (*let _  = Mman_options.Self.debug ~level:1 "DW:to_var, Mman_asyn.AVar(%a)" 
          Printer.pp_varinfo vi
      in*) 
      if vi.vname ==  Mman_svar.sv_hli_name 
      then  
            let svi = Mman_svar.svid_hli in 
            Apron.Var.of_string (Mman_svar.sv_hli_name)
      else  
            let svi = env_getvar sei (Mman_svar.sv_mk_var vi) in
            Apron.Var.of_string (Mman_svar.sv_tostring svi)

  | Mman_asyn.ASVar(sid) ->
      (*let _  = Mman_options.Self.debug ~level:1 "Mman_asyn.ASVar(sid:%d), sei:%d@."
              sid sei 
          in*)
      let svi = env_getvinfo sei sid in
      Apron.Var.of_string (Mman_svar.sv_tostring svi)
        
  | Mman_asyn.AMem(vi) ->
      let svi = env_getvar sei (Mman_svar.sv_mk_var vi) in
      let lsvi = env_getvar sei (Mman_svar.sv_mk_loc
                                   (Mman_svar.Svar.id svi) (Mman_svar.svtype vi)) in
      Apron.Var.of_string (Mman_svar.sv_tostring lsvi)

  | Mman_asyn.AFeat(fk, Mman_asyn.AVar(vi)) -> 
      (*let _ = Mman_options.Self.debug ~level:1
          "DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(%a))@."
              Printer.pp_varinfo vi
          in*) 
      let svi = env_getvar sei (Mman_svar.sv_mk_var vi) in

      (*let _ = Mman_options.Self.debug ~level:1
          "DW:to_var, vi %a"
          Mman_svar.Svar.pretty svi
        in*) 
    
      let fsvi = Mman_env.senv_get_feat (Mman_svar.Svar.id svi) sei fk in 
      Apron.Var.of_string (Mman_svar.sv_tostring fsvi)

  | Mman_asyn.AFeat(fk, Mman_asyn.ASVar(sid)) ->
      (*let _ = Mman_options.Self.debug ~level:1
          "MDW:Mman_asyn.AFeat(fk, Mman_asyn.ASVar(%d)), seid:%d  @."
            sid sei 
          in*)  
      let svi = env_getvinfo sei sid in
      (*let _ = Mman_options.Self.debug ~level:1"MDW:%a@."
            Mman_svar.Svar.pretty svi
         in *)

      let fsvi = env_getvar sei (Mman_svar.sv_mk_feat
                                             (Some (Mman_svar.Svar.id svi))
                                             fk)
      in
      Apron.Var.of_string (Mman_svar.sv_tostring fsvi)
  
  | _ ->   
      let _ = (Mman_options.Self.debug ~level:2 "lv:%a @."
                Mman_asyn.pp_alval lv)
          in 
      raise (Not_dealt "Field dereference left value")
           
 


(**
 * From abstract to tree expressions
*)
let to_unop (op: Mman_asyn.aunop)
  : Apron.Texpr1.unop
  =
  match op with
  | Mman_asyn.ANeg -> Apron.Texpr1.Neg
  | _ ->
      let _ = Mman_options.Self.not_yet_implemented "Bitwise unary operator"
      in
      raise (Not_dealt "Translation of abstract unary operator")

let to_binop (op: Mman_asyn.abinop)
  : Apron.Texpr1.binop
  =
  match op with
  | Mman_asyn.AAdd -> Apron.Texpr1.Add
  | Mman_asyn.ASub -> Apron.Texpr1.Sub
  | Mman_asyn.AMul -> Apron.Texpr1.Mul
  | Mman_asyn.ADiv -> Apron.Texpr1.Div
  | Mman_asyn.AMod -> Apron.Texpr1.Mod
    
let rec to_texpr (sei: Mman_env.t) (ae: Mman_asyn.aexp)
  : Apron.Texpr1.t
  =
  let apenv = env2apron sei  in
 
  match ae with
  | Mman_asyn.ACst (i) ->
      Apron.Texpr1.cst apenv (Apron.Coeff.s_of_int (Integer.to_int i))
        
  | Mman_asyn.ALval (lv) ->
      (*let _ = Mman_options.Self.debug ~level:1
          "MDW:to_texpr, seid:%d  @." sei 
          in*)  
      (*let _ = (Mman_options.Self.debug ~level:1 "DW:senv: %a @."
                  Mman_env.senv_print (Mman_env.senv_get sei)) 
          in*)

      let apv = to_var sei lv in
      Apron.Texpr1.var apenv apv

  | Mman_asyn.AUnOp (op, ae) ->
      let ape = to_texpr sei ae in
      let apop = to_unop op in
      Apron.Texpr1.unop apop ape ap_optyp ap_round

  | Mman_asyn.ABinOp (op, aeL, aeR) ->
      let apeL = to_texpr sei aeL in
      let apeR = to_texpr sei aeR in
      let apop = to_binop op in
      Apron.Texpr1.binop apop apeL apeR ap_optyp ap_round

  | Mman_asyn.ASbrk (ae) -> 
      to_texpr sei ae 

  | Mman_asyn.AAddrOf (lv) ->
      match lv with
      | Mman_asyn.AVar(vi) ->
          let svi = env_getvar sei (Mman_svar.sv_mk_var vi) in
          let lsvi = env_getvar sei (Mman_svar.sv_mk_loc
                                       (Mman_svar.Svar.id svi) (Mman_svar.svtype vi)) in
          Apron.Texpr1.var apenv
            (Apron.Var.of_string (Mman_svar.sv_tostring lsvi))

      | Mman_asyn.AMem(vi) ->
          (* &( *vi) = vi *)
          let svi = env_getvar sei (Mman_svar.sv_mk_var vi) in
          Apron.Texpr1.var apenv
            (Apron.Var.of_string (Mman_svar.sv_tostring svi))

      | _ ->
          let _ = Mman_options.Self.not_yet_implemented "Dereference of field"
          in
          raise (Not_dealt "Translation of abstract expressions")

(**
 * From abstract to Apron comparisons
*)
let to_tcons_typ (aop: Mman_asyn.acmpop)
  : Apron.Tcons1.typ
  =
  match aop with
  | Mman_asyn.AEQ -> Apron.Tcons1.EQ
  | Mman_asyn.ASUPEQ -> Apron.Tcons1.SUPEQ
  | Mman_asyn.ASUP -> Apron.Tcons1.SUP
  | Mman_asyn.ADISEQ  -> Apron.Tcons1.DISEQ
  | Mman_asyn.AEQMOD(i) -> Apron.Tcons1.EQMOD (Apron.Scalar.of_int i)
                             
(**
 * From abstract to tree constraints
*)
let to_tcons (sei: Mman_env.t) (ac: Mman_asyn.aconstr)
  : Apron.Tcons1.t
  =
  (*let _ = Mman_options.Self.debug ~level:1
          "MDW:to_tcons...@."   
      in*) 
  match ac with
  | Mman_asyn.ATrue ->
      Apron.Tcons1.make (ap_exp_zero sei) Apron.Tcons1.EQ
  
  | Mman_asyn.AFalse ->
      Apron.Tcons1.make (ap_exp_zero sei) Apron.Tcons1.DISEQ
  
  | Mman_asyn.ACmp(op, aeL, aeR) ->
      let apeL = to_texpr sei aeL in
      let apeR = to_texpr sei aeR in
      let apesub = Apron.Texpr1.binop Apron.Texpr1.Sub apeL apeR
          ap_optyp ap_round in
      let apop = to_tcons_typ op in
      let res = Apron.Tcons1.make apesub apop in 
      let _ = Mman_options.Self.debug ~level:1
          "MDW:const:%a@."  Apron.Tcons1.print res
      in res
        
(* ********************************************************************** *)
(* {3 Abstract value} *)
(* ********************************************************************** *)
      
(**
 * Module defining the abstract value 
*)
module Model = struct
  
  (** 
   * Interface with Apron modules 
  *)

  let man_apron =
    (* Select manager for linear constraints *)
    Polka.manager_of_polka_strict (Polka.manager_alloc_strict ()) 
  
  (* PolkaGrid.manager_of_polkagrid
      (PolkaGrid.manager_alloc
         (Polka.manager_alloc_strict ()) 
         (Ppl.manager_alloc_grid ())) *)
      
  type ty_apron =
    Polka.strict Polka.t Apron.Abstract1.t 
  (* Polka.strict PolkaGrid.t Apron.Abstract1.t *)
      
  let to_apron v =
    Polka.Abstract1.of_polka_strict v 
  (* PolkaGrid.Abstract1.of_polkagrid v *)
      
  let of_apron v =
    Polka.Abstract1.to_polka_strict v
      
  type value = {
    eid: Mman_env.t; (* variables used *)
    vap: ty_apron;   (* Apron value *)
  }
  
  (** Basic functions used in Datatype.S *)
  let pretty_code_intern (p_caller:Type.precedence) fmt (d: value) = 
    let pp fmt = begin
      Format.fprintf fmt "{seid:%d, peid:%d}" 
      d.eid 
      (Mman_env.senv_get d.eid).peid ;
      Apron.Abstract1.print fmt d.vap
    end
    in
    Type.par p_caller Type.Call fmt pp
      
  let pretty_diff fmt (d0: value) (d1: value) = 
    begin
      Format.fprintf fmt "<>(";
      pretty_code_intern Type.Basic fmt d0;
      Format.fprintf fmt ",";
      pretty_code_intern Type.Basic fmt d1;
      Format.fprintf fmt ")"
    end
    
  let is_leq (d0: value) (d1: value) =
    (* align environment *)
    if (d0.eid == (-1)) ||
       (d1.eid == (-1)) ||
       (d1.eid <> d0.eid)
    then
      false
    else
      Apron.Abstract1.is_leq man_apron (to_apron d0.vap) (to_apron d1.vap)
        
  let compare_intern (d0: value) (d1: value) =
    if (d0.eid == (-1))
    then -1
    else if (d1.eid == (-1))
    then 1
    else
      let is_eq01 = Apron.Abstract1.is_eq man_apron
          (to_apron d0.vap) (to_apron d1.vap) in
      if is_eq01 then 0
      else
        let is_leq01 = Apron.Abstract1.is_leq man_apron
            (to_apron d0.vap) (to_apron d1.vap) in
        if is_leq01 then -1
        else 0
          
  let hash_intern (d: value) =
    Apron.Abstract1.hash man_apron (to_apron d.vap)
      
  let copy_intern (d: value) =
    {eid = d.eid;
     vap = of_apron (Apron.Abstract1.copy man_apron (to_apron d.vap))}
    
  let dummy_env =
    env2apron (-1)
      
  let dummy_top =
    { eid= (-1);
      vap= Apron.Abstract1.top man_apron dummy_env }
    
  let dummy_bot =
    { eid= (-1);
      vap= Apron.Abstract1.bottom man_apron dummy_env }
    
  
  (** Module Datatype.S *)
  include Datatype.Make
    (struct
      type t = value 
      let name = "mman_valap.model.t"
      let rehash = Datatype.identity
      let structural_descr = Structural_descr.t_unknown (* t_abstract *)
      let reprs = [ dummy_top; dummy_bot ]
      let equal = Datatype.from_compare
      let compare = compare_intern
      let hash = hash_intern
      let copy = copy_intern
      let internal_pretty_code = pretty_code_intern
      let pretty = Datatype.from_pretty_code
      let varname _ = "ap"
      let mem_project = Datatype.never_any_project
    end)

  (** Useful operations required by the lattice operations *)
  let bottom_of eid =
    let ap_eid = env2apron eid in
    {eid = eid;
     vap = Apron.Abstract1.bottom man_apron ap_eid}

  let top_of eid =
    let ap_eid = env2apron eid in
      { eid = eid;
        vap = Apron.Abstract1.top man_apron ap_eid }
    
  (** Lattice operations *)
  (* from Bounded_Join_Semi_Lattice *)
  let join (d0: t) (d1: t) =
    if d0.eid == -1 then copy_intern d1
    else if d1.eid == -1 then copy_intern d0
    else
      (*let _ = (assert (d0.eid == d1.eid)) in*)
      
      { eid=d0.eid;
        vap=of_apron (Apron.Abstract1.join man_apron
                        (to_apron d0.vap) (to_apron d1.vap));
      }
      
  let is_included (d0: t) (d1: t) =
    is_leq d0 d1
      
  let join_and_is_included (d0: t) (d1: t) =
    (join d0 d1), (is_included d0 d1)
                  
  let bottom =
    dummy_bot
      
  (* from With_Top *)
  let top =
    dummy_top
          
  (* from With_Errors *)
  exception Error_Top
  exception Error_Bottom
    
  (* from With_Widening *)
  type widen_hint = int
    
  let widen _hint (d0: t) (d1: t) =
    (* Assert: d1 includes d0, [_hint] not used *)
    let djoin, isin = join_and_is_included d0 d1 in
    let d01 = 
    if isin 
    then 
      d1 
    else 
      djoin 
    in
    { eid=d0.eid;
      vap=of_apron (Apron.Abstract1.widening man_apron
                      (to_apron d0.vap) (to_apron d01.vap));
    }
    
  (* from With_Intersects *)
  let intersects (d0: t) (d1: t) = 
    let _ = Mman_options.Self.debug ~level:2 "DW:intersects..."
          in
    let m = Apron.Abstract1.meet man_apron
                      (to_apron d0.vap) (to_apron d1.vap) 
                    in                    
    let v =  
      { eid=d0.eid;
        vap=of_apron (m);
      }
    in 
    let _ = Mman_options.Self.debug ~level:2 "DW:after meet:\n %a"
          (pretty_code_intern Type.Basic) v
    in 
    v 


  (** Additional methods from Apron.Abstract1 interface *)
  let size (d: t) = 
    env_size d.eid
      
  let minimize (d: t) = 
    Apron.Abstract1.minimize man_apron (to_apron d.vap)
      
  let canonicalize (d: t) = 
    Apron.Abstract1.canonicalize man_apron (to_apron d.vap)
      
  let approximate (d: t) alg = 
    Apron.Abstract1.approximate man_apron (to_apron d.vap) alg
      
  (** Accessors *)
  let env (d: t) = 
    d.eid
      
  let env_apron (d: t) : Apron.Environment.t =
    Apron.Abstract1.env (to_apron d.vap)
      
  (** Tests *)
  let is_bottom (d: t) =
    Apron.Abstract1.is_bottom man_apron (to_apron d.vap)
      
  let is_top (d: t) =
    Apron.Abstract1.is_top man_apron (to_apron d.vap)
      
  let is_eq (d0: t) (d1: t) =
    (d0.eid == d1.eid) &&
    (Apron.Abstract1.is_eq man_apron (to_apron d0.vap) (to_apron d1.vap))
    
  
  (** Extract properties *)
  let is_var_unconstrained (d: t) (svar: Mman_svar.svarinfo) = 
    (* generate name of this svar *)
    let apvar = Apron.Var.of_string (Mman_svar.sv_tostring svar) in
    (Apron.Abstract1.is_variable_unconstrained man_apron
       (to_apron d.vap) apvar)

  (** extracted from Eva plugins/value/domains/apron/apron_domain.ok.ml *)
  let scalar_to_int s =
    if Apron.Scalar.is_infty s <> 0
    then None
    else match s with
      | Apron.Scalar.Mpqf q ->
          (* TODO: extract to Integer directly, without intermediate smaller type *)
          let i = int_of_float (Mpqf.to_float q) in
          if Apron.Scalar.equal_int s i then Some i else raise Not_found
      | Apron.Scalar.Float _
      | Apron.Scalar.Mpfrf _-> raise Not_found

  let convert interval =
    let inf = scalar_to_int interval.Apron.Interval.inf
    and sup = scalar_to_int interval.Apron.Interval.sup in
    let inf = Extlib.opt_map Integer.of_int inf
    and sup = Extlib.opt_map Integer.of_int sup in
    Ival.inject_range inf sup

  let bound_variable (d: t) (svar: Mman_svar.svarinfo) =
    (* generate name of this svar *)
    let apvar = Apron.Var.of_string (Mman_svar.sv_tostring svar) in
    let apitv = Apron.Abstract1.bound_variable man_apron
        (to_apron d.vap) apvar in
    convert apitv
                    
      
  let alias_variable (d: t)
    (v1: Cil_types.varinfo) (v2: Cil_types.varinfo) =
    let apenv = Apron.Abstract1.env (to_apron d.vap) in
    (* get svar from environment *)
    let sv1 = env_getvar d.eid (Mman_svar.sv_mk_var v1) in
    let sv2 = env_getvar d.eid (Mman_svar.sv_mk_var v2) in
    (* generate name of this svar *)
    let apv1 = Apron.Texpr1.var apenv
        (Apron.Var.of_string (Mman_svar.sv_tostring sv1)) in
    let apv2 = Apron.Texpr1.var apenv
        (Apron.Var.of_string (Mman_svar.sv_tostring sv2)) in
    let apesub = Apron.Texpr1.binop Apron.Texpr1.Sub
        apv1 apv2 ap_optyp ap_round in
    let ape = Apron.Tcons1.make apesub Apron.Tcons1.EQ in
    Apron.Abstract1.sat_tcons man_apron (to_apron d.vap) ape
      
  let null_variable (d: t) (vi: Cil_types.varinfo) = 
    let apenv = Apron.Abstract1.env (to_apron d.vap) in
    (* get svar from environment *)
    let sv1 = env_getvar d.eid (Mman_svar.sv_mk_var vi) in
    let apv1 = Apron.Texpr1.var apenv
        (Apron.Var.of_string (Mman_svar.sv_tostring sv1)) in
    let ape = Apron.Tcons1.make apv1 Apron.Tcons1.EQ in
    Apron.Abstract1.sat_tcons man_apron (to_apron d.vap) ape
      
  let undef_variable (d: t) (svar: Mman_svar.svarinfo) =
    is_var_unconstrained d svar
      
  
  (** Abstract transformers *)
  let meet_exp (sei: Mman_env.t) (d: t) (c1_cn: Mman_asyn.aconstr list) =
    (* TODO: assert (env2apron sei) = Apron.Abstract1.env (to_apron d.vap) *)    
    (*let _ = assert ((env2apron sei) == Apron.Abstract1.env (to_apron d.vap)) in *)
    let _ = Mman_options.Self.debug ~level:1 "MDW:meet_exp@."  in
    let apenv = Apron.Abstract1.env (to_apron d.vap) in
    let arr = Apron.Tcons1.array_make apenv (List.length c1_cn) in
    let _ = (List.iteri
               (fun i c -> Apron.Tcons1.array_set arr i
                   (to_tcons sei c)
               )
               c1_cn)
    in 
    let dw = 
    { eid = d.eid;
      vap = Apron.Abstract1.meet_tcons_array man_apron
            (to_apron d.vap) arr}
    in  
    dw 

  let meet_exp_with (sei: Mman_env.t) (d: t) (c1_cn: Mman_asyn.aconstr list) =
    let apenv = Apron.Abstract1.env (to_apron d.vap) in
    let arr = Apron.Tcons1.array_make apenv (List.length c1_cn) in
    let _ = (List.iteri
               (fun i c -> Apron.Tcons1.array_set arr i
                   (to_tcons sei c))
               c1_cn)
    in
    Apron.Abstract1.meet_tcons_array_with man_apron
      (to_apron d.vap) arr


  let do_assign (d: t) (llv: Mman_asyn.alval list) (lexp: Mman_asyn.aexp list)  
    :t 
    = 
    (*TODO bug Failure("hd") => llv is empty *)
    (*if (List.length llv == 0) then d 
    else *) 

    let eid = d.eid in (* eid is equal to the seid of shape *)
    let _ = Mman_options.Self.debug ~level:1 "DW:do_assign,@."
    		(*Mman_env.senv_print (Mman_env.senv_get eid)*)
    	in 
    (*let _ = Mman_options.Self.debug ~level:1 "DW:do_assign: eid:%d@."
          d.eid 
    in*) 
    let apv1_apvn = List.map (fun lvi -> to_var eid lvi) llv
    in
    let ape1_apen = List.map (fun ei -> to_texpr eid ei) lexp 
    in
    (*let _ = 
        List.iter2 
        ( fun lv le ->
             Mman_options.Self.debug ~level:1 "DW:do_assign: %a:=%a (DW)@."
                   Apron.Var.print (lv) Apron.Texpr1.print(le)
                
        )
        apv1_apvn 
        ape1_apen 
    in *)
    let at = (Apron.Abstract1.assign_texpr_array 
                man_apron
                (to_apron d.vap)
                (Array.of_list apv1_apvn)
                (Array.of_list ape1_apen)
                None 
                )
    in 
    let res = of_apron at
    in
    begin 
      { eid=d.eid; 
        vap=res}
    end
    
  
  let do_assign_with (d: t)
    (llv: Mman_asyn.alval list) (lexp: Mman_asyn.aexp list) =
    let eid = env d in
    let apv1_apvn = List.map (fun lvi -> to_var eid lvi) llv in
    let ape1_apen = List.map (fun ei -> to_texpr eid ei) lexp in
    Apron.Abstract1.assign_texpr_array_with man_apron
      (to_apron d.vap)
      (Array.of_list apv1_apvn)
      (Array.of_list ape1_apen)
      None
      
  let forget_list (d: t) (llv: Mman_asyn.alval list) =
    let _ = (Mman_options.Self.debug ~level:1 "DW:forget %a,... in\n %a@."
               Mman_asyn.pp_alval (List.hd llv)
               pretty d)
    in
    let eid = env d in
    let apv1_apvn = List.map (fun lvi -> to_var eid lvi) llv in
    {eid = eid;
     vap = of_apron (Apron.Abstract1.forget_array man_apron
                     (to_apron d.vap)
                     (Array.of_list apv1_apvn) false)}
    
  let forget_list_with (d: t) (llv: Mman_asyn.alval list) =
    let eid = env d in
    let apv1_apvn = List.map (fun lvi -> to_var eid lvi) llv in
    Apron.Abstract1.forget_array_with man_apron (to_apron d.vap)
      (Array.of_list apv1_apvn) false
      


  let change_env (d: t) (eiold: Mman_env.t) (einew: Mman_env.t) 
    :t 
    =
    let _ = Mman_options.Self.debug ~level:1 "DW:change_env...@." in 
    (*let _ = Mman_options.Self.debug ~level:2 "DW:eid:%d, eiold:%d, einew: %d@."
                 d.eid eiold einew in *)
    if eiold == einew
    then
      let _ = Mman_options.Self.debug ~level:2 "DW: emvironment changed" 
      in  
      copy_intern d
    else
      (*let _ = Mman_options.Self.debug ~level:2
              "DW:assertion value eid %d = old eid %d@."
              d.eid eiold
               (*assert (d.eid == eiold)) *)in*)
      let ap_einew = env2apron einew in
      let newenv = Apron.Abstract1.change_environment 
                            man_apron
                            (to_apron d.vap)
                            ap_einew 
                            false 
                          in 
      let _ = Mman_options.Self.debug ~level:2
                 "DW: emvironment changed" 
       in                    
      { eid = einew;
        vap = of_apron ( newenv )
      }
  


  let change_env_with (d: t) (einew: Mman_env.t) =
    if d.eid == einew
    then
      ()
    else
      let ap_einew = env2apron einew in
      Apron.Abstract1.change_environment_with man_apron
        (to_apron d.vap)
        ap_einew false

  let rename (d: t) (_hmap: Mman_env.envmap) =
    (* TODO *) d
        
  let unify (d0: t) (d1: t) =
    let eid, _, _ = env_unify d0.eid d1.eid in
    {eid = eid;
     vap =of_apron (Apron.Abstract1.unify man_apron
                      (to_apron d0.vap)
                      (to_apron d1.vap)) }
    
  let unify_with (d0: t) (d1: t) =
    Apron.Abstract1.unify man_apron (to_apron d0.vap) (to_apron d1.vap)
      

  let addV (dw:value) (_lv: Mman_svar.svid list ) (_cl:Mman_asyn.aconstr list) 
    : value 
    = dw (* TODO *)

 
  let fold (_p:Mman_asyn.aconstr) (_vl:Mman_svar.svarinfo) (dw:value)
    : value
    = dw (* TODO *)


  let guard (dw:value) (cl_cn:Mman_asyn.aconstr list)
    : value 
    = dw (* TODO *)

  (* do one assign *)
  (*let assign (lv:Mman_asyn.alval) (exp:Mman_asyn.aexp) (d:t)
    : t 
    = 
    let _ = (Mman_options.Self.debug ~level:1 "DW:do_one_assign: d.seid:%d,peid:%d, %a:=%a,...@."
              d.eid 
              (Mman_env.senv_get d.eid).peid
               Mman_asyn.pp_alval (lv) Mman_asyn.pp_aexp (exp);
               Mman_options.Self.debug ~level:1 "DW:on %a@."
               (pretty_code_intern Type.Basic) d)
    in
    let eid = env d in
    let _ = Mman_options.Self.debug ~level:1 "DW: senv:%a"
      Mman_env.senv_print (Mman_env.senv_get eid) 
    in 
     
     let _ = 
          EnvAPMap.iter 
          (
            fun ei apei -> 
              if (ei>=0) then 
              Mman_options.Self.debug ~level:2 "\n (seid_%d, peid_%d)-> apei_%d \n %a @."
              ei 
              (Mman_env.senv_get ei).peid 
              apei 
              (Apron.Environment.print ~first:"[" ~sep:" " ~last:"]") (Vector.get apronenvs apei)
          )
          !env_map
    in 
 
    let apv1_apvn = to_var eid lv in
    let ape1_apen = to_texpr eid exp in
    let _ =  
          Mman_options.Self.debug ~level:1 "DW:after to_apron: %a:=%a"
            Apron.Var.print apv1_apvn
            Apron.Texpr1.print ape1_apen
      in 

    let res = of_apron (Apron.Abstract1.assign_texpr man_apron
                          (to_apron d.vap)
                          (apv1_apvn)
                          (ape1_apen)
                          None)
    in
    begin
      (Mman_options.Self.debug ~level:1 "DW:to %a@." Apron.Abstract1.print res);
      {eid = d.eid; vap = res}
    end*)

end

(* ********************************************************************** *)
(* {4 Operations on values } *)
(* ********************************************************************** *)

(**
 * Init globals in the environment 
*)
let global_state : Model.t ref = ref Model.dummy_top
    
let init_globals (eid: Mman_env.t)
    (v1_vn: Mman_asyn.alval list) (e1_en: Mman_asyn.aexp list)
    (c1_cn: Mman_asyn.aconstr list) 
    : Model.t
    =
      let _ = Mman_options.Self.feedback "DW:MV-init_globals@." in
      if (eid = (Model.env !global_state))
      then !global_state
      else

      (* Do assign *)      
      let vinit = Model.do_assign (Model.top_of eid) (v1_vn) (e1_en) in
      let _ = Mman_options.Self.feedback "DW: do assign done @." in
      let _ = Mman_options.Self.feedback "DW: do meet exp@." in
     

      (* do meet *)
      let v = Model.meet_exp eid vinit c1_cn in
      begin
        let _ = ( Mman_options.Self.debug ~level:1 "DW: after meep \n %a@."
                  (Model.pretty_code_intern Type.Basic) v)
        in 
        let _ = Mman_options.Self.feedback "DW: init_globals finished@." in
        global_state := v;
        v
      end
    
