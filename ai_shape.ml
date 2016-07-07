
(**************************************************************************)
(*                                                                        *)
(*  This file is part of CELIA.                                           *)
(*                                                                        *)
(*  Copyright (C) 2015 *)
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

open Mman_dabs
open Mman_env
open Mman_svar
(*open Cil_types*)

(* Representation of shape part of value.
 *
 * Graph definition:
 *   [] The graph is represented by adajacent matrices.
 *      Adajacent matrices representation:  element matrix(i,j)
 *      represents an edge from node i to j. (edge = ED: N -> N);
 *   [] The graph has a lit of nodes (N)
 *   [] A node has a list of ptv vars(represented by symblic vars )
 *      that labelling this node (ptv = PTV: N -> p(ptvs));
 *   [] A node has an unique address info;
 *   [] The edge between two nodes represents a memory constructure
 *      from address a to address b (in H-level) or link-relationship (F-level):
 *      eg.BLK(a,b) => [a||||||||||||b]
 *      eg.FCK(a,b) => [a||||||||] -> [b|||||||||];
 *   [] operations(interfaces):
 *
 *
 *)

(*****************************************************
 * global values
 *****************************************************)


module EnvMap = Datatype.Int.Map


(* there are at most k continuous anonymous
 * nodes (without ptr var labeled) in shape *)
let k = 2

(* maxmial number of nodes in a graph *)
let s = 10

let null = 0

(* value type *)
(* type Svar.t  = Svar.t*)


type words = int 


(* the corresponding adress of node_id ,
 * work with data domain *)
type add = Svar.t

(* the symblic var (in sevn)labelling the node,the svkind is SAddr *)
type svadd = Svar.t

(* symbolic var labeling the nodes *)

(* the break exception to stop a loop *)
exception Break

(* exception to alter info *)
exception Alter of string

(* empty symbolic variable to label node NULL *)
let vnull = Mman_svar.sv_mk_null

let sv_mk_nil =
  { id = -1;
    kind = Null;
    typ = SVAddr
  }

(* svar nil *)
let sv_nil = sv_mk_nil


(* accessing fields(edge) belongs to which level *)
type edge_level = H | F | P| HF |Out


type field_t = {
  mutable fi_le : edge_level;
  mutable fi_info :string; (* TODO: change to feature_kind of chunk *)
 }


(*****************************************************
 * Graph representation
 *****************************************************)


