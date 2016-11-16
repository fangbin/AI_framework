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

(** Abstract syntax tree used for expressions obtained 
 *  by translating Cil expressions using the data abstraction 
*)

open Cil_types;;

(************************************************************************ *)
(** {1 Types } *)
(************************************************************************ *)

(** Abstract expressions *)
type aexp =
  | ACst of Integer.t
  | ALval of alval
  | AAddrOf of alval
  | AUnOp of aunop * aexp
  | ABinOp of abinop * aexp * aexp
  | ASbrk of aexp (* special exp for sbrk function *)
      
and alval =
  | AVar of varinfo
  | ASVar of Mman_svar.svid
  | AMem of varinfo  (* *vi *)
  | AFeat of Mman_dabs.feature_kind * alval 
  | AFld of alval * fieldinfo (* for not syntactical translations *)
            
and aunop =
  | ANeg
  | ABNot
  | ABGet of int * int (* get bits [hi,lo] *)
  | ABSetZ of int * int (* set to zero bits [hi,lo] *)
              
and abinop =
  | AAdd
  | ASub
  | AMul
  | ADiv
  | AMod
    

(** Abstract boolean expressions = constraints *)
type aconstr =
  | ATrue | AFalse
  | ACmp of acmpop * aexp * aexp

and acmpop =
  | AEQ
  | ASUPEQ
  | ASUP
  | ADISEQ
  | AEQMOD of int
      

(************************************************************************ *)
(** {1 Basic operations } *)
(************************************************************************ *)
    
(**
 * Constant expression ZERO
 * Used for error cases.
*)
let aexp_zero =
  ACst Integer.zero
    
(**
 * Copy an expression
 * No need of deep copy because no eid 
*)
let copy_aexp ae = ae
  
