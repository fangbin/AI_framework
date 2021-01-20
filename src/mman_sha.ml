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

open Mman_dabs
open Mman_svar
 

(* Representation of shape part of value.
 *
 * Graph definition:
 * is represented by set of a N->eds (Node to Edge) mapping
 * Each node represents a symbolic address or a pointer var |
 *)


type words = Mman_svar.svarinfo

let sv_nil ={
    id = -1;
    kind = Null;
    typ = SVAddr
  }

(* svar nil *)


(* accessing fields(edge) belongs to which level *)
type edge_level =
    HE  (* H level edge *)
  | FE  (* F(next) level edge *)
  | PE  (* P(previous) level edge *)
  | ST  (* points to *)
  | OUT (* otherwise *)

(* edges types; the edge represents the
  memory region from address a to address b *)
type edge_t  =
    FLS   (* FLS-freelist segement *)
  | FCK   (* FCK-free chunk, *)
  | CHD   (* CHD-physical chunk header *)
  | BLK   (* BLK-raw memory region *)
  | CHK   (* CHK-physical memory chunk *)
  | CLS   (* CLS-physical list *)
  | PLS   (* previous linked list *)

(* the level in which node is*)
type node_level =
    H   (* H level node *)
  | F   (* F level node *)
  | HF  (* in both level, for the shared node *)
  | PVar(* pointer vars, usually with the star out edge  *)
  | OUT (* otherwise *)


(* block edge info *)
type blk_info =  {
    mutable blk_a: svarinfo;     (* address of start *)
    mutable blk_b: svarinfo      (* address of end *)
  }

(* chunk list edge info *)
type cls_info = {
    mutable cls_a: svarinfo;     (* address of start *)
    mutable cls_b: svarinfo;     (* end address *)
    mutable cls_cw: words   (* words *)
  }

(* chunk header edge info *)
type chd_info = {
  mutable chd_a: svarinfo;       (* address of start *)
  mutable chd_b: svarinfo;       (* address of end *)
  mutable chd_cdt: svarinfo;     (* the start address of avariable data region *)
  mutable chd_csz: svarinfo;     (* the size of chunk *)
  mutable chd_cn: svarinfo;      (* the phsysical next chunk *)
  mutable chd_cp: svarinfo;      (* the phsysical previous chunk *)
  }

(* chunk edge info *)
type chk_info = {
  mutable chk_a: svarinfo;       (* address of start *)
  mutable chk_b: svarinfo;       (* address of end *)
  mutable chk_cdt: svarinfo;     (* the start address of avariable data region *)
  mutable chk_csz: svarinfo;     (* the size of chunk *)
  mutable chk_cn: svarinfo;      (* the phsysical next chunk *)
  mutable chk_cp: svarinfo;      (* the phsysical previous chunk *)
  }

(* F: fls(a,b,w) *)
type fls_info = {
    mutable fls_a: svarinfo;     (* address of start *)
    mutable fls_b: svarinfo;     (* end address *)
    mutable fls_fw : words; (* W, global variable  *)
  }

(* fck(fn,fp) *)
type fck_info =  {
    mutable fck_fn : svarinfo;   (** free next, the node of next field points to, not the address of next field  *)
    mutable fck_fp : svarinfo;   (** free previous *)
    mutable fck_csz: svarinfo;
  }

type pls_info = {
    mutable pls_a : svarinfo;
    mutable pls_b : svarinfo;
    mutable pls_pw :  words
  }

(* the info of star edge *)
type pto_info = {
    mutable pto_a : svarinfo;    (** the prt var a *)
    mutable pto_b : svarinfo;    (** points to b *)
  }

(* types of edge, each edge represent the relation between
 * different memory region which is presented by node
*)
type edge_info_type =
    Fck of fck_info
  | Fls of fls_info
  | Pls of pls_info
  | Blk of blk_info
  | Chd of chd_info
  | Cls of cls_info
  | Chk of chk_info
  | Pto of pto_info  (* the star edge (ptrv points to) *)

(* the info of edge *)
type node_t = {
   mutable nd_l: node_level;             (** the level of node *)
   mutable ed_H: edge_info_type option;   (** the edge of H  *)
   mutable ed_F: edge_info_type option;   (** the edge of F (next link) *)
   mutable ed_st: edge_info_type option;  (** the edge of star *)
   mutable is_ano: bool;                 (** the node is anoymous node or not *)

   (* mutable ed_FP: edge_info_type option;*) (** the edge of F (previous link )*)
   }


(*****************************************************
 * operation - new edge
 *****************************************************)


