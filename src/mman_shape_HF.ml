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


open Mman_svar;;

(* Shape representation
  Nodes of H and F are individual shapes and separate
  the shared nodes are not really shared but with the
  same symbolic variables.

  Shape is represented by set of a N->eds (Node to Edge) mapping.
 *)

(* symbolic vars represent each node *)
type add = Mman_svar.svarinfo

(* symbolic vars represnet words *)
type words = Mman_svar.svarinfo

(* gost var of nil *)
let sv_mk_nil ={
    id = -1;
    kind = Null;
    typ = SVAddr
  }

(* svar nil *)
let sv_nil = sv_mk_nil

(* accessing fields(edge) belongs to which level *)
type edge_level =
    HE  (* H level edge *)
  | FE  (* F level edge *)
  | PE  (* P(previous) level edge *)
  | ST  (* points to *)
  | OUT (* otherwise *)


type H_edge_t =
    BLK
  | CHD
  | CHK
  | CLS
  | HPT  (* star edge *)

type F_edge_t =
    FCK
  | FLS
  | FPT  (* star edge *)


let lel_to_string l =
  match l with
  | H -> "H"
  | F -> "F"
  | HF -> "HF"
  | PVar -> "PVR"


(* block edge info *)
type blk_info =  {
    mutable a: add;     (* address of start *)
    mutable b: add;     (* address of end *)
  }

(* chunk list edge info *)
type cls_info = {
    mutable a: add;     (* address of start *)
    mutable b: add;     (* end address *)
    mutable cw: words;  (* words *)
  }

(* chunk header edge info *)
type chd_info = {
    mutable a: add;     (* address of start *)
    mutable b: add;     (* address of end *)
    mutable csz: add;   (* the size of chunk *)
    mutable cf: bool;   (* the status of chunk *)
  }

(* chunk edge info *)
type chk_info = {
    mutable a: add;     (* address of start *)
    mutable b: add;     (* address of end *)
    mutable csz: add;   (* the size of chunk *)
}

(* chunk edge info *)
type chk_info = {
    mutable a: add;     (* address of start *)
    mutable b: add;     (* address of end *)
    mutable csz: add;   (* the size of chunk *)
}

(* fls(a,b)[W] *)
type fls_info = {
    mutable a: add;     (* address of start *)
    mutable b: add;     (* end address *)
    mutable fw : words; (* W, global variable  *)
  }

(* fck(a,b) *)
type fck_info =  {
    mutable a: add ;
    mutable fn: add ;
  }

  (* fck(a,b) *)
type H_pto_info =  {
    mutable pvar: add ;
    mutable node: add ;
  }

  (* fck(a,b) *)
type F_pto_info =  {
    mutable pvar: add ;
    mutable node: add ;
  }

(* types of edge, each edge represent the relation between
 * different memory region which is presented by node
*)
type H_edge_info_type =
    Blk_info of blk_info
  | Chd_info of chd_info
  | Cls_info of cls_info
  | Chk_info of chk_info

type F_edge_info_type =
    Fck_info of fck_info
  | Fls_info of fls_info
  | Pto_info of pto_info


(* the info of edge *)
type H_node_info = {
   mutable ed_H: edge_info_type option;    (** the edge of F (next link) *)
   mutable ed_st: edge_info_type option;   (** the edge of star *)
   mutable is_ano : bool;                  (** the node is anoymous node or not *)
   }

(* the info of edge *)
type H_node_info = {
   mutable ed_H: edge_info_type option; (** the edge of F (next link) *)
   mutable ed_st: edge_info_type option;(** the edge of star *)
   mutable is_ano : bool;               (** the node is anoymous node or not *)
 }

(* edge level *)
let ed_lel (ed: edge_info_type) =
  match ed with
  | Fck_info _ | Fls_info _ | Pls_info _ -> FE
  | Blk_info _ | Chd_info _ | Cls_info _ | Chk_info _  -> HE
  | Pto_info _ -> ST

(*****************************************************
 * operation - new edge
 *****************************************************)


(**TODO*)
let new_ed_h = None

(** new empty fls_info edge*)
let new_emp_fls =
  Some(Fls_info {
        a = sv_nil;
        b = sv_nil;
        fw = sv_nil
    })

(** new empty pls_info edge*)
let new_emp_pls =
  Some(Pls_info {
        a = sv_nil;
        b = sv_nil;
        pw = sv_nil
    })

(** new empty fck_indo edge *)
let new_emp_fck =
  Some(Fck_info {
        fn = sv_nil;
        fp = sv_nil
    })

(** new empty cls_info edge *)
let new_emp_cls =
  Some(Cls_info{
        a = sv_nil;
        b = sv_nil;
        cw =sv_nil
    })

(* new empty blk_info edge *)
let new_emp_blk  =
  Some(Blk_info{
        a = sv_nil;
        b = sv_nil;
    })

