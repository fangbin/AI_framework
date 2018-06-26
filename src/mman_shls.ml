(**************************************************************************)
(*                                                                        *)
(*  This file is part of CELIA.                                           *)
(*                                                                        *)
(*  Copyright (C) 2016 *)
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

(** Abstract domain for list shape of free set for memory allocators *)

(* ********************************************************************** *)
(* {1 Abstract value module} *)
(* ********************************************************************** *)

module Model = struct

  type value = Bot | Top | S of Mman_shape.sha_value

  (** Basic functions used in Datatype.S *)
  let pretty_code_intern (p_caller:Type.precedence) fmt (d: value) =
    let pp fmt = match d with
      | Bot -> Format.fprintf fmt "Bot"
      | Top -> Format.fprintf fmt "Top"
      | _ -> Format.fprintf fmt "Shape"
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

  let compare_intern (d0: value) (d1: value) =
    match d0, d1 with
    | Bot, Bot | Top, Top -> 0
    | Bot, _ | _, Top -> -1
    | Top, _ | _, Bot -> 1
    | S(g1), S(g2) -> Mman_shape.graph_compare g1 g2  (* TODO *)

  let hash_intern (d: value) =
    match d with
    | Bot -> 0
    | Top -> 1
    | _ -> 2 (* TODO *)

  let copy_intern (d: value) = d (* TODO *)
    
  (** Module Datatype.S *)
  include Datatype.Make(struct
      type t = value
      let name = "mman_shls.model.t"
      let rehash = Datatype.identity
      let structural_descr = Structural_descr.t_unknown
      let reprs = [ Bot; Top ]
      let equal = Datatype.from_compare
      let compare = compare_intern
      let hash = hash_intern
      let copy = copy_intern
      let internal_pretty_code = pretty_code_intern
      let pretty = Datatype.from_pretty_code
      let varname _ = "sh"
      let mem_project = Datatype.never_any_project
    end)

  (** Tests useful for this symbolic value *)
  let is_bottom (d: value) = (d == Bot)

  let is_top (d: value) = (d == Top)

  let is_eq (_h: Mman_env.envmap) (d0: value) (d1: value) =
    match d0, d1 with
    | Bot, Bot 
    | Top, Top -> true
    | S(g1), S(g2) ->Mman_shape.is_eq _h g1 g2   (* TODO *)
    | _, _ -> false
      
  (** Only some lattice operations are useful
   *  because it is not used as an abstract domain
  *)
  let is_leq (_h: Mman_env.envmap) (d0: value) (d1: value) =
    match d0, d1 with
    | Bot, _ | _, Top -> true
    | _, Bot | Top, _ -> false
    | S(g1), S(g2) -> Mman_shape.is_leq _h g1 g2 (* TODO *)
      
  let top = Top
  let dummy_top = Top

  let bottom = Bot
  let dummy_bot = Bot

  (** Abstract transformers *)
  let meet_exp (d: value) (op: Mman_asyn.acmpop) (stm:Cil_types.stmt)
      (svL: Mman_svar.Svar.t)
      (fkL: Mman_dabs.feature_kind option) (flL: Cil_types.fieldinfo option)
      (svR: Mman_svar.Svar.t)
      (fkR: Mman_dabs.feature_kind option) (flR: Cil_types.fieldinfo option)
    = 
    Top
    (* Find the svar that represents the feature from the enviornment ei *)
                 
    (*todo*)
    
   let meet_exp_ (d: value) (op: Mman_asyn.acmpop)  
      (svL: Mman_svar.Svar.t)
      (fkL: Mman_svar.Svar.t option) 
      (svR: Mman_svar.Svar.t)
      (fkR: Mman_svar.Svar.t option)  
     =
    match d with
    | Bot -> Mman_shape.bottom
    | Top -> Mman_shape.top
    | S(g) -> 
            begin
              match fkL,fkR with
              | None,None -> Mman_shape.guard_x_y svL svR g 
              | Some(f1),None ->  
                     Mman_shape.guard_x_fi_y svL svR f1 g 
              | None,Some(f2) ->  
                     Mman_shape.guard_x_y_fi svL svR f2 g 
              | Some(f1),Some(f2)-> 
                     Mman_shape.guard_x_fi_y_fi svL svR f1 f2 g 
            end
end