(** new empty fls_info edge*)
let new_emp_fls =
  Some(Fls {
        fls_a = sv_nil;
        fls_b = sv_nil;
        fls_fw = sv_nil
    })

(** new empty pls_info edge*)
let new_emp_pls =
  Some(Pls {
        pls_a = sv_nil;
        pls_b = sv_nil;
        pls_pw = sv_nil
    })

(** new empty cls_info edge *)
let new_emp_cls =
  Some(Cls{
        cls_a = sv_nil;
        cls_b = sv_nil;
        cls_cw =sv_nil
    })

(* new empty blk_info edge *)
let new_emp_blk  =
  Some(Blk{
        blk_a = sv_nil;
        blk_b = sv_nil;
    })

(*new empty chk_info edge*)
let new_emp_chk =
  Some(Chk{
        chk_a = sv_nil;
        chk_b = sv_nil;
        chk_cdt = sv_nil;
        chk_csz = sv_nil;
        chk_cn = sv_nil;
        chk_cp = sv_nil
    })


(** new empty fls_info edge*)
let new_fls a b w =
  Some(Fls {
        fls_a = a;
        fls_b = b;
        fls_fw = w
    })

(** new empty fls_info edge*)
let new_pls a b w =
  Some(Pls {
        pls_a = a;
        pls_b = b;
        pls_pw = w
    })

(** new cls_info edge *)
let new_cls sv1 sv2 w =
 Some(Cls{
        cls_a = sv1;
        cls_b = sv2;
        cls_cw = w
    })

(** new blk_info edge *)
let new_blk  add_a add_b =
  Some(Blk{
        blk_a = add_a;
        blk_b = add_b;
    })