(*new empty chk_info edge*)
let new_emp_chk =
  Some(Chk_info{
        a = sv_nil;
        b = sv_nil;
        cdt = sv_nil;
        csz = sv_nil;
        cn = sv_nil;
        cp = sv_nil
    })

(* new chunk header edge info*)
let new_emp_chd =
  Some(Chd_info {
        a = sv_nil;
        b = sv_nil;
        cdt = sv_nil;
        csz = sv_nil;
        cn = sv_nil;
        cp = sv_nil
     })

(* new chunk header edge info*)
let new_emp_pto =
  Some(Pto_info {
        a = sv_nil;
        b = sv_nil;
    })

(*new chk_info edge*)
let new_chk s e d sz cn cp =
  Some(Chk_info{
        a = s;
        b = e;
        cdt = d;
        csz = sz ;
        cn = cn;
        cp = cp
    })

(** new empty fls_info edge*)
let new_fls a b w =
  Some(Fls_info {
        a = a;
        b = b;
        fw = w
    })

(** new empty fls_info edge*)
let new_pls a b w =
  Some(Pls_info {
        a = a;
        b = b;
        pw = w
    })

(** new fck_indo edge *)
let new_fck sv1 sv2 =
  Some(Fck_info {
        fn = sv1;
        fp = sv2
    })

(** new cls_info edge *)
let new_cls sv1 sv2 w =
 Some(  Cls_info{
        a = sv1;
        b = sv2;
        cw = w
    })

(** new blk_info edge *)
let new_blk  add_a add_b =
  Some(Blk_info{
        a = add_a;
        b = add_b;
    })

let new_chd s e d sz cn cp =
  Some(Chd_info {
        a = s;
        b = e;
        cdt = d;
        csz = sz ;
        cn = cn;
        cp = cp
  })

(** new pto edge *)
let new_pto s e =
 Some( Pto_info {
        a = s;
        b = e;
  })


(** new empty node info *)
let new_emp_ni = {
    nd_l = OUT;
    ed_H = None;
    ed_F = None;
    ed_st = None;
    is_ano = true;
  }

(** new node info *)
let new_ni (l) (edh) (edf) (edst) (ia) =
  {
      nd_l = l;
      ed_H = edh;
      ed_F = edf;
      ed_st = edst;
      is_ano = ia
  }


(*****************************************************
 * graph representation
 *****************************************************)

(** Mappings between node and its OUT edges' info
 *)
module Nemap = Datatype.Int.Map;;
type nemap = node_info Nemap.t

(* Graph type *)
type graph_t = nemap

(** Mappings between node and its labelling ptvs that point to this node *)
type ndvarsmap = (Svar.t list) Nemap.t


(** TODO: bottom *)
let bottom = Nemap.empty

(** TODO: top *)
let top = Nemap.empty

(*****************************************************
 *   equality
 *****************************************************)

(** two blk edges are equal   *)
let ed_blk_equal (ed1:blk_info) (ed2:blk_info) =
  (Mman_svar.Svar.equal ed1.a ed2.a)&&
  (Mman_svar.Svar.equal ed1.b ed2.b)

(** two cls edges are equal *)
let ed_cls_equal (ed1:cls_info) (ed2:cls_info) =
  (Mman_svar.Svar.equal ed1.a ed2.a)&&
  (Mman_svar.Svar.equal ed1.b ed2.b)&&
  (Mman_svar.Svar.equal ed1.cw ed2.cw)

(** two chd edges are equal *)
let ed_chd_equal (ed1:chd_info) (ed2:chd_info) =
  (Mman_svar.Svar.equal ed1.a ed2.a)     &&
  (Mman_svar.Svar.equal ed1.b ed2.b)     &&
  (Mman_svar.Svar.equal ed1.cdt ed2.cdt) &&
  (Mman_svar.Svar.equal ed1.cn ed2.cn)   &&
  (Mman_svar.Svar.equal ed1.cp ed2.cp)   &&
  (Mman_svar.Svar.equal ed1.csz ed2.csz)

(** two chk edges are equal*)
let ed_chk_equal (ed1:chk_info) (ed2:chk_info) =
  (Mman_svar.Svar.equal ed1.a ed2.a)     &&
  (Mman_svar.Svar.equal ed1.b ed2.b)     &&
  (Mman_svar.Svar.equal ed1.cdt ed2.cdt) &&
  (Mman_svar.Svar.equal ed1.cn ed2.cn)   &&
  (Mman_svar.Svar.equal ed1.cp ed2.cp)   &&
  (Mman_svar.Svar.equal ed1.csz ed2.csz)

(** two fls edges are equal*)
let ed_fls_equal (ed1:fls_info) (ed2:fls_info) =
  (Mman_svar.Svar.equal ed1.a ed2.a)&&
  (Mman_svar.Svar.equal ed1.b ed2.b)&&
  (Mman_svar.Svar.equal ed1.fw ed2.fw)