(*---------------------- edges ---------------------*)

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
  | CPT   (* CPT-chunk points to filed *)
  | FPT   (* FPT-free block points to (next), not used as present *)
  | PPT   (* PPT-free block points to (previous), not used as present *)
  | EMP   (* EMP-other cases *)
  | FIE   (* field (size or data, not used now *)


(* free chunk edge info *)
type fck_info =  {
    mutable a  : add;
    (* address of start *)

    mutable fck2v: Mman_dabs.dabs_ty
    (* data abstract functions *)
  }

(* free list edge info *)
type fls_info = {
    mutable a : add;
    (* address of start node a *)

    mutable b : add;
    (* address of a' previous node *)

    mutable c : add;
    (* address of node c *)

    mutable d : add;
    (* address of c' previous ndoe *)

    mutable fw : words;
    (* W, global variable  *)
  }

(* block edge info *)
type blk_info =  {
    mutable a: add;
    (* address of start *)

    mutable b: add
    (* address of end *)
  }

(* block edge info *)
type pls_info =  {
    mutable a: add;
    (* address of start *)

    mutable b: add
    (* address of end *)
  }

(* chunk head edge info *)
type chd_info = {
    mutable a: add;
    (* address of start *)

    mutable b: add;
    (* end address *)

    mutable chd2v: Mman_dabs.dabs_ty
    (* abstract functions *)
  }

(*chunk list edge info *)
type cls_info = {
    mutable a: add;
    (* address of start *)

    mutable b: add;
    (* end address *)

    mutable cw: words
    (* words *)
  }

(* chunk edge info *)
type chk_info = {
    mutable a: add;
    (* address of start *)

    mutable b: add;
    (* address of end *)

    mutable chk2v:Mman_dabs.dabs_ty
  }

(* chunk points to *)
type cpt_info = {
    mutable a: add;
    (* address of start *)

    mutable b: add;
    (* address of end *)
  }

(* free points to *)
type fpt_info = {
    mutable a: add;
    (* address of start *)

    mutable b: add;
    (* address of end *)
  }

(* types of edge*)
type edge_info_type =
    Fck_info of fck_info
  | Fls_info of fls_info
  | Pls_info of pls_info
  | Blk_info of blk_info
  | Chd_info of chd_info
  | Cls_info of cls_info
  | Chk_info of chk_info
  | Cpt_info of cpt_info
  | Fpt_info of fpt_info
  | Int of int

 

(* edge  *)
type edge = {

    mutable edge_type: edge_t;
    (* edge type *)

    mutable edge_info: edge_info_type 
    (* edges info *)
  }


(*---------------------- node ---------------------*)
type  node_t = {
  
  mutable node_id: Svar.t;
  (** node unique indentifier corresponding to concrete address of memory  *)

  mutable node_index: int;
  (** an unique node identifier,  *)

  mutable node_succ: Svar.t array;
  (** succssors of node (at most 3 successors) *)
  (* index 0 H-level; index 1 F-level (next); index 2 F-level (previous) *)

  mutable node_ptrvs: Svar.t list;
  (** ptr variables which labeled by this node,
    * for anonymous node, it is empty *)

 }


(*---------------------- graph ---------------------*)

type adj_mat = edge array array;;(* adjecent matrix, the element is the edge *)


(* graph type *)
type graph_t = {

    mutable gid: int;

    mutable graph_num_nodes :int;
    (** number of nodes = non-empty element of nodes array  *)

    mutable graph_ptrs: Svar.t list;
    (** ptr variables list  = union ptrvs of all nodes *)

    mutable nodes: node_t array;
    (** array of nodes, initilized as a fixed size *)

    mutable matrix: adj_mat;
    (** matrix*)

  }

(* the info of edge *)
type edge_info = {
   mutable ed_l : edge_level;
   (** the level of edge *)

   mutable ed_H :edge option; 
   (** *)

   mutable ed_F: edge option;
   (** *)
}

(** Mappings between node and its out edges' info
 *)

module Nemap = Datatype.Int.Map;;  
type nemap = edge_info Nemap.t 
  
 

(** Mappings between node and its labelling ptvs = node.node_ptrvs *)

type ndvarsmap = (Svar.t list) Nemap.t 


(*****************************************************
 * operation - new
 *****************************************************)


(* empty edge *)
let emp_edge = { 
    edge_type = EMP;
    edge_info = Int 0
  }

(* new empty fls_info edge*)
let new_fls_edge = {
  edge_type = FLS;
  edge_info = Fls_info { a = sv_nil;
                         b = sv_nil;
                         c = sv_nil;
                         d = sv_nil;
                         fw = 0
                       }
  }

(* new empty fck_indo edge *)
let new_fck_edge = {
  edge_type = FCK;
  edge_info = Fck_info { a = sv_nil;
                         fck2v = !Mman_dabs.dabs
  }
 }

(* new empty cls_info edge *)
let new_cls_edge = {
  edge_type = CLS;
  edge_info = Cls_info{ a = sv_nil;
                        b = sv_nil;
                        cw =0
  }
 }


let new_pls_edge = {
  edge_type = PLS;
  edge_info = Pls_info {a = sv_nil;
                        b = sv_nil;
                        }
}

(* new empty blk_info edge *)
let new_blk_edge  add_a add_b = {
  edge_type = BLK;
  edge_info = Blk_info{a = add_a;
                       b = add_b;
  }
 }

(*new empty chk_info edge*)
let new_chk_edge = {
  edge_type = CHK;
  edge_info = Chk_info{a = sv_nil;
                       b = sv_nil;
                       chk2v = !Mman_dabs.dabs
  }
 }



let new_edge ty info = {
    edge_type = ty;
    edge_info = info
 }




let fe_lel (fk:Mman_dabs.feature_kind) =
  match fk with
  | DA_CSZ  -> H (* physicla level *)
  | DA_FNXT -> F (* next link *)
  | DA_FPRV -> P (* previous linked *)
  | _ -> Out     (* other *)


(* compare edge type*)
let edge_compare_type ed1 ed2 =
  ed1.edge_type == ed2.edge_type

(* two edges are equal*)
let edge_eq ed1 ed2 =
  edge_compare_type ed1 ed2

(* edge level*)
let edge_level ed =
  match ed.edge_type with
  | FLS | FCK  -> F
  | CHD | CHK | CLS -> H
  | PPT | PLS -> P

(* empty node *)
let emp_node = {
    node_id = vnull; (* TODO:*)
    node_index = -1;
    node_succ = Array.create 2 sv_nil; (* at most 2 successors *)
    node_ptrvs = [];
  }

(* node of NULL *)
let new_null_node ={
    node_id = vnull; (* TODO:*)
    node_index = -1;
    node_succ = Array.create 3 sv_nil; (* at most 2 successors, 1 precursor *)
    node_ptrvs = [vnull];
  }

(* new empty node *)
let new_node = {
    node_id = sv_nil;
    node_index = -1;
    node_succ = Array.create 3 sv_nil; (* at most 2 successors，1 precursor *)
    node_ptrvs = [];
  }

(* create a new node with a svar*)
let new_node_sv sv = {
    node_id = sv;     
    node_index = -1;
    node_succ = Array.create 3 sv_nil;
    node_ptrvs = [];
   }

(* create a new anonymous node*)
let new_anm_node_sv sv = {
    node_id = sv;   (* TODO:*)
    node_index = -1;
    node_succ = Array.create 3 sv_nil;
    node_ptrvs = [];
  }

(* create an empty graph with no nodes, at most s nodes *)
let new_graph  = {

    graph_num_nodes = 0;
    (** number of nodes=0 *)

    graph_ptrs  = [];

    nodes = Array.make s emp_node;
    (** array of node, length s, initialized with empty nodes   *)

    matrix = Array.make_matrix s s emp_edge;
    (** the edges initilized as emp_edge *)

    gid = -1;    (*TODO*)
  }

(*todo*)
let emp_graph = new_graph







(*****************************************************
 * operation - gettor
 *****************************************************)

(** check a ptv var is in ptv list*)
let is_in_list ptvlist pv =
    List.exists
    (fun pi ->
       (Svar.equal pi pv)== true
    )
    ptvlist

(* find in which level of node the successor is *)
let get_node_succ_inx (pv:Svar.t) (nd:node_t) =
    let loc = ref 0 in
    try
    for i = 0 to (Array.length nd.node_succ) -1 do
      if (Svar.equal nd.node_succ.(i) pv)
      then
      (
        loc := i;
        raise Break
      )
    done ;
    assert false
    with Break -> !loc

(* find in which level the successor is *)
let get_node_succ_inx_ (ns:node_t) (nd:node_t) =
      begin
        let res = ref (-1) in
        let ns1 = nd.node_succ.(0) in
        let ns2 = nd.node_succ.(1) in
        let ns3 = nd.node_succ.(2) in
        if (Svar.equal ns1 ns.node_id) then
            res := 0;
        if (Svar.equal ns2 ns.node_id) then
            res := 1;
        if (Svar.equal ns3 ns.node_id) then
            res := 2;
        !res
      end

(* given node id, find the node from the graph g *)
let get_graph_node_by_id (nid:Svar.t) g =
          let tn = ref emp_node in
          begin
              Array.iter
                  ( fun ni ->
                        ( if (Svar.equal ni.node_id nid )
                          then tn := ni; ()
                        )
                  )
                  g.nodes
              ;
            !tn
          end

(** find a successor with edge type *)
let get_node_succ_by_et nd et g=
    let nd_sc =  ref emp_node in
      begin
        Array.iter (
           fun sv ->
              if (Svar.equal sv sv_nil != false) then
               (
                let succ = get_graph_node_by_id sv g in (* the successor node *)
                let edt = g.matrix.(nd.node_index).(succ.node_index).edge_type in
                if (edt == et) then
                      nd_sc := succ;
              )
        )
        nd.node_succ;
       if !nd_sc == emp_node  then
          raise Not_found
       else
          !nd_sc
      end
 
(** return a node depend level (H or F)*)
let get_node_succ_by_lel nd lel g = 
  match lel with
  | H -> get_graph_node_by_id nd.node_succ.(0) g 
  | F -> get_graph_node_by_id nd.node_succ.(1) g
  | P -> get_graph_node_by_id nd.node_succ.(2) g
  | _-> emp_node

(** get the edges between nd and its successor *)
let get_node_succ_eds nd g =
  let ed_ls = ref [] in
    begin
     Array.iter (
      fun sv ->
               if (Svar.equal sv sv_nil == false) then
                 (
                  let succ = get_graph_node_by_id sv g in
                  let ed = g.matrix.(nd.node_index).(succ.node_index) in
                   if(ed != emp_edge) then
                   ed_ls := !ed_ls @[ed]
        )
      )
      nd.node_succ;
     if !ed_ls == []  then
          raise Not_found
     else
        !ed_ls
  end

(** find the first empty location of the nd of successors *)
let get_node_succ_emp nd =
      let loc = ref 0 in
      begin
        Array.iteri
          (fun i sv ->
               (if  (Svar.equal sv sv_nil)
                then loc := i;
          ))
        nd.node_succ
        ;
        if !loc == 0  then
           raise Not_found
        else
           !loc
      end


(* given a var (ptr var) ,find the node that var labeling
      from the graph g *)
let get_graph_node_by_lab (p:Svar.t) g =
        let tn = ref emp_node in
        begin
            Array.iter
                ( fun ni ->
                      ( List.iter
                         (fun ptr ->
                          if(sv_equal ptr p) then tn := ni; ()
                         )
                         ni.node_ptrvs
                      )
                )
            g.nodes
            ;
            if !tn == emp_node  then
               raise Not_found
            else
               !tn
        end


(* find the first empty location of the array to insert a new node *)
let get_graph_insert_inx g =
  let loc = ref 0 in
  begin
    Array.iteri (
          (fun i ni ->
            if ni == emp_node then
                  loc :=i;
         )
    )
    g.nodes;
    if !loc == 0  then
        raise Not_found
    else
        !loc
  end


(* get the edge between nd and its successor in H level *)
let get_node_succ_ed_H nd g =
 begin
  let ed = ref emp_edge in
  let nsid = nd.node_succ.(0) in
  if ((Svar.equal sv_nil nsid) == false) then (* has successor *)
  (
   let ns = get_graph_node_by_id nsid g in
   let ndi = nd.node_index in
   let nsi = ns.node_index in
   ed := g.matrix.(ndi).(nsi)
  );
  !ed
 end

(* get the edge between nd and its successor in F level *)
let get_node_succ_ed_F nd g =
  begin
   let ed = ref emp_edge in
   let nsid = nd.node_succ.(1) in
   if ((Svar.equal sv_nil nsid) == false) then
   (
    let ns = get_graph_node_by_id nsid g in
    let ndi = nd.node_index in
    let nsi = ns.node_index in
    ed := g.matrix.(ndi).(nsi)
   );
   !ed
  end

(* get the edge between nd and its successor in F level *)
let get_node_succ_ed_P nd g =
  begin
   let ed = ref emp_edge in
   let nsid = nd.node_succ.(2) in
   if ((Svar.equal sv_nil nsid) == false) then
   (
    let ns = get_graph_node_by_id nsid g in
    let ndi = nd.node_index in
    let nsi = ns.node_index in
    ed := g.matrix.(ndi).(nsi)
   );
   !ed
  end



(* graphs edge number *)
let get_graph_edge_num g =
  begin 
  let ed_num = ref 0 in
  let len = Array.length g.nodes in
  for i = 0 to len -1 do
    for j = 0 to len -1 do
      if(edge_eq g.matrix.(i).(j) emp_edge )
      then ed_num := !ed_num +1
    done
  done;
  !ed_num
end 


(* return the edge of two nodes*)
let get_edge_n1_n2 n1 n2 g =
  begin
  let ed = ref emp_edge in
  let i = n1.node_index in
  let j = n2.node_index in
  if is_in_list (Array.to_list n1.node_succ) n2.node_id == true
  then
    ed := g.matrix.(i).(j);
  !ed
end



(*****************************************************
 * operation - comparsion node
 *****************************************************)

(* compare id of node *)
let compare_node_id nd1 nd2 =
  Svar.equal nd1.node_id nd2.node_id

(* compare ptr vars of two nodes *)
let compare_ptr_list pls1 pls2 =
  begin
    let res = ref true in
    let len1 = List.length pls1 in
    let len2 = List.length pls2 in
    if (len1 != len2) then
      res := false ;
    if (len1 == 0) && (len2 ==0 ) then (* two anonymous nodes*)
      res := true ;
    if (len1 == len2)&&(len1 != 0) then
      (let isin = (List.exists (fun pi-> (is_in_list pls2 pi)) pls1) in
      if (isin == false) then
        res := false;
      )
    ;
    !res
  end

(* two nodes have the same ptrv labeling *)
let node_ptrv_eq n1 n2 =
  (compare_ptr_list n1.node_ptrvs n2.node_ptrvs)

(* compare labeling ptvs of succssors of two node *)
let compare_node_succ_ptvs n1 n2 g1 g2  =
    begin
      let res = ref false in
      let n1_s1 = n1.node_succ.(0) in
      let n1_s2 = n1.node_succ.(1) in
      let n1_s3 = n1.node_succ.(2) in
      let n2_s1 = n2.node_succ.(0) in
      let n2_s2 = n2.node_succ.(1) in
      let n2_s3 = n2.node_succ.(2) in
      if (node_ptrv_eq (get_graph_node_by_id n1_s1 g1) (get_graph_node_by_id n2_s1 g2)) &&
         (node_ptrv_eq (get_graph_node_by_id n1_s2 g1) (get_graph_node_by_id n2_s2 g2)) &&
         (node_ptrv_eq (get_graph_node_by_id n1_s3 g1) (get_graph_node_by_id n2_s3 g2))
      then
        res := true;
      !res
    end

(* compare succssors of node *)
(*let compare_node_succ_ n1 n2 =
    begin
      let res = ref true in
      let len1 = Array.length n1.node_succ in
      for i = 0 to len1 -1 do
        let pi = n1.node_succ.(i) in
        for j = 0 to len1-1 do
            if (not (Svar.equal pi n2.node_succ.(j))then
            res := false 
        done
      done;
      !res
    end*)

(* compare succssors of node, version2 *)
let compare_node_succ n1 n2 =
      let n1s1 = n1.node_succ.(0) in
      let n1s2 = n1.node_succ.(1) in
      let n1s3 = n1.node_succ.(2) in
      let n2s1 = n2.node_succ.(0) in
      let n2s2 = n2.node_succ.(1) in
      let n2s3 = n1.node_succ.(2) in
      if (Svar.equal n1s1 n2s1) && 
         (Svar.equal n1s2 n2s2) &&
         (Svar.equal n1s3 n2s3)
      then true 
      else false


(** two nodes are exactly equal:
 -same id,
 -same labelling ptrvs ,
 -same successors
*)
let node_eq n1 n2 =
  let addeq = (compare_node_id n1 n2)
  in
  let succeq = (compare_node_succ n1 n2)
  in
  let ptrseq = (node_ptrv_eq n1 n2)
  in
  addeq && succeq && ptrseq

(** two nodes (in two graphs) are equal:
 -same labelling ptrvs ,
 -same successors
*)
let node_eq_iso n1 n2 g1 g2 =
  let succeq = (compare_node_succ_ptvs n1 n2 g1 g2)
  in
  let ptrseq = (node_ptrv_eq n1 n2)
  in
  succeq && ptrseq

(** two nodes (in two graphs) are equal:
 -same labelling ptrvs ,
 -same successors
 -n1 maps n2 in (h) envmap
*)
let node_eq_iso_ h n1 n2 g1 g2 =
  let succeq = (compare_node_succ_ptvs n1 n2 g1 g2)
  in
  let ptrseq = (node_ptrv_eq n1 n2)
  in
  let map = EnvMap.find n1.node_id.id h == n2.node_id.id in
  succeq && ptrseq && map


(*****************************************************
* operation - predicate
*****************************************************)

(* check a node is in a node list *)
let is_in_nd_list ndlist nd =
     List.exists
     (fun ni ->
      (node_eq ni nd) == true
     )
     ndlist

(* check the node nd is in graph *)
let in_graph nd g=
        let is = ref false in
        let n = nd.node_index in
        if ((n >= 0) && (node_eq g.nodes.(n) emp_node))
          then is := true
          else ();
        !is

(*****************************************************
* operation - settor
*****************************************************)

(** empty successor of node nd*)
let set_node_empty_succ nd =
  nd.node_succ <- Array.create 2 sv_nil

(* add node into graph *)
let graph_add_node (nd:node_t) g =
  if (in_graph nd g )  then
    failwith "the node already exists "
  else if (get_graph_insert_inx g >= 0 ) then
    (
     let i = get_graph_insert_inx g in
     (*assert g.nodes.(i) = emp_node *)
     nd.node_index <- i;
     g.nodes.(i) <- nd;
     g.graph_ptrs <- List.append g.graph_ptrs nd.node_ptrvs;
     g.graph_num_nodes <- g.graph_num_nodes + 1
    )
  else failwith "exceed the maxmial length of node array"

(* remove node nd from graph and remove all the link relations *)
let graph_remove_node nd g =
 let loc = nd.node_index in
     begin
        List.iteri
        (fun i ni ->
          (
          if (get_edge_n1_n2 ni nd g != emp_edge) then
              g.matrix.(i).(loc) <- emp_edge;
          let inx = get_node_succ_inx nd.node_id ni in
              ni.node_succ.(inx) <- sv_nil;
          if (get_edge_n1_n2 nd ni g != emp_edge) then
              g.matrix.(loc).(i) <- emp_edge;
          )
        )
        ;
        nd.node_index <- -1;
        set_node_empty_succ nd;
        g.nodes.(loc) <- emp_node;
        g.graph_num_nodes <- g.graph_num_nodes-1;
     end

(* add an edge (n1->n2) into the matrix of graph *)
let graph_add_edge n1 n2 g ed =
    let x = n1.node_index and y = n2.node_index  in
        g.matrix.(x).(y) <- ed;
    let el = edge_level ed in
    match el with
    | H -> n1.node_succ.(0) <- n2.node_id
    | F -> n1.node_succ.(1) <- n2.node_id
    | P -> n1.node_succ.(2) <- n2.node_id

(* remove an edge (n1 -> n2) from matrix *)
let graph_remove_edge n1 n2 g=
  let  x = n1.node_index  and y = n2.node_index  in
    g.matrix.(x).(y) <- emp_edge  ;
  let inx = get_node_succ_inx n2.node_id n1 in
  n1.node_succ.(inx) <- sv_nil


(* TODO:initial graph with node NULL, maxmial nodes number s *)
let graph_init_null =
  begin
    let nd_null = ref new_null_node in
    let new_gra = ref (new_graph) in
    graph_add_node !nd_null !new_gra;
    !new_gra
  end

(* if graph is empty *)
let graph_is_empty g =
  if(g.graph_ptrs==[])&&(g.graph_num_nodes==0)
  then true
  else false

(*****************************************************
 * projection
 *****************************************************)

(* Graph projection on edge FCK and FLS, return the F-level part *)
let graph_F_level (g): graph_t =
 begin
  let temg = ref (new_graph) in (* initlise temp graph*)
  for i = 0 to (Array.length g.nodes)-1 do       (* copy the edges which is FCK *)
    !temg.nodes.(i)<-g.nodes.(i);
    for j = 0 to (Array.length g.nodes)-1 do
      let ty = g.matrix.(i).(j).edge_type in
      if ((ty == FCK)||(ty == FLS) || (ty == FPT)) then
        !temg.matrix.(i).(j) <- g.matrix.(i).(j)
    done;
  done;
  !temg
 end

(* Graph projection on edge PPT and PLS, return the F-level part *)
let graph_P_level (g): graph_t =
 begin
  let temg = ref (new_graph) in (* initlise temp graph*)
  for i = 0 to (Array.length g.nodes)-1 do       (* copy the edges which is FCK *)
    !temg.nodes.(i)<-g.nodes.(i);
    for j = 0 to (Array.length g.nodes)-1 do
      let ty = g.matrix.(i).(j).edge_type in
      if ((ty == PLS) || (ty == PPT)) then
        !temg.matrix.(i).(j) <- g.matrix.(i).(j)
    done;
  done;
  !temg
 end


(* Graph projection on edge CHK, return the H-level part *)
let graph_H_level (g) :  graph_t =
 begin
  let temg =  ref  (new_graph) in (* initlise temp graph*)
  for i=0 to (Array.length g.nodes)-1 do       (* copy the edges which is CHK *)
    !temg.nodes.(i)<-g.nodes.(i);
    for j=0 to (Array.length g.nodes)-1 do
      let ty = g.matrix.(i).(j).edge_type in
      if ((ty == CHK) || (ty == CLS) || ( ty == BLK) || (ty == CHD))then
        !temg.matrix.(i).(j)<-g.matrix.(i).(j)
    done;
  done;
  !temg
 end


(*****************************************************
 * k-normalization
 *****************************************************)

(* check is the node is anonymous, no ptr vars labeling anonymous node *)
let is_ano nd =
  (nd.node_index >0) &&(List.length nd.node_ptrvs == 0)


(** find a continous anonymous sequences of nodes with the same
     type of edge linking nodes *)
let rec find_cons_list ety anls nd g =
   if is_ano nd then
   anls := !anls @ [nd];
   let ndl = get_graph_node_by_id nd.node_succ.(0) g in
   let ndr = get_graph_node_by_id nd.node_succ.(1) g in
   let ndp = get_graph_node_by_id nd.node_succ.(2) g in
   let etyl = g.matrix.(nd.node_index).(ndl.node_index).edge_type in
   let etyr = g.matrix.(nd.node_index).(ndr.node_index).edge_type in
   let etyp = g.matrix.(nd.node_index).(ndp.node_index).edge_type in
   if(ety == etyl) then
       find_cons_list ety anls ndl g;
   if(ety == etyr) then
       find_cons_list ety anls ndr g;
   if(ety == etyp) then
       find_cons_list ety anls ndp g


(* in F level, find the continous anonymous nodes list
 * rerturn list : [n1] -> [] -> [] -> [] -> []
 * the header(n1) is not anoymous node
 * case1: only one list
 * case2: more than one lists (at most 2 lists )
 *)
let k_anonymous_list_F g =
   let anls = ref [] in
   let lsts = ref [] in
      Array.iter
      (
        fun ni ->
          let nd_nxt = get_graph_node_by_id ni.node_succ.(1) g in
          let ety = g.matrix.(ni.node_index).(nd_nxt.node_index).edge_type in
          if (is_ano nd_nxt == true) then
          (
            anls := !anls @[ni];
            find_cons_list ety anls nd_nxt g;
            lsts := !lsts @[!anls];
          )
      )
      g.nodes
    ;
   !lsts


(* in F level, find the continous anonymous nodes list (previous )
 * rerturn list : [n1] -> [] -> [] -> [] -> []
 * the header(n1) is not anoymous node
 * case1: only one list
 * case2: more than one lists (at most 2 lists )
 *)
let k_anonymous_list_P g =
   let anls = ref [] in
   let lsts = ref [] in
      Array.iter
      (
        fun ni ->
          let nd_nxt = get_graph_node_by_id ni.node_succ.(2) g in
          let ety = g.matrix.(ni.node_index).(nd_nxt.node_index).edge_type in
          if (is_ano nd_nxt == true) then
          (
            anls := !anls @[ni];
            find_cons_list ety anls nd_nxt g;
            lsts := !lsts @[!anls];
          )
      )
      g.nodes
    ;
   !lsts

(*
 * in H level: the list of continous anonymous nodes,
 * rerturn list : [n1] -> [] -> [] -> [] -> []
 * the header is not anoymous node
 * case1: only one list
 * case2: more than one lists (at most 2 lists )
*)
let k_anonymous_list_H g =
    let anls = ref [] in
    let lsts = ref [] in
      Array.iter
      (
        fun ni ->
          let nd_nxt = get_graph_node_by_id ni.node_succ.(0) g in
          let ety = g.matrix.(ni.node_index).(nd_nxt.node_index).edge_type in
          if (is_ano nd_nxt == true) then
          (
            anls := !anls @[ni];
            find_cons_list ety anls nd_nxt g;
            lsts := !lsts @[!anls];
          )
      )
      g.nodes
    ;
   !lsts

(*get the number of anonymous nodes
 *the anonymous nodes are shaing in H and F levels*)
let graph_anon_node_num  g =
  begin
    let anos = ref 0 in
     List.iter
    (
     fun ni ->
      if(is_ano ni) then anos := !anos +1
    )
    (Array.to_list g.nodes)
    ;
   !anos
  end


(* folding a list of node link with the same type edge
    ls:n1->n2->n3->n4...->nk
    into
    ls:n1->nk
    at present: do not remove nodes: n2,...,nk-1
 *)
let zip_list_edge els ety g =
   begin
     let len = List.length els in
       if (len > 2 ) then
       (
         for i = 0 to len-2 do
             graph_remove_edge (List.nth els i) (List.nth els (i+1)) g
         done;
         match ety with
         | FCK ->
               begin 
                  let ed = new_fls_edge in 
                  graph_add_edge (List.hd els) (List.nth els (len-1)) g ed (* todo: set the edgt into *)
               end
         | CHK ->
               begin 
                  let ed = new_cls_edge in 
                  graph_add_edge (List.hd els) (List.nth els (len-1)) g ed (* todo: set the edgt into *)
               end
         | PPT  ->
                begin 
                  let ed =  new_pls_edge in 
                  graph_add_edge (List.hd els) (List.nth els (len-1)) g ed (* todo: set the edgt into *)
               end
         | _ -> ()
       )
   end

(* check whether it is need to fold in H *)
let graph_is_to_fold_H g =
 begin
   let res = ref false in
   let lst = (k_anonymous_list_H g) in
   let len = List.length lst in
   if (len > 0) then
   List.iter
    (fun ls->
        if (List.length ls > k+1) then
          res := true
    )
   lst
   ;
   !res
 end


(* check whether it is need to fold in F *)
let graph_is_to_fold_F g =
 begin
   let res = ref false in
   let lst = (k_anonymous_list_F g) in
   let len = List.length lst in
   if (len  > 0) then
   List.iter (fun ls->
              if (List.length ls > k+1) then
                res := true
              )
   lst
   ;
   !res
 end

(* check whether it is need to fold in F *)
let graph_is_to_fold_P g =
 begin
   let res = ref false in
   let lst = (k_anonymous_list_P g) in
   let len = List.length lst in
   if (len  > 0) then
   List.iter (fun ls->
              if (List.length ls > k+1) then
                res := true
              )
   lst
   ;
   !res
 end


(* need to fold or not *)
let graph_is_to_fold g =
   (graph_is_to_fold_H g == true) ||
   (graph_is_to_fold_F g == true) ||
   (graph_is_to_fold_P g == true)

(* normalize anonymous nodes *)
let graph_k_normalise g =
   begin
    let lstF = (k_anonymous_list_F g) in
    let lstH = (k_anonymous_list_H g) in
    let lstP = (k_anonymous_list_P g) in
    if (List.length lstF > 0) then  (** has the continous anonymous nodes *)
      List.iter(fun ls1->
             if (((List.length ls1)-1) > k) then
             begin
              let nd_end = List.nth ls1 ((List.length ls1) -1) in
              let nd_end_nxt2 = get_graph_node_by_id nd_end.node_succ.(1) g in
              let nd_head = List.hd ls1 in
              let nd_head_nxt = List.nth ls1 1 in
              let e_ty = g.matrix.(nd_head.node_index).(nd_head_nxt.node_index).edge_type in
              let ety2 = g.matrix.(nd_end.node_index).(nd_end_nxt2.node_index).edge_type in
              begin
                if (e_ty == ety2) then
                (
                 let ls = ls1 @[nd_end_nxt2] in
                 zip_list_edge ls ety2 g
                );
              end
             end
      )
      lstF
     ;
    if (List.length lstH > 0) then
        List.iter(fun ls2 ->
          if ((List.length ls2 -1) > k) then (*never happend *)
            begin
              let nd_end = List.nth ls2 ((List.length ls2) -1) in
              let nd_end_nxt1 = get_graph_node_by_id nd_end.node_succ.(0) g in
              let nd_head = List.hd ls2 in
              let nd_head_nxt = List.nth ls2 1 in
              let e_ty = g.matrix.(nd_head.node_index).(nd_head_nxt.node_index).edge_type in
              let ety1 = g.matrix.(nd_end.node_index).(nd_end_nxt1.node_index).edge_type in
              begin
                if (e_ty == ety1) then
                (
                  let ls = ls2 @[nd_end_nxt1] in
                  zip_list_edge ls ety1 g
                );
              end
            end
      )
    lstH
    ;
     if (List.length lstP > 0) then
        List.iter(fun ls2 ->
          if ((List.length ls2 -1) > k) then (*never happend *)
            begin
              let nd_end = List.nth ls2 ((List.length ls2) -1) in
              let nd_end_nxt1 = get_graph_node_by_id nd_end.node_succ.(2) g in
              let nd_head = List.hd ls2 in
              let nd_head_nxt = List.nth ls2 1 in
              let e_ty = g.matrix.(nd_head.node_index).(nd_head_nxt.node_index).edge_type in
              let ety1 = g.matrix.(nd_end.node_index).(nd_end_nxt1.node_index).edge_type in
              begin
                if (e_ty == ety1) then
                (
                  let ls = ls2 @[nd_end_nxt1] in
                  zip_list_edge ls ety1 g
                );
              end
            end
      )
    lstP
    ; 
    (*TODO:remove the anonymous nodes *)
 end





(*
 ********************************************************************
 ********************************************************************
 ********************************************************************
 ********************************************************************
 ********************************************************************
*)








(*******************************************************
 * Floding and unfolding
 ******************************************************)

(* unfolding
 * fls(a,p,l,b)[w1] => fck(a)[F] * fls([p_nxt],a,l,b)[w2]
 *)
let unfoldidng_FLS nda new_sv  g =
  (* unfold at node nda *)
  begin
    let nda_succ = get_node_succ_by_et nda FLS g in
    let new_ed2 = new_fls_edge in
    let new_ed1 = new_fck_edge in
    let new_nd = new_node_sv new_sv in   
    graph_add_node new_nd;
    graph_remove_edge nda nda_succ g;
    graph_add_edge nda new_nd g new_ed1;
    graph_add_edge new_nd nda_succ g new_ed2;
  end

(* unfolding
 * fls(a,p,l,b)[w1] => fck(a)[F] * fls([p_nxt],a,l,b)[w2]
 *)
let unfoldidng_PLS nda new_sv  g =
  (* unfold at node nda *)
  begin
    let nda_succ = get_node_succ_by_et nda PLS g in
    let new_ed2 = new_fls_edge in
    let new_ed1 = new_fck_edge in
    let new_nd = new_node_sv new_sv in   
    graph_add_node new_nd;
    graph_remove_edge nda nda_succ g;
    graph_add_edge nda new_nd g new_ed1;
    graph_add_edge new_nd nda_succ g new_ed2;
  end


(* unfolding
 * cls(a,b)[w1] => chk(a)[F] * cls(a_,b)[w2_]
 *)
let unfoldidng_CLS nda new_sv g =
    (* unfold at node nda *)
    begin
      let nda_succ = get_node_succ_by_et nda CLS g in
      let new_ed2 = new_cls_edge in
      let new_ed1 = new_chk_edge in
      let new_nd = new_node_sv new_sv in   (*TO check *)
      graph_add_node new_nd;
      graph_remove_edge nda nda_succ g;
      graph_add_edge nda new_nd g new_ed1;
      graph_add_edge new_nd nda_succ g new_ed2;
    end

(* split blk(a,b) => blk(a,c)* blk(c,b) *)
let split_BLK nda new_sv g  =
  begin
  (* TODO: check *)
  let nda_succ = get_node_succ_by_et nda BLK g in
  let new_nd = new_node_sv new_sv in
  let new_ed2 = new_blk_edge nda.node_id new_sv in
  let new_ed1 = new_blk_edge new_sv nda_succ.node_id in
  graph_add_node new_nd;
  graph_remove_edge nda nda_succ g;
  graph_add_edge nda new_nd g new_ed1;
  graph_add_edge new_nd nda_succ g new_ed2;
  end

  (* check nda should be unfolded at which edge or not  (vx.fi) *)

(* find which level to unfold depends on which fi (size, or next or ....)*)
let find_unfold_lel nda (fk:Mman_dabs.feature_kind) g =
    begin
      let edtm = ref Out in
      let edls = get_node_succ_eds nda g in
      let len = List.length edls in
      let fl = fe_lel fk in
      if (fl == H)
      then
        for i = 0 to len -1 do
          let ed = List.nth edls i in
          if (ed.edge_type == CLS)
          then edtm := H
          else failwith "no edge to unfold"
        done
      ;
      if (fl == F)
      then
        for i = 0 to len -1 do
          let ed = List.nth edls i in
          if (ed.edge_type == FLS)
          then edtm := F
          else failwith "no edge to unfold"
        done
      ;
      if (fl == P)
      then
        for i = 0 to len -1 do
          let ed = List.nth edls i in
          if (ed.edge_type == PLS)
          then edtm := P
          else failwith "no edge to unfold"
        done
      ; 
      !edtm
 end

(*TODO*)
let node_is_to_unfold nda (fi:Mman_svar.Svar.t) g = 
begin
    let res = ref 0 in 
    begin 
    match fi.kind  with
     | Feature (Some(si),fk) -> 
        begin
            let fkl = fe_lel fk in 
            if (fkl == H) (* access at H level *)
            then ()
            ; 
            if (fkl == F) (* access at F level*)
            then 
            ( 
              let isin = get_graph_node_by_id nda.node_succ.(1) g in 
              if (isin != emp_node) (* the node labeing existed *)
              then res := 1;
              if (isin == emp_node)  (* need to unfold at edge FCK *)  
              then res := 2;
            )
            ;
            if (fkl == P) (* access at Previous field *)
            then 
            ( 
              let isin = get_graph_node_by_id nda.node_succ.(2) g in 
              if (isin != emp_node) (* the node labeing existed *)
              then res := 3;
              if (isin == emp_node)  (* need to unfold at edge FCK *)  
              then res := 4;
            )
        end 
     |_ -> 
        begin 
            res:= -1;
        end
    end  
     ;
  !res
end


(* find the edge to unfold in H level *)
let find_unfold_ed_H nda g =
 begin
  let edtm = ref emp_edge in
  let edls = get_node_succ_eds nda g in
  let len = List.length edls in
    for i = 0 to len -1 do
      let ed = List.nth edls i in
      if (ed.edge_type == CLS)
      then edtm := ed
      else failwith "no edge to unfold"
    done;
  !edtm
 end

(* find the edge to unfold in F level *)
let find_unfold_ed_F nda g =
 begin
  let edtm = ref emp_edge in
  let edls = get_node_succ_eds nda g in
  let len = List.length edls in
    for i = 0 to len -1 do
      let ed = List.nth edls i in
      if (ed.edge_type == FLS)
      then edtm := ed
      else failwith "no edge to unfold"
    done;
  !edtm
 end

(* find the edge to unfold in F level *)
let find_unfold_ed_P nda g =
 begin
  let edtm = ref emp_edge in
  let edls = get_node_succ_eds nda g in
  let len = List.length edls in
    for i = 0 to len -1 do
      let ed = List.nth edls i in
      if (ed.edge_type == PLS)
      then edtm := ed
      else failwith "no edge to unfold"
    done;
  !edtm
 end

(* folding up all *)
let folding g = graph_k_normalise g



(*****************************************************
 * comparsion
 *****************************************************)
(* two graphs have the same node number *)
let graph_nodes_num_eq g1 g2 =
  g1.graph_num_nodes == g2.graph_num_nodes

(* two graphs have the same number of non-anonymous nodes *)
let graph_non_nodes_num_eq g1 g2 =
 begin
  let res = ref false in
  let len1 = Array.length g1.nodes in
  let nds1 = ref 0 in
  let nds2 = ref 0 in
  for i =0 to len1-1 do
      let n1= g1.nodes.(i) in
      if (node_eq n1 emp_node == false) && (is_ano n1 == false) then
        nds1 := !nds1+1;
      let n2= g2.nodes.(i) in
      if (node_eq n2 emp_node == false) && (is_ano n2 == false) then
        nds2 := !nds2+1;
  done;
  if (!nds1 == !nds2) then
      res :=true
  ;
  !res
 end

(* two svar list are same*)
let svlist_eq svlist1 svlist2 =
  begin
    let res = ref true in
    let len1 = List.length svlist1 in
    let len2 = List.length svlist2 in
    if (len1 != len2) then
      res :=false;
    if (len1 == len2) then
       (let isin = (List.for_all ( fun si -> (is_in_list svlist2 si == true)) svlist1) in
       if isin == false then
             res :=false;)
    ;
    !res
  end

(* two graphs have the same set of ptvs labeling *)
let graph_ptrs_eq g1 g2 =
  svlist_eq g1.graph_ptrs g2.graph_ptrs

(* two graph have exactly the
 -same set of nodes (same node_ids ) includeing anonymous nodes
 -same labeling ptrvs of each node
 -same set of labeling ptrvs of graph
*)
let graph_nodes_eq g1 g2 =
  begin
    let res = ref true in
    let len = Array.length g1.nodes in
    let ndnum1 = g1.graph_num_nodes in
    let ndnum2 = g2.graph_num_nodes in
    let comp = graph_ptrs_eq g1 g2 in
    if (ndnum1 == ndnum2) && (comp == true) then
    res:=
    List.for_all
      (
        fun ni -> let n2 = get_graph_node_by_id ni.node_id g2 in
                      ((ni != emp_node) && (n2 != emp_node) && (node_eq ni n2) ) ||
                      ((ni == emp_node) && (n2 == emp_node))
      )
      (Array.to_list g1.nodes)
      ;
    !res
  end

(* two graph have exactly the
 -same set of non-anonymous nodes (same node ids sets)
 -same labeling ptrvs of each node
 -same set of labeling ptrvs of graph
*)
let graph_nonano_nodes_eq g1 g2 =
  begin
    let res = ref true in
    let len = Array.length g1.nodes in
    let comp = graph_ptrs_eq g1 g2 in
    if  (graph_non_nodes_num_eq g1 g2) == true  &&
        (comp == true)
    then
     Array.iter
     (
        fun ni ->
            if (ni != emp_node) && (is_ano ni == false) then
            let isin = get_graph_node_by_id ni.node_id g2 in
            if (isin == emp_node) then
                res:=false;
            if (isin != emp_node) &&(node_eq ni isin == false) then
                res := false;
     )
     g1.nodes
     ;
    !res
  end


(* two graph have the
 -same set of nodes (Nid1 -> Nid2, with anonymous nodes)
 -same labeling ptrvs of each node
 -same set of labeling ptrvs of graph
*)
let graph_nodes_eq_iso h g1 g2 =
  begin
    let res = ref true in
    let ndnum1 = g1.graph_num_nodes in
    let ndnum2 = g2.graph_num_nodes in
    let comp = graph_ptrs_eq g1 g2 in   (*  *)
    if (ndnum1 == ndnum2) && (comp == true) then
      res :=
      List.for_all
        (
        fun n1 ->
             ( List.exists
              (
                fun n2 -> (node_eq_iso n1 n2 g1 g2) &&
                          (EnvMap.find n1.node_id.id h == n2.node_id.id)
              )
              (Array.to_list g2.nodes);
             )
      )
      (Array.to_list g1.nodes)
      ;
    !res
  end


(* two graphs are comparable (have the
      -same ptr variables set
      -each node has the same ptv labelling
    *)
let graph_is_comp h g1 g2 =
  graph_nodes_eq_iso h g1 g2


(* two graphs are exactly
 -same nodes with the same ptrs
 -same labeling,
 -same edges
 -same nodes order
*)
let graph_exa_eq g1 g2 =
  if( (graph_ptrs_eq g1 g2) && (graph_nodes_eq g1 g2))
  then
    let ns = Array.length g1.nodes -1 in
    let t =
     try
     for i = 0  to ns do
      for j = 0 to ns do
        if (edge_eq g1.matrix.(i).(j) g2.matrix.(i).(j) == false)
        then raise Break
      done
     done;
     true
     with Break -> false
   in t
 else false


(* find the corresponding ed in matrix,  nodes are bese on mapping h *)
let ed_in_matrix_map h ed n1 n2 g1 g2 =
  let tem = ref false in
   for i = 0 to Array.length g2.nodes -1 do
    for j = 0 to Array.length g2.nodes -1 do
     let n1_ = g2.nodes.(i) in
     let n2_ = g2.nodes.(j) in
      if((g2.matrix.(i).(j) == ed)   &&
         (node_eq_iso n1 n1_ g1 g2 ) &&
         (node_eq_iso n2 n2_ g1 g2 ) &&
         ((EnvMap.find n1.node_id.id h) == n1_.node_id.id) &&
         ((EnvMap.find n2.node_id.id h) == n2_.node_id.id)
        )
      then tem := true  (* if there is *)
    done
  done;
  !tem (* false: no correponing edge
        * true: has a correponing edge
        *)

(* find the corresponding edge in g2*)
let ed_in_matrix ed n1 n2 g1 g2 =
  let tem = ref false in
   for i = 0 to Array.length g2.nodes -1 do
    for j = 0 to Array.length g2.nodes -1 do
     if( (g2.matrix.(i).(j) == ed) &&
         (node_eq n1 g2.nodes.(i) ) &&
         (node_eq n2 g2.nodes.(j) )
        )
      then tem := true  (* if there is *)
    done
  done;
  !tem (* false: no correponing edge
        * true: has a correponing edge
        *)


(* graphs are isomorphic: have the
 -same edges mapping relations,
 -same nodes set
 -same labelling ptvs of each node
 *)
let rec graph_isomorphic h g1 g2 =
  let result = ref true  in
  let eds1 = get_graph_edge_num g1 in
  let eds2 = get_graph_edge_num g2 in
  if (graph_is_comp h g1 g2) == false || (eds1 != eds2)
  then false
  else
  (
    let len = Array.length g1.nodes in
    for i = 0 to len-1 do
      for j = 0 to len -1 do
        let ed = g1.matrix.(i).(j) in
        let n1 = g1.nodes.(i) in
        let n2 = g1.nodes.(j) in
        if ((ed != emp_edge) && ((ed_in_matrix_map h ed n1 n2 g1 g2) == false))
        then result := false
      done
    done;
    !result
  )

(* two graphs have
-same node id set
-same edges
-same labelling ptv of each node
-different node index
*)
let rec graph_isomorphic_ideq g1 g2 =
  let result = ref true  in
  let eds1 = get_graph_edge_num g1 in
  let eds2 = get_graph_edge_num g2 in
  if (graph_nodes_eq g1 g2) == false || (eds1 != eds2)
  then false
  else
  (
    let len = Array.length g1.nodes in
    for i = 0 to len-1 do
      for j = 0 to len -1 do
        let ed = g1.matrix.(i).(j) in
        let n1 = g1.nodes.(i) in
        let n2 = g1.nodes.(j) in
        if ((ed != emp_edge) && ((ed_in_matrix ed n1 n2 g1 g2) == false))
        then result := false
      done
    done;
    !result
  )


(* two graphs are equal *)
let graph_equal h g1 g2 =
  let iso = graph_isomorphic h g1 g2 in
  let is_eq = graph_exa_eq g1 g2 in
  iso || is_eq


(*
 TODO: consider comparing in different level (H and F)
 both g1 and g2 has more than k anonymous nodes
 compare g1 and g2 after normalizing
 return 1: g1 is less than g2
 return 2: g2 is less than g1
 return 3: g1 and g2 are isomorphic
 return 0: otherwise
*)
let graph_compare g1 g2 =  (**)
    begin
      let res = ref 0 in
      if g1.graph_num_nodes > g2.graph_num_nodes then
      (
        graph_k_normalise g1;
        graph_k_normalise g2;
        if (graph_nodes_num_eq g1 g2 == true) &&
           (graph_nodes_eq g1 g2 == true) &&
           (graph_anon_node_num g1 ==graph_anon_node_num g2)
        then res := 2
      );
      !res
    end


(*  begin
   let res = ref 0 in
   let is_f1 =  graph_is_to_fold g1 in
   let is_f2 =  graph_is_to_fold g2 in
   if ((is_f1 == true) && (is_f2 == true)) then
    begin
     if(g1.graph_num_nodes > g2.graph_num_nodes) then
     (
       graph_k_normalise g1;
       graph_k_normalise g2;
       if (graph_isomorphic h g1 g2) then
            res := 1
       else res := 0
     );
     if(g1.graph_num_nodes < g2.graph_num_nodes) then
     (
       graph_k_normalise g1;
       graph_k_normalise g2;
       if (graph_isomorphic h g1 g2) then
           res := 2
       else res := 0
     );
     if(g1.graph_num_nodes == g2.graph_num_nodes) then
     (
       graph_k_normalise g1;
       graph_k_normalise g2;
       if (graph_isomorphic h g1 g2) then
        res := 3
       else res := 0
     )
   end;
    !res
  end
*)

(* both the number of anonymous nodes in g1 and g2 are less then k,
 * g1 and g2 have the same set of non-anonymous nodes
 * do not need to fold
 * anoymous nodes in g1 are included in g2 or vise versa
 * 1: g2 is less g1
 * 2: g1 is less g2
 *)
let graph_less g1 g2 = 1
 (* begin
    let res = ref 0 in
    let is_f1 =  graph_is_to_fold g1 in
    let is_f2 =  graph_is_to_fold g2 in
    if ((is_f1 == false) && (is_f2 == false))&&(graph_nonano_nodes_eq g1 g2 == true) then
      begin
        let ls1 =   (k_anonymous_list_F g1) in
        let ls2 =   (k_anonymous_list_H g2) in
        let len1 = (List.length ls1) -1 in
        let len2 = (List.length ls2) -1 in
        if (len1 >= len2) then
          let isin =List.for_all (
               (fun ls ->
                 (
                  List.for_all
                  (fun pv -> ((is_in_nd_list ls pv)==true))
                   ls
                 )
            )ls2

          in
          if (isin == true) then res := 1
        ;
        if (len2 > len1) then
          let isin = List.for_all (fun pv -> (is_in_nd_list !ls2 pv)==true) !ls1 in
          if (isin == true) then res := 2
      end
    ;
    !res
  end*)


(*******************************************************
 * meet join
 ******************************************************)
let graph_meet g1 _g2 =  g1 (* todo*)


(*******************************************************
 * rules
 ******************************************************)

(** blk(a,b)*blk(b,c) /\ a <=b <= c ==> blk(a,c)*)
(** cls(a,b)[W1]*cls(b,c)[W2] /\ (a <=b <= c) ==> cls(a,c,w)*)
let apply_rules g =
  let n1 = ref 0 in
  let n2 = ref 0 in
  let len = Array.length g.nodes in
  for i = 0 to len-1 do
    for j = 0 to len-1 do
    let ed = g.matrix.(i).(j) in
    match ed.edge_type with
    | BLK ->
        begin
         n1 := i;
         n2 := j;
         let nd1 = g.nodes.(!n1) in
         let nd2 = g.nodes.(!n2) in
         let nd3 = ref (get_node_succ_by_et nd2 BLK g) in
         if (!nd3 != emp_node) then
            begin
                  let new_ed = new_blk_edge nd1.node_id !nd3.node_id in
                  graph_remove_edge nd1 nd2 g;
                  graph_remove_edge nd2 !nd3 g;
                  graph_add_edge nd1 !nd3 g new_ed;
            end
        end
    | CLS ->
      begin
         n1 := i;
         n2 := j;
         let nd1 = g.nodes.(!n1) in
         let nd2 = g.nodes.(!n2) in
         let nd3 = ref (get_node_succ_by_et nd2 CLS g) in
          if (!nd3 != emp_node) then
            begin
                  let new_ed =new_cls_edge in
                  graph_remove_edge nd1 nd2 g;
                  graph_remove_edge nd2 !nd3 g;
                  graph_add_edge nd1 !nd3 g new_ed;
            end
        end
    | _ ->()
  done
 done


(*******************************************************
 * communicate with data domain
 ******************************************************)

(*******************************************************
 * graph transfers
 ******************************************************)

(* search node (node_index,ptv_index) that ptr variable x labels *)
let search_node_ptr (p:Svar.t) g =
  let loc = ref (0 , 0) in
  try
  for i = 0 to g.graph_num_nodes -1 do
    for j = 0 to (List.length g.nodes.(i).node_ptrvs ) -1 do
        if (Svar.equal ( List.nth g.nodes.(i).node_ptrvs j ) p )
        then
         (
         let t = (i,j) in
         loc := t;
         raise Break;
         )
    done;
  done;
  assert false
  with Break -> !loc

(*Remove the nth element from a list*)
let rec remove_at n = function
    | [] -> [];()
    | _h :: t -> if n = 0 then () else  remove_at (n-1) t;()

(* remove a labeled ptr variable p of a node*)
let graph_remove_node_ptr p g =
  begin
    let loc1,loc2 = search_node_ptr p g in
    let n = g.nodes.(loc1) in
    remove_at loc2 n.node_ptrvs
  end

(* Svar.t a label prt variable of node nd*)
let graph_add_node_ptr p nd =
  nd.node_ptrvs <- p::nd.node_ptrvs

(* check ptr labeling NULL or nor*)
let ptr_label_null p =   (**)
  let is = ref false in
  try
  for i = 0 to (List.length emp_node.node_ptrvs) -1 do
    if Svar.equal (List.nth emp_node.node_ptrvs i) p
    then
    (is := true ;
    raise Break)
  done;
  assert false
  with Break -> !is

(* mark to anonymous node*)
let mark_anonymous nd =
    begin
      nd.node_ptrvs <-[];
    end

(* transform BLK(a,b) ==> CHK(...) *)
let tran_blk_chk n1 n2 g =
  begin
    let ed = get_edge_n1_n2 n1 n2 g in
    if (ed.edge_type == BLK) then
      ( graph_remove_edge n1 n2 g;
        let edn =  new_chk_edge in
        graph_add_edge n1 n2 g edn;)
  end

(* transform CHK(a,b) ==> BLK(...) *)
let tran_chk_blk n1 n2 g =
  begin
    let ed = get_edge_n1_n2 n1 n2 g in
    if (ed.edge_type == CHK) then
       (graph_remove_edge n1 n2 g;
        let edn = new_blk_edge n1.node_id n2.node_id in
        graph_add_edge n1 n2 g edn;)
  end

(*TODO: *)

(*---------------------- Assignment ---------------------*)

(* Assignment  vx := vy *)
(* removing labeling var vx from node nvx, addn var vs into node nvy*)
let assign_x_y (vx:Svar.t) (vy:Svar.t)  g =
  begin
    if (is_in_list g.graph_ptrs vx == true) &&
       (is_in_list g.graph_ptrs vy == true)
    then (
      let ndx = get_graph_node_by_lab vx g  in
      let ndy = get_graph_node_by_lab vy g  in
      ndy.node_ptrvs <- ndy.node_ptrvs @[vx];
      ndx.node_ptrvs <- (List.filter
                        (fun nd -> ( not (Svar.equal nd vx)))
                        ndx.node_ptrvs);
      if((List.length ndx.node_ptrvs )== 0 )
      then mark_anonymous ndx
      )
  end

(* Assignment vx := vy->next *)
let assign_x_y_fi_ (vx:Svar.t)(vy:Svar.t)(fi:Svar.t) g =
  begin
    if (is_in_list g.graph_ptrs vx == true) &&
       (is_in_list g.graph_ptrs vy == true)
    then
    (
      let ndx = get_graph_node_by_lab vx g  in
      let ndy = get_graph_node_by_lab vy g  in
      let ed = find_unfold_ed_F ndy g in
      if (ed == emp_edge) then
         (
           let ndy_nxt = get_node_succ_by_et ndy FCK g in
            ndy_nxt.node_ptrvs <- ndy_nxt.node_ptrvs @[vx];
            ndx.node_ptrvs <- (List.filter
                              (fun nd -> ( not (Svar.equal nd vx)))
                              ndx.node_ptrvs);
            if((List.length ndx.node_ptrvs )== 0 )
            then mark_anonymous ndx
        )
      else if (ed != emp_edge) then  (*unfloding ndy*)
        (
           unfoldidng_FLS ndy fi g;
           let ndy_nxt = get_graph_node_by_id ndy.node_succ.(0) g in
           ndy_nxt.node_ptrvs <- ndy_nxt.node_ptrvs @[vx];
           ndx.node_ptrvs <- (List.filter
                             (fun nd -> ( not (Svar.equal nd vx)))
                             ndx.node_ptrvs);
           if((List.length ndx.node_ptrvs )== 0 )
           then mark_anonymous ndx
        )
      )
    ;
    if (is_in_list g.graph_ptrs vx == false) &&
       (is_in_list g.graph_ptrs vy == true)
    then
    (
      let ndy = get_graph_node_by_lab vy g  in
      let ed = find_unfold_ed_F ndy g in
      if (ed == emp_edge) then
      (
        let ndy_nxt = get_node_succ_by_et ndy FCK g in
        ndy_nxt.node_ptrvs <- ndy_nxt.node_ptrvs @[vx];
        )
      else if (ed != emp_edge) then
      (
        unfoldidng_FLS ndy fi g;
        let ndy_nxt = get_graph_node_by_id ndy.node_succ.(0) g in
        ndy_nxt.node_ptrvs <- ndy_nxt.node_ptrvs @[vx];
      )
    )
  end

(* Assignment vx->next:= vy *)
let assign_x_fi_y (vx:Svar.t)(vy:Svar.t)(fi:Svar.t) g =
  begin
  if (is_in_list g.graph_ptrs vx == true) &&
     (is_in_list g.graph_ptrs vy == true)
  then
  (
    let ndx = get_graph_node_by_lab vx g  in
    let ndy = get_graph_node_by_lab vy g  in
    let ed = find_unfold_ed_F ndx g in
    if (ed != emp_edge) then
      begin
        match ed.edge_type with
        | CLS -> ()
        | FLS ->
          begin
            unfoldidng_FLS ndx fi g;
            let new_ed = new_fck_edge in
            let ndx_nxt = get_graph_node_by_id ndx.node_succ.(0) g in
            graph_remove_edge ndx ndx_nxt g;
            graph_add_edge ndx ndy g new_ed;
          end
        |_ -> ()
      end
     ;
     if (ed == emp_edge) then  (*do not unfold*)
      begin
            let new_ed = new_fck_edge in
            let ndx_nxt = get_node_succ_by_et ndx FCK g in
            graph_remove_edge ndx ndx_nxt g;
            graph_add_edge ndx ndy g new_ed;
      end
  )
end

(* Assignment vx->next := vy->next *)
let assign_x_fi_y_fi (vx:Svar.t) (vy:Svar.t) (f1:Svar.t) (f2:Svar.t)g =
  if (is_in_list g.graph_ptrs vx == true) &&
      (is_in_list g.graph_ptrs vy == true)
  then
  (
    let ndx = get_graph_node_by_lab vx g  in
    let ndy = get_graph_node_by_lab vy g  in
    let fed1 = find_unfold_ed_F ndx g in
    let fed2 = find_unfold_ed_F ndy g in
    if (fed1 == emp_edge) && (fed2 == emp_edge) then
      begin
          let new_ed = new_fck_edge in
          let ndx_nxt = get_node_succ_by_et ndx FCK g in
          let ndy_nxt = get_node_succ_by_et ndy FCK g in
          graph_remove_edge ndx ndx_nxt g;
          graph_add_edge ndx ndy_nxt g new_ed;
      end
    ;
    if (fed1 == emp_edge) && (fed2 != emp_edge) then
      begin
          unfoldidng_FLS ndy f2 g;
          let ndx_nxt = get_node_succ_by_et ndx FCK g in
          let ndy_nxt = get_graph_node_by_id ndy.node_succ.(0) g in
          let new_ed = new_fck_edge in
          graph_remove_edge ndx ndx_nxt g;
          graph_add_edge ndx ndy_nxt g new_ed;
      end
    ;
    if (fed1 != emp_edge) && (fed2 == emp_edge) then
      begin
          unfoldidng_FLS ndx f1 g;
          let ndx_nxt = get_graph_node_by_id ndx.node_succ.(0) g in
          let ndy_nxt = get_node_succ_by_et ndy FCK g in
          let new_ed = new_fck_edge in
          graph_remove_edge ndx ndx_nxt g;
          graph_add_edge ndx ndy_nxt g new_ed;
      end
    ;
    if (fed1 != emp_edge) && (fed2 != emp_edge) then
      begin
          unfoldidng_FLS ndx f1 g;
          unfoldidng_FLS ndy f2 g;
          let ndx_nxt = get_graph_node_by_id ndx.node_succ.(0) g in
          let ndy_nxt = get_graph_node_by_id ndy.node_succ.(0) g in
          let new_ed = new_fck_edge in
          graph_remove_edge ndx ndx_nxt g;
          graph_add_edge ndx ndy_nxt g new_ed;
      end
   )



(*---------------------- guard ---------------------*)


(* TODO: to define the TOP and bottom graphs *)
let bottom = emp_graph (*TODO*)
let top = emp_graph  (*TODO*)

(* guard
 * vx == vy
 * vx == vy->field
 * vx->field == vy
 * vx->field == vy ->field
 *)
(* guard  vx == vy *)
(* check vx and vy whether labeling the same node *)
let guard_x_y_eq (vx:Svar.t) (vy:Svar.t)  g =
          let ndx = get_graph_node_by_lab vx g in
          let ndy = get_graph_node_by_lab vy g in
          if (node_eq ndx ndy) then g
          else bottom

(* vx and vy are ptr variabels *)
(* vx == vy->next *)
(* vx == vy->previous *)
(* at present: only working on free list(singly linked list) *)
let guard_x_y_fi_eq (vx:Svar.t) (vy:Svar.t) (fi:Svar.t) (sv:Svar.t) g =
  begin
  (* assert vx and vy are different ptvs *)
  let res = ref emp_graph in
  if (is_in_list g.graph_ptrs vx == true) &&
     (is_in_list g.graph_ptrs vy == true)
  then
    (
    (*chech the fi type*)
    let ndx = get_graph_node_by_lab vx g in
    let ndfi = get_graph_node_by_lab fi g in
    (* find the node that correspond to feature fi
     * the feature node is existed in graph, is not equal to ndx  *)
    if (node_eq ndfi emp_node == false) 
    then 
          res := g;
    (* need to unfold the out-egde of ndy depending on the type of fi*)
    if (node_eq ndfi emp_node == true)
    then (
      match fi.kind with
        | Feature (Some(si),fk) -> 
         begin
          let fkl = fe_lel fk in 
          if (fkl == F) (* access at F level,FLS *) then 
          (
            (* unfold depends on the type of fi, the new node(fi)
             * will be generated, the new node is the featrue kind *)
            let ndy = get_graph_node_by_lab vy g in
            unfoldidng_FLS ndy sv g;
            (* get the features node *)
            let ndy_succ = get_node_succ_by_et ndy FCK g in
            if (node_eq ndy_succ ndx == true) (* impossible case *)
            then   res := bottom;
            if (node_eq ndy_succ ndx == false)
            then   res := g;
          )
          ;
           if (fkl == P) (* access at PLS *) then 
          (
            (* unfold depends on the type of fi, the new node(fi)
             * will be generated, the new node is the featrue kind *)
            let ndy = get_graph_node_by_lab vy g in
            unfoldidng_PLS ndy sv g;
            (* get the features node *)
            let ndy_succ = get_node_succ_by_et ndy PPT g in
            if (node_eq ndy_succ ndx == true) (* impossible case *)
            then   res := bottom;
            if (node_eq ndy_succ ndx == false)
            then   res := g;
          ) 
         end 
        )
    )
    ;
    !res
  end

(* vx->next == vy *)
(* vx and vy are different ptr variables *)
let guard_x_fi_y_eq (vx:Svar.t) (vy:Svar.t) (fi:Svar.t) g =
  begin
    (* assert vx and vy are different ptvs *)
  let res = ref emp_graph in
  if (is_in_list g.graph_ptrs vx == true) &&
     (is_in_list g.graph_ptrs vy == true)
   then
    (
    let ndy = get_graph_node_by_lab vy g in

    (* find the node that correspond to feature fi *)
    let ndfi = get_graph_node_by_lab fi g in

    (* the feature node is existed in graph  *)
    if (node_eq ndfi emp_node == false)
    then
          res := g;

    (* need to unfold the out egde of ndvx depending on the type of fi*)
    if (node_eq ndfi emp_node == true)
    then (
         (* unfold depends on the type of fi, the new node(fi)
          * will be generated, the new node is the featrue kind *)
         let ndx = get_graph_node_by_lab vx g in
         unfoldidng_FLS ndx fi g;
         (* get the features node *)
         let ndx_succ = get_node_succ_by_et ndx FCK g in
         if (node_eq ndx_succ ndy == true) (* impossible case *)
         then
             res := bottom;
         if (node_eq ndx_succ ndy == false)
         then
             res := g;
         )
    )
    ;
    !res
  end

(* vx->next == vy->next *)
let guard_x_fi_y_fi_eq (vx:Svar.t) (vy:Svar.t)(f1:Svar.t) (f2:Svar.t)  g =
  begin
    let res = ref emp_graph in
    if (is_in_list g.graph_ptrs vx == true) &&
       (is_in_list g.graph_ptrs vy == true)
    then
    (
      let ndx = get_graph_node_by_lab vx g  in
      let ndy = get_graph_node_by_lab vy g  in

      let nf1 = get_graph_node_by_lab f1 g in
      let nf2 = get_graph_node_by_lab f2 g in

      (* ndx----->f1, ndy----->f2 *)
      if (node_eq nf1 emp_node == false) &&
         (node_eq nf2 emp_node == false)
      then
         (
          if (node_eq nf1 nf2 == false)
          then   res := bottom;
          if (node_eq nf1 nf2 == true)
          then   res := g;
         )
      ;
      (* ndx ====> ndx' ... ndy ---> ndy'*)
      if (node_eq nf1 emp_node == true) &&
         (node_eq nf2 emp_node == false)
      then
         (
           unfoldidng_FLS ndx f1 g;
           let ndx_succ = get_node_succ_by_et ndx FCK g in
           if (node_eq ndx_succ nf2 == true)
           then res := g;
           if (node_eq ndx_succ nf2 == false)
           then res :=bottom;
         )
       ;
      (* ndx ----> ndx' ... ndy ====> ndy'*)
      if (node_eq nf1 emp_node == false) &&
         (node_eq nf2 emp_node == true)
      then
         (
           unfoldidng_FLS ndy f2 g;
           let ndy_succ = get_node_succ_by_et ndy FCK g in
           if (node_eq ndy_succ nf1 == true)
           then res := g;
           if (node_eq ndy_succ nf1 == false)
           then res := bottom;
         )
      ;
       (* ndx =====> ndx' ... ndy ====> ndy'*)
      if (node_eq nf1 emp_node == true) &&
         (node_eq nf2 emp_node == true)
      then
            res := bottom;
      )
      ;
      !res
  end


(* guard  vx != vy *)
(* check vx and vy whether labeling the same node *)
let guard_x_y_neq (vx:Svar.t) (vy:Svar.t)  g =
          let ndx = get_graph_node_by_lab vx g in
          let ndy = get_graph_node_by_lab vy g in
          if (node_eq ndx ndy == false) then g
          else bottom

(* vx and vy are ptr variabels *)
(* vx != vy->next *)
(* at present: only working on free list(singly linked list) *)
let guard_x_y_fi_neq (vx:Svar.t) (vy:Svar.t) (fi:Svar.t)  g =
  begin
  (* assert vx and vy are different ptvs *)
  let res = ref emp_graph in
  if (is_in_list g.graph_ptrs vx == true) &&
     (is_in_list g.graph_ptrs vy == true)
  then
    (
    (*chech the fi type*)
    match fi.kind with 
    | Feature (Some(si), fk) ->
          begin
            let ndy = get_graph_node_by_lab vy g in 
            let ndx = get_graph_node_by_lab vx g in 
            let fkl = find_unfold_lel ndy fk g in 
            (* do not unfold *)
            if (fkl == Out)  then 
            (    
              let lv = fe_lel fk in                 
              let ndfi = get_node_succ_by_lel ndy lv g in (* node of vy->next *)
              (* find the node that correspond to feature fi
                * the feature node is existed in graph, is not equal to ndx  *)
              if (node_eq ndfi ndx == true)
              then
                 res := bottom;
              if (node_eq ndfi ndx == false)
              then
                 res := g;
              (* need to unfold the out-egde of ndy depending on the type of fi*)
            )
            ;
            if (fkl == H) (* unfold at H level *)
            then ();
            if (fkl == F) (* unfold at F level *)
            then 
            (
              (* unfold depends on the type of fi, the new node(fi)
              * will be generated, the new node is the featrue kind *)
              unfoldidng_FLS ndy fi g;
              
              (* get the features node *)
              let ndy_succ = get_node_succ_by_et ndy FCK g in
              if (node_eq ndy_succ ndx == true)  
              then   res := bottom;
              if (node_eq ndy_succ ndx == false)
              then   res := g;
             )
          end 
      | _ -> 
          begin 
            res := bottom;
          end 
    )
    ;
    !res
  end

(* vx->next != vy *)
(* vx and vy are different ptr variables *)
let guard_x_fi_y_neq (vx:Svar.t) (vy:Svar.t) (fi:Svar.t) g =
  begin
    (* assert vx and vy are different ptvs *)
  let res = ref emp_graph in
  if (is_in_list g.graph_ptrs vx == true) &&
     (is_in_list g.graph_ptrs vy == true)
   then
   (
    (*chech the fi type*)
    match fi.kind with 
    | Feature (Some(si), fk) ->
          begin
            let ndx = get_graph_node_by_lab vx g in 
            let ndy = get_graph_node_by_lab vy g in 
            let fkr = find_unfold_lel ndx fk g in 
            (* do not unfold *)
            if (fkr == Out)  then 
            (    
              let lv = fe_lel fk in                 
              let ndfi = get_node_succ_by_lel ndx lv g in (* node of vx->next *)
              (* find the node that correspond to feature fi
                * the feature node is existed in graph, is not equal to ndx  *)
              if (node_eq ndfi ndy == true)
              then
                 res := bottom;
              if (node_eq ndfi ndy == false)
              then
                 res := g;
              (* need to unfold the out-egde of ndy depending on the type of fi*)
            )
            ;
            if (fkr == H) (* unfold at H level *)
            then ();
            if (fkr == F) (* unfold at F level *)
            then 
            (
              (* unfold depends on the type of fi, the new node(fi)
              * will be generated, the new node is the featrue kind *)
              unfoldidng_FLS ndx fi g;
              
              (* get the features node *)
              let ndx_succ = get_node_succ_by_et ndx FCK g in
              if (node_eq ndx_succ ndy == true)  
              then   res := bottom;
              if (node_eq ndx_succ ndy == false)
              then   res := g;
             )
          end 
      | _ -> 
          begin 
            res := bottom;
          end 
    )
    ;
    !res
  end

(* vx->next != vy->next *)
let guard_x_fi_y_fi_neq (vx:Svar.t) (vy:Svar.t) (f1:Svar.t) (f2:Svar.t)  g =
  begin
    let res = ref emp_graph in
    if (is_in_list g.graph_ptrs vx == true) &&
       (is_in_list g.graph_ptrs vy == true)
    then
    (
      let ndx = get_graph_node_by_lab vx g  in
      let ndy = get_graph_node_by_lab vy g  in

      match f1.kind,f2.kind with 
          | Feature(Some(si1), fk1), Feature(Some(si),fk2)->
              begin
                match fe_lel fk1, fe_lel fk2 with
                | F, F ->  (* in F level *)
                  (* find the successor node of ndx and ndy with out edge FCk*)
                  let ndx_nxt = get_node_succ_by_et ndx FCK g in 
                  let ndy_nxt = get_node_succ_by_et ndy FCK g in 
                  let fkl = find_unfold_lel ndx fk1 g in 
                  let fkr = find_unfold_lel ndy fk2 g in
                  if (ndx_nxt != emp_node) && (fkl == Out) &&
                    (ndy_nxt != emp_node) && (fkr == Out) 
                  then  (* do not unfold at both edge *)
                    (
                     if (node_eq ndx_nxt ndy_nxt == false) 
                     then res := g
                     else if (node_eq ndx_nxt ndy_nxt == true) 
                     then res := bottom
                    )
                    ;
                  if (ndx_nxt != emp_node) &&
                     (ndy_nxt == emp_node)  
                  then (* unfold ndy with edge FLS *)
                    (
                      unfoldidng_FLS ndy f2 g;
                      (* find the successpr of ndy *)
                      let ndy_succ = get_node_succ_by_et ndy FCK g in 
                      if (node_eq ndx_nxt ndy_succ == false) 
                      then res := g
                      else if (node_eq ndx_nxt ndy_succ == true) 
                      then res := bottom
                    )
                    ;
                  if (ndx_nxt == emp_node) &&
                     (ndy_nxt != emp_node)  
                  then (* unfold ndx with edge FLS *)
                   (
                      unfoldidng_FLS ndx f1 g;
                      (* find the successpr of ndy *)
                      let ndx_succ = get_node_succ_by_et ndx FCK g in 
                      if (node_eq ndx_succ ndx_nxt == false) 
                      then res := g
                      else if (node_eq ndx_succ ndx_nxt == true) 
                      then res := bottom
                    )
                    ;
                  if (ndx_nxt == emp_node) &&
                     (ndy_nxt == emp_node)  
                  then (* unfold ndx and ndy  with edge FLS *)
                    (
                      unfoldidng_FLS ndx f1 g;
                      unfoldidng_FLS ndy f2 g;
                      (* find the successpr of ndy *)
                      let ndx_succ = get_node_succ_by_et ndx FCK g in 
                      let ndy_succ = get_node_succ_by_et ndy FCK g in 
                      if (node_eq ndx_succ ndy_succ == false) 
                      then res := g
                      else if (node_eq ndx_succ ndy_succ == true) 
                      then res := bottom
                    )
                  ;
                | _ -> ()
              end
          | _-> () (* todo with other kind of fields *)
    )
    ;
    !res
  end 



 


(*******************************************************
* lattice operations
******************************************************)

(* union two graphs *)
let graph_union _g1 _g2 =    (* todo *)
   [_g1] @ [_g2]


(* join *)
let graph_join g1 g2 =
    let order = graph_compare g1 g2 in
    let union = graph_union g1 g2 in
    match order with
     | 1 | 3 -> [g1]
     | 2 -> [g2]
     | _ -> union  (* *)

(* is_included *)
let graph_is_included  g1 g2 =
  graph_join  g1 g2

(* the bottom value is that graph with no nodes *)
let graph_is_bottom (g: graph_t) =
    if g.graph_num_nodes == 0
    then true
    else false

(* the top value is the graph with only one node, and is
     labeled by all ptr variables.*)
let graph_is_top (g: graph_t) =
  if (g.graph_num_nodes == 1) &&
     (svlist_eq g.nodes.(0).node_ptrvs g.graph_ptrs)
  then true
  else false

(*******************************************************
 * Printing graph
 * As formula form
 ******************************************************)
let pretty_graph fmt g =
  for i = 0  to Array.length g.nodes -1 do
    for j = 0 to Array.length g.nodes -1  do
      let  _ndi = g.nodes.(i) in
      let  _ndj = g.nodes.(j) in
      let et = g.matrix.(i).(j) in
      match et.edge_type with
      | FLS -> (
               Format.fprintf fmt "FLS(sv_%d, sv_%d)"
                _ndi.node_id.id
                _ndj.node_id.id
              )
      | FCK -> (
               Format.fprintf fmt "FCK(sv_%d, sv_%d)"
                _ndi.node_id.id
                _ndj.node_id.id
              )
      | BLK -> (
                Format.fprintf fmt "BLK(sv_%d, sv_%d)"
                _ndi.node_id.id
                _ndj.node_id.id
              )
      | CHD -> (
               Format.fprintf fmt "CHD(sv_%d, sv_%d)"
                _ndi.node_id.id
                _ndj.node_id.id
              )
      | CLS -> (
                Format.fprintf fmt "CLS(sv_%d, sv_%d)"
                _ndi.node_id.id
                _ndj.node_id.id
              )
      | CHK -> (
               Format.fprintf fmt "CHK(sv_%d, sv_%d)"
                _ndi.node_id.id
                _ndj.node_id.id
              )
      | _ -> ()
    done
  done


type sha_value = graph_t


let is_bottom (g:graph_t) =
  graph_is_bottom g

let is_top (g:graph_t) =
  graph_is_top g


let is_eq  (h) (g1) (g2) =
  let result = ref true  in
  let eds1 = get_graph_edge_num g1 in
  let eds2 = get_graph_edge_num g2 in
  if (graph_is_comp h g1 g2) == false || (eds1 != eds2)
  then false
  else
  (
    let len = Array.length g1.nodes in
    for i = 0 to len-1 do
      for j = 0 to len -1 do
        let ed = g1.matrix.(i).(j) in
        let n1 = g1.nodes.(i) in
        let n2 = g1.nodes.(j) in
        let isin = (ed_in_matrix_map (h) (ed) (n1) (n2) (g1) (g2)) in
        if ((ed != emp_edge) && (isin == false))
        then result := false
      done
    done;
    !result
  )


let is_leq h (g1) (g2) =
    if (graph_is_empty g1) ||
       ((is_bottom g1)&& (graph_is_empty g2))
    then true
    else if (is_bottom g1)||(is_top g2)
    then true
    else if ((is_bottom g1) && (is_bottom g2)) ||
            ((is_top g1)&&(is_top g2))
            then false
    else (graph_equal h g1 g2) || ((graph_less g1 g2) == 2)