(**
 * Printing
*)
let rec pp_aexp fmt ae =
  match ae with
  | ACst i -> Format.fprintf fmt "%d" (Integer.to_int i)
  | ALval lv -> pp_alval fmt lv
  | AUnOp(op, ae') ->
      (match op with
       | ANeg -> Format.fprintf fmt "- %a" pp_aexp ae'
       | ABNot -> Format.fprintf fmt "~ %a" pp_aexp ae'
       | ABGet(hi,lo) -> Format.fprintf fmt "%a &[%d,%d]"
                           pp_aexp ae' hi lo
       | ABSetZ(hi,lo) -> Format.fprintf fmt "%a &~[%d,%d]"
                            pp_aexp ae' hi lo
      )
  | ABinOp(op, aeL, aeR) ->
      begin
        Format.fprintf fmt "(%a " pp_aexp aeL;
        Format.fprintf fmt "%s"
          (match op with
           | AAdd -> "+"
           | ASub -> "-"
           | AMul -> "*"
           | ADiv -> "/"
           | AMod -> "%")
        ;
        Format.fprintf fmt " %a)" pp_aexp aeR
      end
  | AAddrOf lv ->
      Format.fprintf fmt "&%a" pp_alval lv

  | ASbrk e ->
        Format.fprintf fmt "sbrk(%a)" pp_aexp e
        
and pp_alval fmt lv =
  match lv with
  | AVar vi ->
      Format.fprintf fmt "%s" (vi).vname
  | ASVar id ->
      Format.fprintf fmt "sv_%d" id
  | AMem vi ->
      Format.fprintf fmt "*%s" (vi).vname
  | AFeat(fk, lv') ->
      Format.fprintf fmt "%s(%a)" (Mman_dabs.get_fname fk) pp_alval lv'
  | AFld(lv', fi) ->
      Format.fprintf fmt "%a->%a" pp_alval lv' Printer.pp_field fi

let pp_aconstr fmt ac =
  match ac with
  | AFalse ->
      Format.fprintf fmt "false"
  | ATrue ->
      Format.fprintf fmt "true"
  | ACmp (op, aeL, aeR) ->
      begin
        pp_aexp fmt aeL;
        (match op with
         | AEQ -> Format.fprintf fmt "="
         | ADISEQ -> Format.fprintf fmt "!="
         | ASUP -> Format.fprintf fmt ">"
         | ASUPEQ -> Format.fprintf fmt ">="
         | AEQMOD(i) -> Format.fprintf fmt "=_%d" i
        );
        pp_aexp fmt aeR
      end
      
(************************************************************************ *)
(** {1 Translation from Cil via data abstraction } *)
(************************************************************************ *)
        
(**
 * Exception used during the translation
*)
exception Not_dealt of string
exception Error of string
    
(**
 * Contexts.
 *
 * A context is (v,e) where
 *   e is an aexp that may use v,
 *   v is an optional variable representing the feature used.
 *
 * Used to memoize transformations: 
 *   - finfo2aexp = [fi->(Some(alv),e)] where alv is Feat(v,fk)
 *   - exp2aexp = [expi->(None,e)] where e gives the translation of expi
 *                                         and has no hole
*)
module CtxAexp = struct
  include Datatype.Make_with_collections
      (struct
        type t = (alval option * aexp)
        let name = "CtxAexp"
        let reprs = [(None, aexp_zero)]
        let compare ce1 ce2 =
          (match (fst ce1), (fst ce2) with
           | None, None | Some _, Some _ ->
               let str_e1 =
                 (Format.fprintf Format.str_formatter
                    "%a" pp_aexp (snd ce1);
                  Format.flush_str_formatter ()) in
               let str_e2 =
                 (Format.fprintf Format.str_formatter
                    "%a" pp_aexp (snd ce2);
                  Format.flush_str_formatter ()) in
               (String.compare str_e1 str_e2)
               
           | Some _, None -> -1 (* contexts before expressions *)
           | None, Some _ -> 1
          )
        let hash _ce = 0
        let rehash = Datatype.identity
        let equal = Datatype.from_compare
        let copy = Datatype.identity
        let pretty fmt ce =
          begin
            pp_aexp fmt (snd ce);
            (match (fst ce) with
             | None -> ()
             | Some(v) -> Format.fprintf fmt "[%a]" pp_alval v
            )
          end
        let varname _ = "ce"
        let structural_descr = Structural_descr.t_unknown
        let internal_pretty_code _ fmt ce = pretty fmt ce
        let mem_project = Datatype.never_any_project
      end)
end

(**
 * Module and global var for memoization of transformations from
 * Cil expressions into abstract expressions
*)
module Exp2aexp = Cil_datatype.Exp.Map.Make(CtxAexp)
    
let exp2aexp : Exp2aexp.t ref = ref Cil_datatype.Exp.Map.empty
    
(** 
 * Module and global var for memoization of transformations from
 * field accesses into (fk(vinfo), aexp)                                
*)
module Finfo2aexp = Cil_datatype.Fieldinfo.Map.Make(CtxAexp)
    
let finfo2aexp : Finfo2aexp.t ref = ref Cil_datatype.Fieldinfo.Map.empty


(** 
 * Module for memoizing guards
*)
module AGuard = struct
  include Datatype.Make_with_collections
      (struct
        type t = aconstr * aconstr (* positive * negative *)
        let name = "AGuard"
        let reprs = [(ATrue, AFalse); (AFalse, ATrue)]
        let compare g1 g2 =
          let str_g1 =
            (Format.fprintf Format.str_formatter
               "%a" pp_aconstr (fst g1);
             Format.flush_str_formatter ()) in
          let str_g2 =
            (Format.fprintf Format.str_formatter
               "%a" pp_aconstr (fst g2);
             Format.flush_str_formatter ()) in
          (String.compare str_g1 str_g2)
          
        let hash _g = 0
        let rehash = Datatype.identity
        let equal = Datatype.from_compare
        let copy = Datatype.identity
        let pretty fmt g =
          begin
            pp_aconstr fmt (fst g);
            Format.fprintf fmt "=!";
            pp_aconstr fmt (snd g)
          end
        let varname _ = "g"
        let structural_descr = Structural_descr.t_unknown
        let internal_pretty_code _ fmt ce = pretty fmt ce
        let mem_project = Datatype.never_any_project
      end)
end

(**
 * Module and global var for memoization of transformations from
 * Cil expressions into abstract guards
*)
module Exp2aguard = Cil_datatype.Exp.Map.Make(AGuard)

let exp2aguard : Exp2aguard.t ref = ref Cil_datatype.Exp.Map.empty

(**
 * Transform a Cil constant into an abstract constant
 *
 * Warning: only integers are dealt for the moment
*)
let transform_cst (c:Cil_types.constant) : Integer.t =
  match c with
  | Cil_types.CInt64(i,_,_) ->
      i
  | _ ->
      begin
        Mman_options.Self.failure "Unknown constant %a@."
          Printer.pp_constant c;
        raise (Not_dealt "Constant expression")
      end

(**
 * Utilities: return 0 if !{i} is not a mask and
 * c > 0 if i = (2^c -1)
 * c < 0 if i = ~(2{-c} - 1) with some encoding of ints
 * works for current 'int' type.
*)
let rec mask_of_int (i:Integer.t) =
  let ii = (Integer.to_int i) in
  if (ii land 1) <> 0
  then mask_lsb ii
  else mask_msb ii
      
and mask_lsb (i:int) =
  let _ = Mman_options.Self.debug ~level:2 "mask_lsb(%x): %d@."
      i (i land (i+1))
  in
  if i land (i+1) != 0 then
    0
  else
    (* find number of contiguous 1 *) 
    let ileft = ref (i lsr  1) in
    let c = ref 1 in
    begin
      while (!ileft land 1) <> 0
      do
        Mman_options.Self.debug ~level:2 "mask_lsb(%x): ileft=%x, c=%d@."
          i !ileft !c;
        c := !c + 1;
        ileft := !ileft lsr 1
      done;
      Mman_options.Self.debug ~level:2
        "mask_lsb(%x,%s,%s,%s)(%x): ileft=%x, c=%d@."
        max_int (Integer.to_string (Integer.pred Integer.minus_one))
        (Int64.to_string Int64.max_int) (Int32.to_string Int32.max_int)
        i !ileft !c;
      !c
    end

and mask_msb (i:int) =
  let _ = Mman_options.Self.debug ~level:2 "mask_msb(%x): %x@."
      i ((((-1) lxor i) land (((-1) lxor i) + 1)))
  in
  (* find number of continguous 0 *)
  let ileft = ref (max_int lxor i) in
  let c = ref 0 in
  let c0 = ref 0 in
  begin
    while (!ileft land 1) <> 0
    do
      Mman_options.Self.debug ~level:2 "mask_msb(%x): ileft=%x, c=%d"
        i !ileft !c;
      c := !c - 1;
      ileft := !ileft asr 1 (* but masks are positive *)
    done;
    Mman_options.Self.debug ~level:2 "mask_msb(%x,%x,%x)(%x): ileft=%x, c=%d"
      max_int (lnot i) (max_int asr (abs !c))
      i !ileft !c;
    (* verify that only 0 until bound of i *)
    c0 := !c;
    while (!ileft land 1) == 0
    do
      c0 := !c0 - 1;
      ileft := !ileft asr 1
    done;
    Mman_options.Self.debug ~level:2 "mask_msb(%x,%x,%x)(%x): ileft=%x, c=%d"
      max_int (lnot i) (max_int asr (abs !c0))
      i !ileft !c;
    if !ileft == (max_int asr (abs !c0)) then
      !c
    else
      0
  end
  
(**
 * Get the expression for alignment of pointer type
*)
let transform_castE ae alg_cast alg_exp =
  let _ = Mman_options.Self.debug ~level:2 "build cast(%d) of (%d)@."
      alg_cast alg_exp in
  if (alg_cast == 1) ||
     ((alg_exp mod alg_cast) == 0)
  then
    ae
  else
    ((*  ((e1 + alg_cast - 1) / alg_cast) * alg_cast *)
      let ae_c = ACst (Integer.of_int alg_cast) in
      let ae_c_pred = ACst (Integer.of_int (alg_cast - 1)) in
      let ae_sum = ABinOp(AAdd, ae, ae_c_pred) in
      let ae_div = ABinOp(ADiv, ae_sum, ae_c) in
      let ae_mul = ABinOp(AMul, ae_div, ae_c) in
      begin
        Mman_options.Self.debug ~level:2 "done cast(%d) of (%d)@."
          alg_cast alg_exp;
        ae_mul
      end
    )
    

(**
 * Transform the field access vi.fi into an abstract expression
 * using the definition of feature fk.
 * The logic variable of the definition is substituted with vi.
 * The returned variable is the variable used for the feature.
*)
let transform_feature2exp
    (vi:Cil_types.varinfo) (fi:Cil_types.fieldinfo) (feat:int)
  : alval * aexp =
  let fk = (Mman_dabs.int2featurekind feat) in
  let lvar, fterm = Mman_dabs.get_feature_term
      (Mman_dabs.int2featurekind feat) in
  (* lvar is the logic variable used as argument of the feature definition *)
  let lvar = match lvar with
    | None -> raise (Error "Stored feature term")
    | Some(v) -> v
  in
  (* lvar shall be substituted by vi *)
  let fkvi = AFeat(fk, AVar(vi)) in
  (* compute the inverse of the fterm, i.e.,
   * if fk(lvar) = fterm(vi.fi) then return vi.fi = exp(vi,fk(vi))
  *)
  let rec inverse_def vi fi lvar ft fexp =
    match ft.term_node with
    | TConst(Integer(i,_)) ->
        true, ACst(i) 
          
    | Tnull ->
        true, ACst(Integer.zero)
          
    | TConst(_) ->
        raise (Not_dealt "Logical constant")
          
    | TLval(TVar(lv'),TNoOffset) -> (* shall be lvar *)
        if Cil_datatype.Logic_var.equal lvar lv' then
          true, ALval(AVar vi)
        else
          raise (Error "Logical variable not a parameter")
            
    | TLval(TMem(t'),TField(fi',TNoOffset)) ->
        (* shall be the lvar and fi *)
        (match t'.term_node with
         | TLval(TVar(lv'),TNoOffset) ->
             if (Cil_datatype.Logic_var.equal lvar lv') &&
                (Cil_datatype.Fieldinfo.equal fi fi')
             then
               false, fexp
             else
               raise (Error "Multiple field access")
                 
         | _ -> raise (Not_dealt "Access field")
        )
        
    | TLval(_, _) -> raise (Not_dealt "Left value")
                       
    | TSizeOf(t) ->
        true, ACst (Integer.of_int (Cil.bitsSizeOf t / 8))
          
    | TUnOp(op, t') ->
        (match op with
         | Neg -> inverse_def vi fi lvar t' (AUnOp(ANeg, fexp))
         | BNot -> inverse_def vi fi lvar t' (AUnOp(ABNot, fexp))
         | _ -> (* LNot *)
             raise (Not_dealt "Unary operator")
        )
        
    | TBinOp(op,t1,t2) ->
        let isfull1, e1 = inverse_def vi fi lvar t1 aexp_zero in
        let isfull2, e2 = inverse_def vi fi lvar t2 aexp_zero in
        if isfull1 && isfull2
        then (* field access is not here, return the built expression *)
          let aop = (match op with
              | PlusA | PlusPI -> AAdd
              | MinusA | MinusPI | MinusPP -> ASub
              | Mult -> AMul
              | Div -> ADiv
              | Mod -> AMod
              | _ -> raise (Not_dealt "Binary term")
            )
          in
          true, ABinOp(aop, e1, e2)
        else if isfull1
        then (* field access in t2, inverse expression and recall on t2 *)
          let aop, le, re = (match op with
              | PlusA | PlusPI -> ASub, fexp, e1
              | MinusA | MinusPI | MinusPP -> ASub, e1, fexp
              | Mult -> ADiv, fexp, e1
              | Div -> ADiv, e1, fexp
              | _ -> raise (Not_dealt "Binary operator")
            )
          in
          let _, ae = inverse_def vi fi lvar t2 (ABinOp(aop, le, re)) in
          true, ae
          
        else if isfull2
        then (* field access in t1, inverse expression and recall on t1 *)
          let aop , le, re = (match op with
              | PlusA | PlusPI -> ASub, fexp, e2
              | MinusA | MinusPI | MinusPP -> AAdd, fexp, e2
              | Mult -> ADiv, fexp, e2
              | Div -> AMul, fexp, e2
              | _ -> raise (Not_dealt "Binary operator")
            ) in
          let _, ae = inverse_def vi fi lvar t1 (ABinOp(aop, le, re))
          in
          true, ae
        else (* both parts are not full, error *)
          raise (Not_dealt "Two field accesses")
            
    | TCastE(_,t')
    | TCoerce(t',_) | TLogic_coerce(_,t') ->
        (* TODO: what kind of cast to do *)
        inverse_def vi fi lvar t' fexp
          
    | _ -> raise (Not_dealt "Term expression")
  in
  let _,ae = inverse_def vi fi lvar fterm (ALval fkvi)
  in fkvi, ae
     
(**
 * Replace ovi by nvi in expression ae
*)
let rec replace_vinfo ovi nvi ae =
  let _ = Mman_options.Self.debug ~level:2 "replace_vinfo %s/%s in %a@."
      nvi.vname ovi.vname pp_aexp ae
  in
  match ae with
  | ACst(_) -> ae
  | ALval(lv) ->
      ALval(replace_vinfo_lval ovi nvi lv)
        
  | AUnOp(op, ae1) -> AUnOp(op, replace_vinfo ovi nvi ae1)
                        
  | ABinOp(op, ae1, ae2) -> ABinOp(op,
                                   replace_vinfo ovi nvi ae1,
                                   replace_vinfo ovi nvi ae2)
                              
  | AAddrOf(lv) ->
      AAddrOf(replace_vinfo_lval ovi nvi lv)

and replace_vinfo_lval ovi nvi lv =
  match lv with
  | AVar(vi) ->
      if Cil_datatype.Varinfo.equal (vi) ovi
      then AVar(nvi)
      else lv
        
  | ASVar(_) -> lv
    
  | AMem(vi) ->
      if Cil_datatype.Varinfo.equal (vi) ovi
      then AMem(nvi)
      else lv
        
  | AFeat(fk, lv') ->
      AFeat(fk, replace_vinfo_lval ovi nvi lv')

  | AFld(lv', fi) ->
      AFld(replace_vinfo_lval ovi nvi lv', fi)
        
(**
 * Replace the hole in ae by aer
*)
let rec replace_hole ae aer =
  match ae with
  | ACst(_) -> ae
  | ALval(AVar(vi)) ->
      if (String.compare vi.vname Mman_svar.sv_hole_name) == 0 then
        aer
      else
        ae
  | ALval(_) 
  | AAddrOf(_) -> ae
    
  | AUnOp(op, ae1) ->
      AUnOp(op, replace_hole ae1 aer)
        
  | ABinOp(op, ae1, ae2) ->
      ABinOp(op, replace_hole ae1 aer, replace_hole ae2 aer)
        
(**
 * Transform the field access vi.fi into
 *   - an abstract left value represeting the feature
 *   - an abstract expression where the feature is used
 *
 * Memorize results in finfo2apron.
*)
let transform_field2exp
    (vi:Cil_types.varinfo)
    (fi:Cil_types.fieldinfo)
  : alval * aexp
  =
  try
    let lvo,e = Cil_datatype.Fieldinfo.Map.find fi (!finfo2aexp) in
    (match lvo with
     | None -> raise (Error "Feature variable not memorized")
     | Some(lv) ->
         (* replace in e all occurrences of the base of lv by vi *)
         let vio, lvn = (match lv with
             | AVar(i) -> i, AVar(vi)
             | AMem(i) -> i, AMem(vi)
             | AFeat(fk,AVar(i)) -> i, AFeat(fk,AVar(vi))
             | AFld(AVar(i),fi) -> i, AFld(AVar(vi),fi)
             | _ -> raise (Error "Symbolic variable inside Cil expression")
           ) in
         lvn, replace_vinfo vio (* by *) vi (* in *) e
    )
  with Not_found ->
    let featlst = Mman_dabs.get_field_feature fi in
    let _ = assert (featlst != []) in
    let ae_lst = List.map
        (fun fn -> transform_feature2exp vi fi fn)
        featlst
    in
    let get_res = fun resl ->
      (match resl with
       | [] -> raise (Error "Feature computation")
       | (v,e)::_ -> v, e
      )
    in
    let v,e = get_res ae_lst in
    begin
      finfo2aexp := Cil_datatype.Fieldinfo.Map.add fi (Some(v),e) !finfo2aexp;
      v, e
    end

(**
 * Return a feature left value fv and an expression with a hole ae
 *   such that fv=e(vi.fi)
*)
let transform_feature2exph vi fi fn = 
  let fk = (Mman_dabs.int2featurekind fn) in
  let lvar, fterm = Mman_dabs.get_feature_term (Mman_dabs.int2featurekind fn) in
  (* lvar is the logic variable used as argument of the feature definition *)
  let lvar = match lvar with
    | None -> raise (Error "Stored feature term")
    | Some(v) -> v
  in
  (* lvar is substituted by vi *)
  let fvar = AFeat(fk, AVar(vi)) in
  (* lval.fi is substituted by hvi *)
  let hvi = Cil.makeGlobalVar ~source:false ~temp:true
      Mman_svar.sv_hole_name fi.ftype in
  (* compute apron expression from term by replacing vars *)
  let rec def2exp ft =
    match ft.term_node with
    | TConst(Integer(i,_)) ->
        ACst(i)
    | TConst(_) ->
        raise (Not_dealt "Logical constant")
          
    | Tnull ->
        ACst(Integer.zero)

    | TLval(TVar(lv'),TNoOffset) -> (* shall be lvar *)
        if Cil_datatype.Logic_var.equal lvar lv' then
          ALval(AVar(vi)) (* substitute by vi *)
        else
          raise (Error "Logical variable not a parameter")

    | TLval(TMem(t'),TField(fi',TNoOffset)) ->
        (* shall be the lvar and fi *)
        (match t'.term_node with
         | TLval(TVar(lv'),TNoOffset) ->
             if (Cil_datatype.Logic_var.equal lvar lv') &&
                (Cil_datatype.Fieldinfo.equal fi fi')
             then
               ALval(AVar(hvi))
             else
               raise (Error "Multiple field access")

         | _ -> raise (Not_dealt "Access field term")
        )

    | TLval(_, _) -> raise (Not_dealt "Left value term")

    | TSizeOf(t) ->
        ACst(Integer.of_int (Cil.bitsSizeOf t / 8))

    | TUnOp(op, t') ->
        (match op with
         | Neg -> AUnOp(ANeg, def2exp t')
         | BNot -> AUnOp(ABNot, def2exp t')
         | _ -> (* LNot *)
             raise (Not_dealt "Unary operator")
        )

    | TBinOp(op,t1,t2) ->
        let e1 = def2exp t1 in
        let e2 = def2exp t2 in
        let aop = (match op with
            | PlusA | PlusPI -> AAdd
            | MinusA | MinusPI | MinusPP -> ASub
            | Mult -> AMul
            | Div -> ADiv
            | Mod -> AMod
            | _ -> raise (Not_dealt "Binary term")
          )
        in
        ABinOp(aop, e1, e2)

    | TCastE(ty,t') ->
        let aet = def2exp t' in
        let algty = Cil.bytesAlignOf ty in
        let algt = (if Logic_utils.isLogicPointerType t'.term_type then
                      Cil.bytesAlignOf (Logic_utils.logicCType t'.term_type)
                    else
                      1)
        in
        transform_castE aet algty algt

    | TCoerce(t',_)
    | TLogic_coerce(_,t')
      -> def2exp t'

    | _ -> raise (Not_dealt "Term expression")
  in
  let ae  = def2exp fterm in
  fvar, ae

(**
 * Return a feature variable and an expression using vi.fi
 *   obtained by replacing vi.fi by a hole.
*)
let transform_fdef2exp vi fi = 
  let featlst = Mman_dabs.get_field_feature fi in
  let _ = assert (featlst != []) in
  let ae_lst = List.map
      (fun fn -> transform_feature2exph vi fi fn)
      featlst
  in
  List.hd ae_lst

(**  
 * Transform Cil left value into
 *   - an abstract left value including the main active feature 
 *   - a context, i.e., an abstract expression using the variable as a hole
*)
let transform_lval2var_syn (lv:Cil_types.lval)
  : alval * aexp
  =
  let _ = (Mman_options.Self.debug ~level:2 "ASY:transform_lval2var: %a@."
             Printer.pp_lval lv) in
  match lv with
  | Var(vi), Cil_types.NoOffset ->
      (* simple variable *)
      let hvi = Cil.makeGlobalVar ~source:false ~temp:true
          Mman_svar.sv_hole_name
          vi.vtype
      in
      AVar(vi),
      ALval(AVar(hvi))
        
  | Var(vi), Cil_types.Field(fi,Cil_types.NoOffset) ->
      if Mman_options.OptSynAbstraction.get() then
        (* vi.fi is replaced by the hole in the definition of the feature *)
        transform_fdef2exp vi fi
      else
        let hvi = Cil.makeGlobalVar ~source:false ~temp:true
            Mman_svar.sv_hole_name
            fi.ftype
        in
        AFld(AVar(vi), fi),
        ALval(AVar(hvi)) (* TODO: clarify difference between var ptr and var struct *)
          
  | Mem(e'), Cil_types.Field(fi,Cil_types.NoOffset) ->
      (match e'.enode with
       | Lval(Var(vi),Cil_types.NoOffset) ->
           if Mman_options.OptSynAbstraction.get() then
             (* vi->fi is replaced by the hole in the definition of the feature *)
             transform_fdef2exp vi fi
           else
             let hvi = Cil.makeGlobalVar ~source:false ~temp:true
                 Mman_svar.sv_hole_name
                 fi.ftype
             in
             AFld(AVar(vi), fi),
             ALval(AVar(hvi))
               
       | _ -> raise (Not_dealt "Lval(Mem ...) expression")
      )
  | _ ->
      raise (Not_dealt "Lval expression")

(**
 * Transform Cil left value into
 * an abstract expression using feature variables.
*)
let transform_lval2exp (vi:Cil_types.varinfo) (off:Cil_types.offset) =
  match off with
  | Cil_types.NoOffset ->
      (* simple variable *)
      let nvi =
        if (String.compare vi.vname Mman_svar.sv_hole_name) == 0
        then Cil.makeGlobalVar ~source:false ~temp:true
            Mman_svar.sv_hole_name vi.vtype
        else
          vi
      in
      let _ = Mman_options.Self.debug ~level:2 "lval2exp: found %s"
          nvi.vname
      in
      ALval(AVar nvi)
        
  | Cil_types.Field(fi,Cil_types.NoOffset) ->
      (* vi->fi defined using the feature *)
      if Mman_options.OptSynAbstraction.get() then
        let _, ae = transform_field2exp vi fi in
        ae
      else
        ALval(AFld(AVar(vi), fi))

  | _ ->
      raise (Not_dealt "Lval expression")

(** 
 * Transform Cil expressions into contexts SYNTACTICALLY
 * Memoize results in exp2aexp
*)
let rec transform_exp_aux (exp: Cil_types.exp) 
 :aexp
 =
  try 
    let _, ae = Cil_datatype.Exp.Map.find exp (!exp2aexp) in
    ae
  with Not_found ->
    let ae =
      match exp.enode with
      | Const(c) ->

          ACst(transform_cst c)  
          (*transform_cst c *)

      | Lval(Var(vi),off) ->
          transform_lval2exp vi off

      | Lval(Mem(e'),off) ->
          (match e'.enode with
           | Lval(Var(vi),Cil_types.NoOffset) ->
               (* vi->fi is replaced by the hole
                * in the definition of the feature *)
               transform_lval2exp vi off

           | _ -> raise (Not_dealt "Lval(Mem ...) expression")
          )

      | SizeOf(t) ->
          ACst(Integer.of_int (Cil.bitsSizeOf t / 8))

      | AlignOf(t) ->
          ACst(Integer.of_int  (Cil.bytesAlignOf t))

      | UnOp(op, e, _) ->
          (match op with
           | Neg -> let ae1 = transform_exp_aux e in
               AUnOp(ANeg, ae1)
           | BNot -> let ae1 = transform_exp_aux e in
               AUnOp(ABNot, ae1)
           | _ ->
               raise (Not_dealt "Unary operator")
          )

      | BinOp(op,e1,e2,t) ->
          (match op with
           | PlusA | MinusA ->
               let ae1 = transform_exp_aux e1 in
               let ae2 = transform_exp_aux e2 in
               let aop =
                 if op == PlusA then AAdd
                 else ASub
               in
               ABinOp(aop, ae1, ae2)

           | PlusPI | MinusPI ->
               let ae1 = transform_exp_aux e1 in
               let ae2 = transform_exp_aux e2 in
               let tptr = (match Cil.unrollTypeDeep t with
                   | TPtr(t',_) -> t'
                   | _ -> raise (Error "Bad pointer type")
                 ) in
               let aeszof = ACst(Integer.of_int  (Cil.bitsSizeOf tptr / 8)) in
               let ae2sz = ABinOp(AMul, ae2, aeszof) in
               let aop =
                 if op == PlusPI then AAdd
                 else ASub
               in
               ABinOp(aop, ae1, ae2sz)

           | MinusPP ->
               let ae1 = transform_exp_aux e1 in
               let ae2 = transform_exp_aux e2 in
               ABinOp(ASub, ae1, ae2)

           | Mult | Div | Mod ->
               let ae1 = transform_exp_aux e1 in
               let ae2 = transform_exp_aux e2 in
               let aop = match op with
                 | Mult -> AMul
                 | Div -> ADiv
                 | _ -> AMod
               in
               ABinOp(aop, ae1, ae2)

           | Shiftlt | Shiftrt | BAnd | BXor | BOr ->
               (* cases dealt for a constant expr at left -- at least *)
               let lint = Cil.constFoldToInt e1 in
               let rint = Cil.constFoldToInt e2 in
               (match lint, rint with
                | None, None -> raise (Not_dealt "Bit vector expression")
                | Some(i1), Some(i2) ->
                    let res = (match op with
                        | Shiftlt -> Integer.shift_left i1 i2
                        | Shiftrt -> Integer.shift_right i1 i2
                        | BAnd -> Integer.logand i1 i2
                        | BXor -> Integer.logxor i1 i2
                        | _ -> Integer.logor i1 i2)
                    in
                    ACst(res)
                 
                | Some(i), None | None, Some(i) ->
                    let aint = ACst(i) in
                    let ae1 = if lint <> None then aint
                      else transform_exp_aux e1
                    in
                    let ae2 =
                      if rint <> None then aint
                      else transform_exp_aux e2
                    in
                    let pow2_ae2 =
                      if rint <> None then ACst(Integer.of_int
                                                  (1 lsr (Integer.to_int i)))
                      else ACst(Integer.zero)
                    in
                    let ae = if lint <> None then ae2 else ae1 in
                    (match op with
                     | Shiftlt ->
                         ABinOp(AMul, ae1, pow2_ae2)
                     (* TODO: obtain also modulo constraints *)
                     | Shiftrt ->
                         ABinOp(ADiv, ae1, pow2_ae2)

                     | BAnd ->
                         (* particular case of a lsb mask, i.e., i = (2^c - 1)
                          * leads to a modulo or get_bitfield operation
                         *)
                         let c = mask_of_int i in
                         if c > 0 then
                           (* 1 << c == (i+1) *)
                           let succi = Integer.succ i in
                           (* ae % succi *)
                           ABinOp(AMod, ae, ACst(succi))
                           (* AUnOp(ABGet(c-1,0), ae) *)
                         else if c < 0 then
                           (* i = ~(2^{-c} -1) *)
                           let pow2_c = (Integer.shift_left
                                           Integer.one (Integer.of_int (-c)))
                           in
                           (* (ae / pow2_c) * pow2_c *)
                           let apow2 = ACst(pow2_c) in
                           let aediv = ABinOp(ADiv, ae, apow2) in
                           ABinOp(AMul, aediv, apow2)
                         else
                           begin
                             Mman_options.Self.debug ~level:2 "BAnd %a %d(<>2^%d-1)@."
                               pp_aexp ae
                               (Integer.to_int i)
                               c
                             ;
                             raise (Not_dealt "BAnd expression")
                           end

                     (* TODO: identify get_bitfield expression *)

                     | BOr ->
                         (* particular case of a lsb mask, i.e., i = (2^c - 1) 
                          * leads to an arithmetic or set_bitfield expression     
                         *)
                         let c = mask_of_int i in
                         if c > 0 then
                           (* 1 << c == (i+1) *)
                           let succi = Integer.succ i in
                           (* (ape / succi) * succi + i *)
                           let ai = ACst(i) in
                           let asucci = ACst(succi) in
                           let aediv = ABinOp(ADiv, ae, asucci) in
                           let aemul = ABinOp(AMul, aediv, asucci) in
                           ABinOp(AAdd, aemul, ai)
                         else
                           raise (Not_dealt "Bor expression")
                     (* TODO: identify set_bitfield expression *)
                             
                     | _ -> raise (Not_dealt "Bitvector expression")
                    )
               )
           | _ -> (* IndexPI _, Cmp _,
                     LAnd, LOr *)
               raise (Not_dealt "Binary expression")
          )
      | CastE(ty,e1) ->
          let ae1 = transform_exp_aux e1 in
          let algty = Cil.bytesAlignOf ty in
          let alge1 = (if Cil.isPointerType (Cil.typeOf e1) then
                         Cil.bytesAlignOf (Cil.typeOf e1)
                       else algty) in
          transform_castE ae1 algty alge1

      | _ -> (* SizeOfE _, SizeOfString _, AlignOfE _,
                AddrOf _, StartOf _, Info _ 
             *)
          raise (Not_dealt "Expression")
    in
    begin
      exp2aexp := Cil_datatype.Exp.Map.add exp (None,ae) !exp2aexp;
      ae
    end

(**
 * Transform a Cil expression into an abstract expression
 * either directly (to apply semantic transformations)
 * or syntactically (to apply syntactic transformations)
*)
let transform_exp (exp: Cil_types.exp) =
    transform_exp_aux exp

(**
 * Transform the Cil assignment lv:=exp into an abstract assignment 
*)
let transform_assign (lv: Cil_types.lval) (exp: Cil_types.exp)
  : alval list * aexp list
  = 
  (* deals with both pure and syntactic transformation *)
  let alv, ae1 = transform_lval2var_syn lv in
  let _ = (Mman_options.Self.debug ~level:1 "transform_assign: %a:=%a[%a]@."
             pp_alval alv 
             pp_aexp ae1 
             Printer.pp_exp exp)
  in
  let ae2 = transform_exp_aux exp in
  let ae = replace_hole (* in *) ae1  (* by *) ae2 in
  let _ = (Mman_options.Self.debug ~level:1 "\tto: %a:=%a@."
             pp_alval alv pp_aexp ae)
  in
  [alv], [ae]


(** 
 * Translate the Cil expression to a list of abstract constraints
 * using features or fields.
 * pre-condition: only one atomic condition in CIL 
 * post-condition: build (c, not c) 
*)
let rec transform_guard (exp: Cil_types.exp)
  : aconstr * aconstr
  =
  (* check if the translation is already done *)
  try
    Mman_options.Self.debug ~level:2 "transform guard %a@."
      Printer.pp_exp exp;
    Cil_datatype.Exp.Map.find exp (!exp2aguard)
  with Not_found ->
    let typ_exp = Cil.typeOf exp in
    let eL, eR, opP, opN =
      try
        transform_guard_bool exp
      with _ ->
        transform_guard_tobool exp
    in
    let _ = Mman_options.Self.debug ~level:2 "transform guard: (%a) %a (op) %a@."
        Printer.pp_typ typ_exp
        Printer.pp_exp eL
        Printer.pp_exp eR
    in
    let aeL = transform_exp eL in
    let aeR = transform_exp eR in
    let apos = ACmp(opP, aeL, aeR) in
    let aneg = ACmp(opN, aeL, aeR) in
    let _ = Mman_options.Self.debug ~level:2 "to: (true)%a\n\t  (false)%a@."
        pp_aconstr apos pp_aconstr aneg
    in
    begin
      exp2aguard := Cil_datatype.Exp.Map.add exp (apos, aneg) !exp2aguard;
      apos, aneg
    end

and transform_guard_bool exp =
  match exp.enode with
  | Cil_types.BinOp (op, eL, eR, _) ->
      (match op with
       | Cil_types.Eq -> eL, eR, AEQ, ADISEQ
                         
       | Cil_types.Lt -> eR, eL, ASUP, ASUPEQ
       | Cil_types.Le -> eR, eL, ASUPEQ, ASUP
       | Cil_types.Gt -> eL, eR, ASUP, ASUPEQ
       | Cil_types.Ge -> eL, eR, ASUPEQ, ASUP
       | _ ->
           raise (Not_dealt "Binary Boolean expression")
      )

  | Cil_types.UnOp (LNot, eN, _) ->
      let eL1, eR1, opP1, opN1 = transform_guard_tobool eN in
      (match opP1, opN1 with
       | AEQ, ADISEQ -> eL1, eR1, ADISEQ, AEQ
       | ADISEQ, AEQ -> eL1, eR1, AEQ, ADISEQ
       | ASUPEQ, ASUP -> eR1, eL1, ASUP, ASUPEQ
       | ASUP, ASUPEQ -> eR1, eL1, ASUPEQ, ASUP
       | _, _ ->
           raise (Not_dealt  "Boolean operator")
      )
  | _ ->
      raise (Not_dealt  "Unary Boolean expression")

and transform_guard_tobool exp =
  exp, Cil.zero exp.eloc, ADISEQ, AEQ

  
(**
 * Generate the constraints such that the limits of type [typ] are satisfied.
 * Code from plugins/value/domains/apron/apron_domain.ok.ml
*)
let rec coerce_var (vi: Cil_types.varinfo) (vtyp: Cil_types.typ) 
  : aconstr list
  =
  match Cil.unrollType vtyp with
  | TInt (ikind, _) | TEnum ({ ekind = ikind}, _) ->
      let signed = Cil.isSigned ikind in
      if ((signed && Kernel.SignedOverflow.get ())
          || ((not signed) && Kernel.UnsignedOverflow.get ()))
      then
        []
      else
        let inf, sup, _ = bounds_of_typ ikind in
        let aevar = ALval(AVar(vi)) in
        [(ACmp(ASUPEQ, aevar, ACst(Integer.of_float (Mpzf.to_float inf))));
         (ACmp(ASUPEQ, ACst(Integer.of_float (Mpzf.to_float sup)), aevar))]
        
  | TPtr(_, _) ->
      let aevar = ALval(AVar(vi)) in
        [(ACmp(ASUPEQ, aevar, ACst(Integer.zero)))]
        (* TODO: introduce alignment wrt base type *)

  | _ -> []

and bounds_of_typ ikind =
  let bitsize = Cil.bitsSizeOfInt ikind in
  let size = Mpz.init () in
  Mpz.ui_pow_ui size 2 bitsize;
  let size = Mpzf.of_mpz size in
  if Cil.isSigned ikind
  then
    let half = Mpz.init () in
    Mpz.ui_pow_ui half 2 (bitsize - 1);
    let half = Mpzf.of_mpz half in
    Mpzf.neg half, Mpzf.sub_int half 1, size
  else
    Mpzf.of_int 0, Mpzf.sub_int size 1, size
                     
(** 
 * Transform a call to sbrk into an abstract sbrk
*)
let transform_sbrk
    (lv: Cil_types.lval option) (argl:Cil_types.exp list) 
  : alval list * aexp list (* aconstr list *)
  =
  let ae_sz = match argl with
    | e::_ -> transform_exp e(* TODO:transform exp *)
    | _ ->
        begin
          Mman_options.Self.warning "Bad number of arguments for 'sbrk', taken 0@.";
          aexp_zero
        end
  in
  (* szexp shall be positive, otherwise our analysis is not correct *)
  (* let ac_pre = ACmp(ASUPEQ, ae_sz, aexp_zero) in *)
  (* do the assignments lv := _hli; _hli := _hli + szexp *)
  (* let vi_hli = Cil.makeGlobalVar ~source:false ~temp:true
      Mman_svar.sv_hli_name Cil.voidPtrType
  in
  let alv_hli = AVar(vi_hli) in
  let aex_hli = ALval(alv_hli) in
  *)
  let aex_sbrk = ASbrk(ae_sz) in
  let alv1l, ae1l = (match lv with
    | None -> [], []
    | Some(v) ->
        let alv1, ae1 = transform_lval2var_syn v in
        let _ = (Mman_options.Self.debug ~level:1
                   "ASY:transform_sbrk: %a:=%a[sbrk(%a)]@."
                   pp_alval alv1 
                   pp_aexp ae1 
                   pp_aexp ae_sz)
        in
        let ae1f = replace_hole (* in *) ae1 (* by *) aex_sbrk in
        let _ = (Mman_options.Self.debug ~level:1 "\tto: %a:=%a@."
                   pp_alval alv1 
                   pp_aexp ae1f)
        in
        [alv1], [ae1f]
    )
  in
  (*
  let ae2f = ABinOp(AAdd, aex_hli, ae_sz) in
  let _ = (Mman_options.Self.debug ~level:1 "\tto: %a:=%a@."
             pp_alval alv_hli pp_aexp ae2f)
  in
  let avl = alv1l@[alv_hli] in
  let ael = ae1l@[ae2f] in 
  avl, ael, [ac_pre]
  *)
  alv1l, ae1l


(** 
 * Transform a call to sbrk into
 * - a list of assignments
 * - a pre-condition 
*)
let transform_sbrk_dw
    (lv: Cil_types.lval option) (argl:Cil_types.exp list)
  : alval list * aexp list * aconstr list
  =
  let ae_sz = match argl with
    | e::_ -> transform_exp e
    | _ ->
        begin
          Mman_options.Self.warning "Bad number of arguments for 'sbrk', taken 0@.";
          aexp_zero
        end
  in
  (* szexp shall be positive, otherwise our analysis is not correct *)
  let ac_pre = ACmp(ASUPEQ, ae_sz, aexp_zero) in
  (* do the assignments lv := _hli; _hli := _hli + szexp *)
  let vi_hli = Cil.makeGlobalVar ~source:false ~temp:true
      Mman_svar.sv_hli_name Cil.voidPtrType
  in
  let alv_hli = AVar(vi_hli) in
  let aex_hli = ALval(alv_hli) in
  let alv1l, ae1l = (match lv with
    | None -> [], []
    | Some(v) ->
        let alv1, ae1 = transform_lval2var_syn v in
        let _ = (Mman_options.Self.debug ~level:1
                   "ASY:transform_sbrk: %a:=%a[sbrk(%a)] (MDW)@."
                   pp_alval alv1 pp_aexp ae1 pp_aexp ae_sz)
        in
        let ae1f = replace_hole (* in *) ae1 (* by *) aex_hli in
        let _ = (Mman_options.Self.debug ~level:1 "\tto: %a:=%a@."
                   pp_alval alv1 pp_aexp ae1f)
        in
        [alv1], [ae1f]
    )
  in
  let ae2f = ABinOp(AAdd, aex_hli, ae_sz) in
  let _ = (Mman_options.Self.debug ~level:1 "\tto: %a:=%a@."
             pp_alval alv_hli pp_aexp ae2f)
  in
  let avl = alv1l@[alv_hli] in
  let ael = ae1l@[ae2f] in 
  avl, ael, [ac_pre]



(**
 * Build initial constraints and assignments of globals
*)
let init_globals ()
  : alval list * aexp list * aconstr list
  =
  let v1_vn = ref [] in
  let e1_en = ref [] in
  let c1_cn = ref [] in
  let init_global vi ii =
    (** see condition for collecting globals in penvs_init_globals@mman_env.ml *)
    if (vi.vstorage == Cil_types.Static) ||
       (Mman_dabs.is_chunk_struct vi.Cil_types.vtype) ||
       (Mman_dabs.is_chunk_ptr vi.Cil_types.vtype)
    then
    match ii.init with
    | Some(Cil_types.SingleInit(ei)) ->
        (* assert: the initialisation expression cannot use contexts *)
        let aei = transform_exp ei in
        let lvi = AVar(vi) in
        begin
          v1_vn := !v1_vn @ [lvi];
          e1_en := !e1_en @ [aei]
        end
    | Some(Cil_types.CompoundInit(sty,ls)) ->
        (* deal with struct init if it is of type chunk *)
        if Mman_dabs.is_chunk_struct sty
        then
          begin
            (* mark location of vi to be allocated *)
            (* init_galloc := !init_galloc @ [Mman_asyn.AVar(vi)]; *)
            (* iterate over fields initialized to obtain initialisation of features *)
            (List.iter
               (fun (ofs, fii) ->
                  match fii with
                  | Cil_types.SingleInit(ei) ->
                      begin
                        match ofs with
                        | Field(fi,_) ->
                            let al, _ex = transform_field2exp vi fi in
                            let aex = transform_exp ei in
                            v1_vn := !v1_vn @ [al];
                            e1_en := !e1_en @ [aex];
                        | _ -> ()
                      end
                  | _ -> ()
               )
               ls)
          end
    (* else, nothing to do *)
          
    | None ->
        (* depend on the type *)
        let vty = vi.vtype in
        if (Cil.isUnsignedInteger vty) ||
           (Cil.isPointerType vty)
        then
          let lvi = AVar(vi) in
          (* add constraint lvi  >= 0 *)
          c1_cn := !c1_cn @ [ACmp(ASUPEQ, ALval(lvi), aexp_zero)]
        else
          ()
  in
    (* Iterate over globals *)
    let _ = Globals.Vars.iter_in_file_order init_global  in
    (* add constraint on __hli and __hst *)
    
    (*
    let vi_hli = Cil.makeGlobalVar ~source:false ~temp:true
        Mman_svar.sv_hli_name Cil.voidPtrType in
    let vi_hst = Cil.makeGlobalVar ~source:false ~temp:true
        Mman_svar.sv_hst_name Cil.voidPtrType in
    let hli_ge_0 = ACmp(ASUPEQ, 
      (AVar(vi_hli)), aexp_zero) in
    let hst_eq_hli = ACmp(AEQ, ABinOp(ASub, ALval(AVar(vi_hli)),
                                      ALval(AVar(vi_hst))), aexp_zero) in 
    let _ = (c1_cn := !c1_cn @ [hli_ge_0; hst_eq_hli]) in*)


   (* get __hli and __hst from penv *)
   let hli_ge_0 = ACmp(ASUPEQ, ALval(ASVar(Mman_svar.sv_mk_hli.id)), aexp_zero) in                (* FB *)
   let hst_eq_hli = ACmp(AEQ, ABinOp(ASub, ALval(ASVar(Mman_svar.sv_mk_hli.id)),
                                      ALval(ASVar(Mman_svar.sv_mk_hst.id))), aexp_zero) in        (* FB *)
   let _ = (c1_cn := !c1_cn @ [hli_ge_0; hst_eq_hli]) in
    begin
      (Mman_options.Self.debug ~level:1 "Global inits: %a := %a\nmeet %a @."
         (fun fmt lv -> (List.iter (fun vi -> pp_alval fmt vi) lv)) !v1_vn
         (fun fmt le -> (List.iter (fun ei -> pp_aexp fmt ei) le)) !e1_en
         (fun fmt lc -> (List.iter (fun ei -> pp_aconstr fmt ei) lc)) !c1_cn);
      !v1_vn, !e1_en, !c1_cn
    end

(************************************************************************ *)
(** {1 Reduction to a symbolic environment} *)
(************************************************************************ *)

(**
 * Transforms expression to use only symbolic vars and 
 * returns true iff the expression is a pointer left value
*)
let rec to_senv (sei: Mman_env.t) (ae: aexp)
  : aexp * bool
  =
  match ae with
  | ACst(_) -> ae, false
               
  | ALval(lv) ->
      let lv', isptr = to_senv_lval sei lv false in
      ALval(lv'), isptr
      
  | AUnOp (op, ae') ->
      let sae, _ = to_senv sei ae' in
      AUnOp(op, sae), false

  | ABinOp (op, aeL, aeR) ->
      let seaL, _ = to_senv sei aeL in
      let seaR, _ = to_senv sei aeR in
      ABinOp(op, seaL, seaR), false

  | AAddrOf(lv) ->
      let lv', _ = to_senv_lval sei lv true in
      ALval(lv'), true
      

and to_senv_lval (sei: Mman_env.t) (lv: alval) (isLoc: bool)
  : alval * bool
  =
  match lv with
  | AVar(vi) ->

      let svi = Mman_env.senv_getvar sei (Mman_svar.sv_mk_var vi) in
      
      let svil = if isLoc then
          Mman_env.senv_getvar sei
            (Mman_svar.sv_mk_loc (Mman_svar.Svar.id svi) (Mman_svar.svtype vi))
        else
          svi
      in
      let isptr = Cil.isPointerType vi.vtype in
      ASVar(Mman_svar.Svar.id svil), (if isLoc then true else isptr)

  | ASVar(svid) ->
      let svi = Mman_env.senv_getvinfo sei svid in
      let svil = if isLoc then
          Mman_env.senv_getvar sei
            (Mman_svar.sv_mk_loc (Mman_svar.Svar.id svi) (svi.Mman_svar.typ))
        else
          svi
      in
      let isptr = (match svi.Mman_svar.typ with
          | Mman_svar.SVPtr _ -> true
          | _ -> false)
      in
      ASVar(Mman_svar.Svar.id svil), (if isLoc then true else isptr)

  | AMem(vi) -> (* may appear in taking the field/feature, i.e., -> in C *)
      let svi = Mman_env.senv_getvar sei (Mman_svar.sv_mk_var vi) in
      let svid = if isLoc then (* & * vi == vi *)
          (Mman_svar.Svar.id svi)
        else (match svi.Mman_svar.kind with
            | Mman_svar.Loc(svid) -> (* & * vi = vi *)
                svid
            | _ -> raise (Not_dealt "Memory of a symbolic value")
          )
      in
      let isptr = Mman_svar.isPtrType (Mman_env.senv_getvtyp sei svid) in
      ASVar(svid), isptr

  | AFeat(fk, lvp) ->
      if isLoc then
        raise (Not_dealt "Location of a feature")
      else
        let slv, _ = to_senv_lval sei lvp false in
        let svid = (match slv with
          | ASVar(id) -> id
          | _ -> raise (Not_dealt "Feature of not a chunk"))
        in
        let svi =
          Mman_env.senv_getvar sei (Mman_svar.sv_mk_feat (Some(svid)) fk)
        in
        let isptr = Mman_svar.isPtrType svi.Mman_svar.typ in
        ASVar(Mman_svar.Svar.id svi), isptr
        
  | AFld(lvp, fi) -> (* TODO: not yet translated to a feature *)
      let slv, _ = to_senv_lval sei lvp false in
      let isptr = (Cil.isPointerType fi.Cil_types.ftype) in
      AFld(slv, fi), isptr
      
      
(**
 * Destructures the left value expression into components 
*)
let split_lval (sei: Mman_env.t) (ae: aexp)
  : (* Mman_svar.Svar.t * Mman_dabs.feature_kind option * Cil_types.fieldinfo option *)
    Mman_svar.Svar.t * Mman_svar.Svar.t option * Cil_types.fieldinfo option
  =
  match ae with
  | ALval(lv) ->
      let slv, isptr = to_senv_lval sei lv false in
      let _ = assert (isptr) in
      (match slv with
       | ASVar(svid) ->
           (Mman_env.senv_getvinfo sei svid), None, None
       | AFeat(fk, ASVar(svid)) ->
        let svi = Mman_env.senv_getvar sei (Mman_svar.sv_mk_feat (Some(svid)) fk)
        in
           (Mman_env.senv_getvinfo sei svid), 
           (* Some fk, *) Some svi,
     None
       | AFld(ASVar(svid), fi) ->
           (Mman_env.senv_getvinfo sei svid), 
     None, 
           Some fi
       | _ -> raise (Not_dealt "Composed left value")
      )
      
  | AAddrOf(lv) ->
      let slv, isptr = to_senv_lval sei lv true in
      let _ = assert (isptr) in
      (match slv with
       | ASVar(svid) -> (Mman_env.senv_getvinfo sei svid), None, None
       | _ -> raise (Not_dealt "Address of feature or field")
      )
      
  | _ -> raise (Error "Not a left value")


(************************************************************************ *)
(** {1 Typing abstract tree} *)
(************************************************************************ *)

(** Return the location to which is expression reduces, if any.
*)
let rec get_saddr (ae: aexp)
  : Mman_svar.svid option
  =
  match ae with
  | ACst(c) ->
      if Integer.is_zero c then
        Some(Mman_svar.svid_null)
      else
        None
  | ALval(alv) ->
      get_saddr_lval alv

  | _ -> None (* shall be a reduced expression *)

and get_saddr_lval (lv: alval)
  : Mman_svar.svid option
  =
  match lv with
  | ASVar(svi) -> Some(svi)
  | _ -> None