(** two fck edges are equal*)
let ed_fck_equal (ed1:fck_info) (ed2:fck_info) =
  (Mman_svar.Svar.equal ed1.fn ed2.fn)&&
  (Mman_svar.Svar.equal ed1.fp ed2.fp)

(** level of two nodes are equal *)
let ni_lel_euqal (ni1:node_info) (ni2:node_info) =
  match ni1.nd_l, ni2.nd_l with
  | H,H | F,F | HF,HF -> true
  | H,F | F,H | H,HF | HF,H | F,HF | HF,F ->false

(** two H-edge info are equal *)
let ni_ed_equal_H (ni1:node_info) (ni2:node_info) =
  match ni1.ed_H,ni2.ed_H with
    | Some (Blk_info edi1), Some (Blk_info edi2) -> ed_blk_equal edi1 edi2
    | Some (Chd_info edi1), Some (Chd_info edi2) -> ed_chd_equal edi1 edi2
    | Some (Cls_info edi1), Some (Cls_info edi2) -> ed_cls_equal edi1 edi2
    | Some (Chk_info edi1), Some (Chk_info edi2) -> ed_chk_equal edi1 edi2
    | _,_ -> false  (* TODO*)

(** two edge info are equal *)
let ni_ed_equal_F (ni1:node_info) (ni2:node_info) =
  match ni1.ed_F,ni2.ed_F with
    | Some (Fck_info edi1), Some(Fck_info edi2) -> ed_fck_equal edi1 edi2
    | Some (Fls_info edi1), Some(Fls_info edi2) -> ed_fls_equal edi1 edi2
    | _,_ -> false  (* TODO*)

(** nd is anonymous node or not *)
let ni_isano_equal (ni1:node_info) (ni2:node_info) =
  if ni1.is_ano == ni2.is_ano
  then true
  else false