(** new pto edge *)
let new_pto s e =
 Some(Pto {
        pto_a = s;
        pto_b = e;
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
let new_ed_h = None

(*****************************************************
 * graph representation
 *****************************************************)

(** Mappings between node and its OUT edges' info
 *)
module Nemap = Datatype.Int.Map;;
type shape = node_t Nemap.t

(** Mappings between node and its labelling ptvs that point to this node *)
type ndvarsmap = (Svar.t list) Nemap.t



(*****************************************************
 *   pretty
 *****************************************************)

(* print edge*)
let pp_ed fmt  ni =
  match ni with
  | Some(Fck edi)->
            Format.fprintf fmt "FCK(fn:%d,fp:%d) \n "
            edi.fck_fn.id
            edi.fck_fp.id
  | Some(Fls edi) ->
            Format.fprintf fmt "FLS(%d,%d,%d)\n "
            edi.fls_a.id
            edi.fls_b.id
            edi.fls_fw.id
  | Some(Blk edi) ->
            Format.fprintf fmt "BLK(%d,%d)\n "
            edi.blk_a.id
            edi.blk_b.id
  | Some(Chd edi) ->
            Format.fprintf fmt "CHD(%d,%d,cdt:%d,csz:%d,cn:%d,cp:%d)\n "
            edi.chd_a.id
            edi.chd_b.id
            edi.chd_cdt.id
            edi.chd_csz.id
            edi.chd_cn.id
            edi.chd_cp.id
  | Some(Cls edi) ->
            Format.fprintf fmt "CLS(%d,%d,%d)\n "
            edi.cls_a.id
            edi.cls_b.id
            edi.cls_cw.id
  | Some(Chk edi) ->
            Format.fprintf fmt "CHK(%d,%d,cdt:%d,csz:%d,cn:%d,cp:%d)\n "
            edi.chk_a.id
            edi.chk_b.id
            edi.chk_cdt.id
            edi.chk_csz.id
            edi.chk_cn.id
            edi.chk_cp.id
  | Some(Pls edi) ->
            Format.fprintf fmt "Pls(%d,%d)\n "
            edi.pls_a.id
            edi.pls_b.id
  | _ -> ()

(** print other info *)
let pp_in fmt  ni =
  Format.fprintf fmt "anoymous:%s \n " 
  (string_of_bool ni.is_ano)


(** print all info *)
let pp_info fmt (ni:node_t) =
  pp_in fmt  ni;
  pp_ed fmt  ni.ed_H;
  pp_ed fmt  ni.ed_F

(** print the mapping *)
let pretty_graph fmt (m: shape) =
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

 

(** Get info of node nd in the mapping *)
let shape_get_if nid (eh:shape) =
  try
    Nemap.find nid eh
  with Not_found -> new_emp_ni


(* return a stack of shape: MEV.envmap; (* svid --> svid *) *)
let shape_stack ei (eh:shape)
  : Mman_env.envmap
  =
    begin
      let stack = ref Mman_env.EnvMap.empty in
      Nemap.iter
      (
        fun nsvi ndif ->
          let nsv = Mman_env.senv_getvinfo ei nsvi in
            match nsv.kind with
            | PVar(_)->
                begin 
                  match ndif.ed_st with
                  | Some(Pto ped) -> stack := Mman_env.EnvMap.add ped.pto_a.id ped.pto_b.id !stack
                  | _ -> ()
                end 
            | _ ->  ()
      )
      eh
      ;
      !stack
    end

let copy_shape (g:shape) 
  : shape 
  = 
  begin 
      let res = ref Nemap.empty in 
      Nemap.iter 
      (
        fun svid ndif ->
              res := Nemap.add svid ndif !res

        )
      g;
      !res 
  end 


(* change the points-to edge *)
let shape_update_points sv1 sv2 (eh:shape)
  : shape
  = 
    begin
      let res = ref (copy_shape eh)  in 
        res := Nemap.remove sv1.id !res; (* remove the old edge *)
      let old_ed = Nemap.find sv1.id !res in 
      let new_ed = new_pto sv1 sv2  in    (* a new points-to edge between svi1 and svi2 *)
      let new_if = new_ni old_ed.nd_l old_ed.ed_H old_ed.ed_F new_ed old_ed.is_ano in 
        res := Nemap.add sv1.id new_if !res;
      !res 
    end

(** return a node n1 and n2 that n2 is pointed by n1 by star edge  *)
let shape_get_star_val ei vif (eh:shape)
 :'a option * (svarinfo option )
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
                 begin 
                  match ndif.ed_st with
                  | Some(Pto ped) -> res := None, Some (ped.pto_b)
                  | _ -> res := None, None
                end 
            | _-> res := None,None
      )
      eh
      ;
      !res
  end

(** return a node that nd points to by star edge  *)
let shape_get_star_to sv (eh:shape)
  :svarinfo option
  =
    begin
        let res = ref None in
        Nemap.iter
        (
          fun nsvi ndif ->
              if sv.id == nsvi
              then
                match ndif.ed_st with
                | Some(Pto ped) -> res := Some (ped.pto_b)
                | _ -> res := None
        )
        eh
        ;
        !res
    end

(** find a key is svi in shape *)
let shape_find (svi:int) (eh:shape)=
  let res = ref (-1) in
  Nemap.iter
  (fun nsvi _ndif->
    if nsvi == svi
    then res := nsvi
  )
  eh
  ;
  !res

(** get a list of features of CHD  *)
let shape_get_chd_flist (ed:chd_info)
  : (feature_kind * svid) list
  =
  begin
    let res = ref [] in
    res :=  !res
        @[(DA_CSZ,ed.chd_csz.id)]
        @[(DA_CDAT,ed.chd_cdt.id)]
        @[(DA_CNXT,ed.chd_cn.id)]
        @[(DA_CPRV,ed.chd_cp.id)];
    !res
  end

(** find a edge from shape
 * return
 * 1. return the corresponding node with the field
 * 2. return the node and the edge to be unfolded
 *)
let shape_ed_loc (nid:int) (fk:Mman_dabs.feature_kind) (sh:shape)
  : int * ((edge_info_type option * edge_t) list)
  = (* (ndid, (edge, field_type) )*)
  begin
    let res = ref (-1, [] )in
    Nemap.iter
    (
      fun nsvi ndif ->
        if (nsvi == nid) then
        (
          match ndif.ed_H with
            | Some(Chd _ni)->
                begin
                  match fk with
                    | DA_CSZ | DA_CNXT | DA_CDAT | DA_CPRV  -> res := (nsvi, [(ndif.ed_H,CHD)]);
                    | _ -> res := (nsvi, [])
                end
            | Some(Chk _ni) ->
                begin
                  match fk with
                    | DA_CSZ | DA_CNXT | DA_CDAT | DA_CPRV  -> res := (nsvi, [(ndif.ed_H,CHK)]);
                    | _ -> res := (nsvi, [])
                end
            | Some(Blk _ni) -> res := (nsvi, [])
            | Some(Cls _ni) -> res := nsvi, [(ndif.ed_H,CLS)];               (* return the edge to be unfolded  *)
            | _ -> ()
          ;
          match ndif.ed_F with
            | Some(Fls _ni) ->
                begin
                  match fk with
                    | DA_FNXT | DA_FPRV -> res := nsvi,[(ndif.ed_F,FLS)]   (* need to unfold *)
                    |_ -> res := (nsvi ,[])
                end
            | Some(Fck _ni) -> res := nsvi, [(ndif.ed_F,FCK)];
            | _ -> ()
      )
    )
    sh
    ;
    !res
  end


let shape_ed_val2 (nid:int) (fk:Mman_dabs.feature_kind) (sh:shape)
  = (* (nid, data field, chuck field, unfold edge),  *)
  begin
    let res = ref (None,None,None) in
    Nemap.iter
    (
      fun nsvi ndif ->
        if (nsvi == nid) then
        (
          match ndif.ed_H with
            | Some(Chd ni)->
                begin
                  match fk with
                  | DA_CSZ  -> res := (Some(nsvi), Some(ni.chd_csz), None);
                  | DA_CNXT -> res := (Some(nsvi), Some(ni.chd_cn) , None);
                  | DA_CDAT -> res := (Some(nsvi), Some(ni.chd_cdt), None);
                  | DA_CPRV -> res := (Some(nsvi), Some(ni.chd_cp) , None);
                  | _ -> ()
                end
            | Some(Chk ni) ->
                begin
                  match fk with
                  | DA_CSZ  -> res := (Some(nsvi), Some(ni.chk_csz), None);
                  | DA_CNXT -> res := (Some(nsvi), Some(ni.chk_cn) , None);
                  | DA_CDAT -> res := (Some(nsvi), Some(ni.chk_cdt), None);
                  | DA_CPRV -> res := (Some(nsvi), Some(ni.chk_cp) , None);
                  | _ -> ()
                end
            | Some(Blk _ni) -> ()
            | Some(Cls _ni) -> 
                    res := (Some(nsvi), None, Some(ndif.ed_H,CLS));(* need to unfold *)
            | _ ->()
          ;
          match ndif.ed_F with
            | Some(Fls _ni) ->
                begin
                  match fk with
                  | DA_FNXT | DA_FPRV -> 
                    res := (Some(nsvi), None, Some(ndif.ed_F,FLS));(* need to unfold *)
                  |_ -> ()
                end
            | Some(Fck ni) ->
                begin
                  match fk with
                  | DA_FNXT -> res := (Some(nsvi), Some(ni.fck_fn), None );
                  | DA_FPRV -> res := (Some(nsvi), Some(ni.fck_fp), None );
                  | _ -> ()
                end
            |_-> ()
      )
    )
    sh
    ;
    !res
  end


(** get a successor of node, FCK(nid,nid_nxt)*)
let get_succ_fck (nid:int) (g:shape) 
  =
    let nif =  Nemap.find nid g in
    match nif.ed_F with
     | Some(Fck edi) -> edi.fck_fn
     | _ -> sv_nil

(** get a successor of node, FLS(nid,nid_nxt,fw) *)
let get_succ_fls (nid) (g:shape) 
  =
    let nif =  Nemap.find nid g in
    match nif.ed_F with
     | Some(Fls edi) -> edi.fls_b
     | _ -> sv_nil

(** get a successor of node, CLS(nid,nid_nxt,fw) *)
let get_succ_cls (nid) (g:shape) 
  =
    let nif =  Nemap.find nid g in
    match nif.ed_H with
     | Some(Cls edi) -> edi.cls_b
     | _ -> sv_nil

(** get a successor of node, CLS(nid,nid_nxt,fw) *)
let get_succ_blk (nid) (g:shape)
: svarinfo
=
    let nif =  Nemap.find nid g in
    match nif.ed_H with
     | Some(Blk edi) -> edi.blk_b
     | _ -> sv_nil

(** get a successor of node, CLS(nid,nid_nxt,fw) *)
let get_succ_chk (nid) (g:shape) =
    let nif =  Nemap.find nid g in
    match nif.ed_H with
     | Some(Chk edi) -> edi.chk_b
     | _ -> sv_nil

(** get a successor of node, CLS(nid,nid_nxt,fw) *)
let get_succ_pls (nid) (g:shape) =
    let nif =  Nemap.find nid g in
    match nif.ed_F with
     | Some(Pls edi) -> edi.pls_b
     | _ -> sv_nil


(*****************************************************
 * node operation - comparsion
 *****************************************************)



(** return the list of memory chunks of the graph *)
let shape_mls (eh:shape)
    : Mman_svar.svid list
    =
    begin
      let res = ref [] in
        Nemap.iter
        (
          fun nsvi ndif ->
          match ndif.nd_l with
          | H | HF  -> res := !res @ [nsvi]
          | _ -> ()
        )
        eh
        ;
      !res
    end


(** get the set of key (nodes) *)
let shape_nodes ei (m:shape)
    : Mman_env.vidmap
    =
      let res = ref Mman_env.VidMap.empty in
      Nemap.iter
      (
        fun nid _nif ->
          let nsv = Mman_env.senv_getvinfo ei nid in
          res := Mman_env.VidMap.add nid nsv !res
      )
      m;
     !res

(* compare nodes(keys) *)
let compare_nodes ei m1 m2 =
  let ks1 = shape_nodes ei m1 in
  let ks2 = shape_nodes ei m2 in
  Mman_env.compare_vidmap ks1 ks2

(* equal nodes(keys) *)
let equal_nodes ei m1 m2 =
  let ks1 = shape_nodes ei m1 in
  let ks2 = shape_nodes ei m2 in
  Mman_env.equal_vidmap ks1 ks2



(**TODO: return the mapping *)
let isomorphic_shape ei  m1 m2
=
  let _res = ref ([],[]) in
  let _worklist = ref [] in
  (* check variables *)
  if (equal_nodes ei m1 m2) then
  (
      (*TODO*)
  )


(*****************************************************
 * operation - lattice
 *****************************************************)


let is_included _m1 _m2 = false (*TODO*)

let join m1 _m2 = m1 (*TODO*)


(*****************************************************
 * operation - normalization
 *****************************************************)
 (* return:
 * 1.k continous anonymous nodes in graph, (list)
 * 2.the edge type is same  (type)
 *)
let rec find_conano_nds (nid:int) (g:shape) (ety:edge_t) anls =
 begin
  let ni =  Nemap.find nid g in
  if (ni.is_ano == true) then   (* nid is anonymous *)
  anls := !anls @ [nid];
  match ety with
    FLS ->
      begin
        let hnxt = ni.ed_F in
        match hnxt with
         | Some(Fls edi) ->
            let nid_fnxt = edi.fls_b.id in
            find_conano_nds nid_fnxt g FLS anls;
         | _ -> ()
      end
  | FCK ->
      begin
        let hnxt = ni.ed_F in
        match hnxt with
         | Some(Fck edi) ->
            let nid_fnxt = edi.fck_fn.id in
            find_conano_nds nid_fnxt g FCK anls;
         | _ -> ()
      end
  | BLK ->
       begin
        let hnxt = ni.ed_H in
        match hnxt with
         | Some(Blk edi) ->
            let nid_fnxt = edi.blk_b.id in
            find_conano_nds nid_fnxt g BLK anls;
         | _ -> ()
       end
  | CHK ->
       begin
        let hnxt = ni.ed_H in
        match hnxt with
         | Some(Chk edi) ->
            let nid_fnxt = edi.chk_b.id in
            find_conano_nds nid_fnxt g CHK anls;
         | _ -> ()
        end
  | CLS ->
       begin
        let hnxt = ni.ed_H in
        match hnxt with
         | Some(Cls edi) ->
            let nid_fnxt = edi.cls_b.id in
            find_conano_nds nid_fnxt g CLS anls;
         | _ -> ()
       end
  | PLS ->
       begin
        let hnxt = ni.ed_F in
        match hnxt with
         | Some(Pls edi) ->
            let nid_fnxt = edi.pls_b.id in
            find_conano_nds nid_fnxt g PLS anls;
         | _ -> ()
       end
  | _ -> ()
 end

(* in F level, find the continous anonymous nodes list (linked with same edge type FCK)
 * rerturn list : [n1] -> [] -> [] -> [] -> []
 * the header(n1) is not anoymous node
 * case1: only one list
 * case2: more than one lists
 *)
let anond_list_FCK (g: shape) =
  let anls = ref [] in
  let lsts = ref [] in
    Nemap.iter
    (fun nid _ndif ->
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
let anond_list_CLS (g: shape) =
  let anls = ref [] in
  let lsts = ref [] in
    Nemap.iter
    (fun nid _ndif ->
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
let anond_list_PLS (g: shape) =
  let anls = ref [] in
  let lsts = ref [] in
    Nemap.iter
    (fun nid _ndif ->
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
let anond_list_CHK (g: shape) =
  let anls = ref [] in
  let lsts = ref [] in
    Nemap.iter
    (fun nid _ndif ->
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
let anond_list_BLK (g: shape) =
  let anls = ref [] in
  let lsts = ref [] in
    Nemap.iter
    (fun nid _ndif ->
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