(** two nodes' info are equal *)
let ni_equal  (ni1:node_info)(ni2:node_info) =
  (ni_ed_equal_H ni1 ni2)&&
  (ni_ed_equal_F ni1 ni2)&&
  (ni_lel_euqal ni1 ni2)&&
  (ni_isano_equal ni1 ni2)

(* equal *)
let equal_nemap m1 m2 =
  (
    Nemap.equal
    (
        fun ndif1 ndif2  ->
        ni_equal ndif1 ndif2
    )
    m1 m2
  )


(** Builds a map from the list of pairs. *)
let of_list_nemap (l: (int * node_info) list)
  : nemap
  =
  let m = ref Nemap.empty in
  begin
    List.iter
     (fun (k,ni) -> m := Nemap.add k ni !m) l;
    !m
  end

(*****************************************************
 *   pretty
 *****************************************************)

(** TODO: print shape in formula  *)
let pp_ed fmt  ni =
  match ni with
  | Some(Fck_info edi)->
            Format.fprintf fmt "FCK(fn:%d,fp:%d) \n "
            edi.fn.id
            edi.fp.id
  | Some(Fls_info edi) ->
            Format.fprintf fmt "FLS(%d,%d,%d)\n "
            edi.a.id
            edi.b.id
            edi.fw.id
  | Some(Blk_info edi) ->
            Format.fprintf fmt "BLK(%d,%d)\n "
            edi.a.id
            edi.b.id
  | Some(Chd_info edi) ->
            Format.fprintf fmt "CHD(%d,%d,cdt:%d,csz:%d,cn:%d,cp:%d)\n "
            edi.a.id
            edi.b.id
            edi.cdt.id
            edi.csz.id
            edi.cn.id
            edi.cp.id
  | Some(Cls_info edi) ->
              Format.fprintf fmt "CLS(%d,%d,%d)\n "
            edi.a.id
            edi.b.id
            edi.cw.id
  | Some(Chk_info edi) ->
            Format.fprintf fmt "CHK(%d,%d,cdt:%d,csz:%d,cn:%d,cp:%d)\n "
            edi.a.id
            edi.b.id
            edi.cdt.id
            edi.csz.id
            edi.cn.id
            edi.cp.id
  | Some(Pls_info edi) ->
            Format.fprintf fmt "Pls(%d,%d)\n "
            edi.a.id
            edi.b.id

(** print other info *)
let pp_in fmt  ni =
  Format.fprintf fmt "Level:%s,\n anoymous:%s \n "
  (lel_to_string ni.nd_l)
  (string_of_bool ni.is_ano)

(** print all info *)
let pp_info fmt (ni:node_info) =
  pp_in fmt  ni;
  pp_ed fmt  ni.ed_H;
  pp_ed fmt  ni.ed_F

(** print the mapping *)
let pretty_graph fmt (m: nemap) =
  begin
    Format.fprintf fmt "{";
    Nemap.iter
      (fun i ndi ->
           Format.fprintf fmt " %d ->%a"
             i
           pp_info ndi
      )
      m;
    Format.fprintf fmt "}"
  end


(* ********************************************************************** *)
(* node Getters and setters *)
(* ********************************************************************** *)

(** mark node as anonymous *)
let ni_mark_ano ni =
  ni.is_ano <- true

(** mark node as non-anonymous *)
let ni_mark_noano ni =
  ni.is_ano <- false

(** Add a edge into node info *)
(*let ni_add_ed ni ei =
  match ed_lel ei with
  | HE -> ni.ed_H <- ei
  | FE -> ni.ed_F <- ei*)

(** Add a node into graph (add a mapping pair) *)
let nemap_add ndsv ndif m =
  Nemap.add ndsv ndif m

(** Remove a node  *)
let nemap_remove ndsv ne =
  Nemap.remove ndsv ne

(** Get info of node nd in the mapping *)
let nemap_get_if nid (eh:nemap) =
  try
    Nemap.find nid eh
  with Not_found -> new_emp_ni

(** get a node id whose varinfo is avi *)
let nemap_get_sv  ei avi (eh:nemap) =
  let res = ref (-1) in
  Nemap.iter
  (fun nsvi ndif ->
    let nsv = Mman_env.senv_getvinfo ei nsvi in
    match nsv.kind with
    | PVar vi ->
                 if  Cil_datatype.Varinfo.equal !vi avi
                 then res := nsvi
    | _ -> ()
  )
  eh
  ;
  !res

(** return a node with a star edge *)
let nemap_get_star ei vif (eh:nemap)
:'a option * (edge_info_type option )
=
begin
    let res = ref (None, None) in
    Nemap.iter
    (
      fun nsvi ndif ->
        let nsv = Mman_env.senv_getvinfo ei nsvi in
          match nsv.kind with
          | PVar vi ->
              if Cil_datatype.Varinfo.equal !vi vif
              then
                match ndif.ed_st with
                | Some(Pto_info ped) -> res := None, Some (Pto_info ped)
                | _ -> res := None, None
          | _-> res := None,None
    )
    eh
    ;
    !res
end


(** return a node n1 and n2 that n2 is pointed by n1 by star edge  *)
let nemap_get_star_val ei vif (eh:nemap)
:'a option * (add option )
=
begin
    let res = ref (None, None) in
    Nemap.iter
    (
      fun nsvi ndif ->
        let nsv = Mman_env.senv_getvinfo ei nsvi in
          match nsv.kind with
          | PVar vi ->
              if Cil_datatype.Varinfo.equal !vi vif
              then
                match ndif.ed_st with
                | Some(Pto_info ped) -> res := None, Some (ped.b)
                | _ -> res := None, None
          | _-> res := None,None
    )
    eh
    ;
    !res
end


(** return a node that nd points to by star edge  *)
let nemap_get_star_to sv (eh:nemap)
:add option
=
begin
    let res = ref None in
    Nemap.iter
    (
      fun nsvi ndif ->
          if sv.id == nsvi
          then
            match ndif.ed_st with
            | Some(Pto_info ped) -> res := Some (ped.b)
            | _ -> res := None
    )
    eh
    ;
    !res
end



(** find a key is svi in nemap *)
let nemap_find (svi:int) (eh:nemap)=
  let res = ref (-1) in
  Nemap.iter
  (fun nsvi ndif->
    if nsvi == svi
    then res := nsvi
  )
  eh
  ;
  !res

(** a key is svi in nemap *)
let nemap_is_in (svi:int) (eh:nemap) =
  let res = ref false in
  Nemap.iter
  (fun nsvi ndif->
    if nsvi == svi
    then res := true
  )
  eh
  ;
  !res

(** find a edge from nemap
 * return
 * 1. return the corresponding node with the field
 * 2. return the node and the edge to be unfolded
 *)
let nemap_ed_loc (nid:int) (fk:Mman_dabs.feature_kind) (sh:nemap)
:int * ((edge_info_type option * edge_t) list)
=
(* (ndid, (edge, field_type) )*)
  begin
    let res = ref (-1, [] )in
    Nemap.iter
    (
      fun nsvi ndif ->
        if (nsvi == nid) then
        (
          match ndif.ed_H with
            | Some(Chd_info ni)->
                begin
                  match fk with
                    | DA_CSZ | DA_CNXT | DA_CDAT | DA_CPRV  -> res := (nsvi, [(ndif.ed_H,CHD)]);
                    | _ -> res := (nsvi, [])
                end
            | Some(Chk_info ni) ->
                begin
                  match fk with
                    | DA_CSZ | DA_CNXT | DA_CDAT | DA_CPRV  -> res := (nsvi, [(ndif.ed_H,CHK)]);
                    | _ -> res := (nsvi, [])
                end
            | Some(Blk_info ni) -> res := (nsvi, [])
            | Some(Cls_info ni) -> res := nsvi, [(ndif.ed_H,CLS)];               (* return the edge to be unfolded  *)
          ;
          match ndif.ed_F with
            | Some(Fls_info ni) ->
                begin
                  match fk with
                    | DA_FNXT | DA_FPRV -> res := nsvi,[(ndif.ed_F,FLS)]   (* need to unfold *)
                    |_ -> res := (nsvi ,[])
                end
            | Some(Fck_info ni) -> res := nsvi, [(ndif.ed_F,FCK)];
      )
    )
    sh
    ;
    !res
end



(**
 * Evaluation of a loction(nd, fk) in an extended shape.
 *)
let nemap_ed_val (nid:int) (fk:Mman_dabs.feature_kind) (sh:nemap)
: Nemap.key option *
  add option *
 (edge_info_type option * edge_t) option *
  Mman_dabs.feature_kind option

=
(* (nid, data field, chuck field, unfold edge),  *)
  begin
    (**let res = ref (-1, [], [], [], []) in*)
    let res = ref (None,None,None,None) in
    Nemap.iter
    (
      fun nsvi ndif ->
        if (nsvi == nid) then
        (
          match ndif.ed_H with
            | Some(Chd_info ni)->
                begin
                  match fk with
                  | DA_CSZ  -> res := (Some(nsvi), Some(ni.csz), None, Some(fk));
                  | DA_CNXT -> res := (Some(nsvi), Some(ni.cn) , None, Some(fk));
                  | DA_CDAT -> res := (Some(nsvi), Some(ni.cdt), None, Some(fk));
                  | DA_CPRV -> res := (Some(nsvi), Some(ni.cp) , None, Some(fk));
                  | _ -> ()
                end
            | Some(Chk_info ni) ->
                 begin
                  match fk with
                  | DA_CSZ  -> res := (Some(nsvi), Some(ni.csz), None, Some(fk));
                  | DA_CNXT -> res := (Some(nsvi), Some(ni.cn) , None, Some(fk));
                  | DA_CDAT -> res := (Some(nsvi), Some(ni.cdt), None, Some(fk));
                  | DA_CPRV -> res := (Some(nsvi), Some(ni.cp) , None, Some(fk));
                  | _ -> ()
                end
            | Some(Blk_info ni) -> ()
            | Some(Cls_info ni) -> res := (Some(nsvi), None, Some(ndif.ed_H,CLS), Some(fk));      (* need to unfold *)
          ;
          match ndif.ed_F with
            | Some(Fls_info ni) ->
                begin
                  match fk with
                  | DA_FNXT | DA_FPRV -> res := (Some(nsvi), None, Some(ndif.ed_F,FLS), Some(fk)); (* need to unfold *)
                  |_ -> ()
                end
            | Some(Fck_info ni) ->
                begin
                  match fk with
                  | DA_FNXT -> res := (Some(nsvi), Some(ni.fn), None, Some(fk));
                  | DA_FPRV -> res := (Some(nsvi), Some(ni.fp), None, Some(fk));
                  | _ -> ()
                end
            |_-> ()
      )
    )
    sh
    ;
    !res
end


let nemap_ed_val2 (nid:int) (fk:Mman_dabs.feature_kind) (sh:nemap)
=
(* (nid, data field, chuck field, unfold edge),  *)
  begin
    (**let res = ref (-1, [], [], [], []) in*)
    let res = ref (None,None,None) in
    Nemap.iter
    (
      fun nsvi ndif ->
        if (nsvi == nid) then
        (
          match ndif.ed_H with
            | Some(Chd_info ni)->
                begin
                  match fk with
                  | DA_CSZ  -> res := (Some(nsvi), Some(ni.csz), None);
                  | DA_CNXT -> res := (Some(nsvi), Some(ni.cn) , None);
                  | DA_CDAT -> res := (Some(nsvi), Some(ni.cdt), None);
                  | DA_CPRV -> res := (Some(nsvi), Some(ni.cp) , None);
                  | _ -> ()
                end
            | Some(Chk_info ni) ->
                begin
                  match fk with
                  | DA_CSZ  -> res := (Some(nsvi), Some(ni.csz), None);
                  | DA_CNXT -> res := (Some(nsvi), Some(ni.cn) , None);
                  | DA_CDAT -> res := (Some(nsvi), Some(ni.cdt), None);
                  | DA_CPRV -> res := (Some(nsvi), Some(ni.cp) , None);
                  | _ -> ()
                end
            | Some(Blk_info ni) -> ()
            | Some(Cls_info ni) -> res := (Some(nsvi), None, Some(ndif.ed_H,CLS));      (* need to unfold *)
          ;
          match ndif.ed_F with
            | Some(Fls_info ni) ->
                begin
                  match fk with
                  | DA_FNXT | DA_FPRV -> res := (Some(nsvi), None, Some(ndif.ed_F,FLS));(* need to unfold *)
                  |_ -> ()
                end
            | Some(Fck_info ni) ->
                begin
                  match fk with
                  | DA_FNXT -> res := (Some(nsvi), Some(ni.fn), None );
                  | DA_FPRV -> res := (Some(nsvi), Some(ni.fp), None );
                  | _ -> ()
                end
            |_-> ()
      )
    )
    sh
    ;
    !res
end


(** get node level from the mapping *)
let nemap_ndl nsv _ni m =
  let ndi = Nemap.find nsv m in
  ndi.nd_l

(** get a successor of node, FCK(nid,nid_nxt)*)
let get_succ_fck (nid:int) (g:nemap) =
    let nif =  Nemap.find nid g in
    match nif.ed_F with
     | Some(Fck_info edi) -> edi.fn
     | _ -> sv_nil

(** get a successor of node, FLS(nid,nid_nxt,fw) *)
let get_succ_fls (nid) (g:nemap) =
    let nif =  Nemap.find nid g in
    match nif.ed_F with
     | Some(Fls_info edi) -> edi.b
     | _ -> sv_nil

(** get a successor of node, CLS(nid,nid_nxt,fw) *)
let get_succ_cls (nid) (g:nemap) =
    let nif =  Nemap.find nid g in
    match nif.ed_H with
     | Some(Cls_info edi) -> edi.b
     | _ -> sv_nil

(** get a successor of node, CLS(nid,nid_nxt,fw) *)
let get_succ_blk (nid) (g:nemap)
:add
=
    let nif =  Nemap.find nid g in
    match nif.ed_H with
     | Some(Blk_info edi) -> edi.b
     | _ -> sv_nil

(** get a successor of node, CLS(nid,nid_nxt,fw) *)
let get_succ_chk (nid) (g:nemap) =
    let nif =  Nemap.find nid g in
    match nif.ed_H with
     | Some(Chk_info edi) -> edi.b
     | _ -> sv_nil

(** get a successor of node, CLS(nid,nid_nxt,fw) *)
let get_succ_pls (nid) (g:nemap) =
    let nif =  Nemap.find nid g in
    match nif.ed_F with
     | Some(Pls_info edi) -> edi.b
     | _ -> sv_nil



(*****************************************************
 * node operation - comparsion
 *****************************************************)

(** comapre two blk edges *)
let ed_blk_compare (ed1:blk_info)(ed2:blk_info) =
  let a = ed1.a in
  let b = ed1.b in
  let a_= ed2.a in
  let b_= ed2.b in
   if ed_blk_equal ed1 ed2 == true
   then  1
   (* TODO: comapre [a,b] and [a',b']*)
   else Mman_svar.sv_compare a a_ +
        Mman_svar.sv_compare b b_

(** comapre two cls edges *)
let ed_cls_compare (ed1:cls_info)(ed2:cls_info) =
  let a = ed1.a in
  let b = ed1.b in
  let cw = ed1.cw in
  let a_= ed2.a in
  let b_= ed2.b in
  let cw_ = ed2.cw in
  if ed_cls_equal ed1 ed2 == true
  then  1
  (* TODO: comapre two cls *)
  else  -1 (*TODO*)

(** comapre two chd edges *)
let ed_chd_compare (ed1:chd_info)(ed2:chd_info) =
   if ed_chd_equal ed1 ed2 == true
   then  1
   else  -1 (*TODO*)

(** comapre two chk edges *)
let ed_chk_compare (ed1:chk_info)(ed2:chk_info) =
   if ed_chk_equal ed1 ed2 == true
   then  1
   else  -1 (*TODO*)

(** comapre two fck edges *)
let ed_fck_compare (ed1:fck_info)(ed2:fck_info) =
   if ed_fck_equal ed1 ed2 == true
   then  1
   else  -1 (*TODO*)

(** comapre two fls edges *)
let ed_fls_compare (ed1:fls_info)(ed2:fls_info) =
   if ed_fls_equal ed1 ed2 == true
   then  1
   else  -1 (*TODO*)

(** comapre two H edges *)
let ni_ed_compare_H (ni1:node_info) (ni2:node_info) =
  match ni1.ed_H,ni2.ed_H with
    | Some(Blk_info edi1), Some(Blk_info edi2) -> ed_blk_compare edi1 edi2
    | Some(Chd_info edi1), Some(Chd_info edi2) -> ed_chd_compare edi1 edi2
    | Some(Cls_info edi1), Some(Cls_info edi2) -> ed_cls_compare edi1 edi2
    | Some(Chk_info edi1), Some(Chk_info edi2) -> ed_chk_compare edi1 edi2
    | _,_ -> -1  (* TODO*)

(** comapre two F edges *)
let ni_ed_compare_F (ni1:node_info) (ni2:node_info) =
  match ni1.ed_F,ni2.ed_F with
    | Some(Fck_info edi1), Some(Fck_info edi2) -> ed_fck_compare edi1 edi2
    | Some(Fls_info edi1), Some(Fls_info edi2) -> ed_fls_compare edi1 edi2
    | _,_ -> -1  (* TODO*)

(** compare two node info *)
let ni_comapre (ni1:node_info)(ni2:node_info) =
  if (ni_lel_euqal ni1 ni2 == false )||
     (ni_isano_equal ni1 ni2 == false )
  then -1
  else 0 (* TODO*)

(** TODO:compare two ni *)
let nemap_compare (m1:nemap) (m2:nemap) =
    (
      Nemap.compare (fun nif1 nif2 ->
                      ni_comapre nif1 nif2
                    )
              m1 m2
    )


(** return the set of pvars of the graph *)
let nemap_pvars ei (eh:nemap)
: Mman_svar.svarinfo list
=
begin
  let res = ref [] in
    Nemap.iter
    (
      fun nsvi ndif ->
        let nsv = Mman_env.senv_getvinfo ei nsvi in
          match nsv.kind with
          | PVar vi ->
                begin
                  res := !res @ [(nsv)]
                end
          | _-> ()
    )
    eh
    ;
  !res
end


(** a ptv var is in ptv list*)
let is_in_list ptvlist pv =
    List.exists
    (fun pi ->
       (Svar.equal pi pv)== true
    )
    ptvlist

(** compare two pvars list *)
let compare_ptr_list pls1 pls2 =
  begin
    let res = ref false in
    let len1 = List.length pls1 in
    let len2 = List.length pls2 in
    if (len1 != len2) then
      res := false ;
    if (len1 == 0) && (len2 ==0 ) then (* two anonymous nodes*)
      res := true ;
    if (len1 == len2)&&(len1 != 0) then
      (let isin =
        (
          List.exists (fun pi-> (is_in_list pls2 pi)
        )
        pls1) in
      if (isin == true) then
        res := true;
      )
    ;
    !res
  end

(** get the set of key (nodes) *)
let nemap_nodes ei (m:nemap)
:Mman_env.vidmap
=
  let res = ref Mman_env.VidMap.empty in
  Nemap.iter
  (
    fun nid nif ->
      let nsv = Mman_env.senv_getvinfo ei nid in
      res := Mman_env.VidMap.add nid nsv !res
  )
  m;
 !res


(* compare nodes(keys) *)
let compare_nodes ei m1 m2 =
  let ks1 = nemap_nodes ei m1 in
  let ks2 = nemap_nodes ei m2 in
  Mman_env.compare_vidmap ks1 ks2

(* equal nodes(keys) *)
let equal_nodes ei m1 m2 =
  let ks1 = nemap_nodes ei m1 in
  let ks2 = nemap_nodes ei m2 in
  Mman_env.equal_vidmap ks1 ks2


(*****************************************************
 * graph operation - isomorphic
 *****************************************************)

(** return the mapping *)
let isomorphic_nemap ei  m1 m2
=
  let res = ref ([],[]) in
  let worklist = ref [] in
  (* check variables *)
  if (equal_nodes ei m1 m2) then
  (
      (*TODO*)
  )


(*****************************************************
 * operation - lattice
 *****************************************************)

(** TODO:graph is bottom *)
let is_bottom m = false

(** TODO:graph is top *)
let is_top m = false

let is_eq (hm:Mman_env.envmap)  m1 m2 = false

let is_leq (hm:Mman_env.envmap) m1 m2 = false

let is_included m1 m2 = false

let join m1 _m2 = m1 (*TODO*)


(*****************************************************
 * operation - normalization
 *****************************************************)
 (* return:
 * 1.k continous anonymous nodes in graph, (list)
 * 2.the edge type is same  (type)
 *)
let rec find_conano_nds (nid:int) (g:graph_t) (ety:edge_t) anls =
 begin
  let ni =  Nemap.find nid g in
  if (ni.is_ano == true) then   (* nid is anonymous *)
  anls := !anls @ [nid];
  match ety with
    FLS ->
      begin
        let hnxt = ni.ed_F in
        match hnxt with
         | Some(Fls_info edi) ->
            let nid_fnxt = edi.b.id in
            find_conano_nds nid_fnxt g FLS anls;
         | _ -> ()
      end
  | FCK ->
      begin
        let hnxt = ni.ed_F in
        match hnxt with
         | Some(Fck_info edi) ->
            let nid_fnxt = edi.fn.id in
            find_conano_nds nid_fnxt g FCK anls;
         | _ -> ()
      end
  | BLK ->
       begin
        let hnxt = ni.ed_H in
        match hnxt with
         | Some(Blk_info edi) ->
            let nid_fnxt = edi.b.id in
            find_conano_nds nid_fnxt g BLK anls;
         | _ -> ()
       end
  | CHK ->
       begin
        let hnxt = ni.ed_H in
        match hnxt with
         | Some(Chk_info edi) ->
            let nid_fnxt = edi.b.id in
            find_conano_nds nid_fnxt g CHK anls;
         | _ -> ()
        end
  | CLS ->
       begin
        let hnxt = ni.ed_H in
        match hnxt with
         | Some(Cls_info edi) ->
            let nid_fnxt = edi.b.id in
            find_conano_nds nid_fnxt g CLS anls;
         | _ -> ()
       end
  | PLS ->
       begin
        let hnxt = ni.ed_F in
        match hnxt with
         | Some(Pls_info edi) ->
            let nid_fnxt = edi.b.id in
            find_conano_nds nid_fnxt g PLS anls;
         | _ -> ()
       end
 end

(* in F level, find the continous anonymous nodes list (linked with same edge type FCK)
 * rerturn list : [n1] -> [] -> [] -> [] -> []
 * the header(n1) is not anoymous node
 * case1: only one list
 * case2: more than one lists
 *)
let anond_list_FCK (g: graph_t) =
  let anls = ref [] in
  let lsts = ref [] in
    Nemap.iter
    (fun nid ndif ->
         let nxt =  get_succ_fck nid g in
         let nxt_isano =  Nemap.find nxt.id g in
         if ((nxt.id > 0) && (nxt_isano.is_ano == true))
         then
         (
            anls := !anls @[nid];
            find_conano_nds nxt.id g FCK anls;
            lsts := !lsts @[!anls];
         )
    )
   g
   ;
   !lsts

(* in F level, find the continous anonymous nodes list (linked with same edge type CLS)
 * rerturn list : [n1] -> [] -> [] -> [] -> []
 * the header(n1) is not anoymous node
 * case1: only one list
 * case2: more than one lists
 *)
let anond_list_CLS (g: graph_t) =
  let anls = ref [] in
  let lsts = ref [] in
    Nemap.iter
    (fun nid ndif ->
         let nxt =  get_succ_cls nid g in
         let nxt_isano =  Nemap.find nxt.id g in
         if ((nxt.id > 0) && (nxt_isano.is_ano == true))
         then
         (
            anls := !anls @[nid];
            find_conano_nds nxt.id g CLS anls;
            lsts := !lsts @[!anls];
         )
    )
   g
   ;
   !lsts

(* in F level, find the continous anonymous nodes list (linked with same edge type PLS)
 * rerturn list : [n1] -> [] -> [] -> [] -> []
 * the header(n1) is not anoymous node
 * case1: only one list
 * case2: more than one lists
 *)
let anond_list_PLS (g: graph_t) =
  let anls = ref [] in
  let lsts = ref [] in
    Nemap.iter
    (fun nid ndif ->
         let nxt =  get_succ_pls nid g in
         let nxt_isano =  Nemap.find nxt.id g in
         if ((nxt.id > 0) && (nxt_isano.is_ano == true))
         then
         (
            anls := !anls @[nid];
            find_conano_nds nxt.id g PLS anls;
            lsts := !lsts @[!anls];
         )
    )
   g
   ;
   !lsts

(* in F level, find the continous anonymous nodes list (linked with same edge type CHK)
 * rerturn list : [n1] -> [] -> [] -> [] -> []
 * the header(n1) is not anoymous node
 * case1: only one list
 * case2: more than one lists
 *)
let anond_list_CHK (g: graph_t) =
  let anls = ref [] in
  let lsts = ref [] in
    Nemap.iter
    (fun nid ndif ->
         let nxt =  get_succ_chk nid g in
         let nxt_isano =  Nemap.find nxt.id g in
         if ((nxt.id > 0) && (nxt_isano.is_ano == true))
         then
         (
            anls := !anls @[nid];
            find_conano_nds nxt.id g CHK anls;
            lsts := !lsts @[!anls];
         )
    )
   g
   ;
   !lsts

(* in F level, find the continous anonymous nodes list (linked with same edge type BLK)
 * rerturn list : [n1] -> [] -> [] -> [] -> []
 * the header(n1) is not anoymous node
 * case1: only one list
 * case2: more than one lists
 *)
let anond_list_BLK (g: graph_t) =
  let anls = ref [] in
  let lsts = ref [] in
    Nemap.iter
    (fun nid ndif ->
         let nxt =  get_succ_blk nid g in
         let nxt_isano =  Nemap.find nxt.id g in
         if ((nxt.id > 0) && (nxt_isano.is_ano == true))
         then
         (
            anls := !anls @[nid];
            find_conano_nds nxt.id g BLK anls;
            lsts := !lsts @[!anls];
         )
    )
   g
   ;
   !lsts




(*****************************************************
 * operation - interface
 *****************************************************)

(** create a graph *)
let new_graph:nemap ref = ref Nemap.empty


(** copy a graoh *)
let copy_graph (g1:graph_t) =
  g1 (*TODO*)
