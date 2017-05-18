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

(** Analysis of statements and function bodies 
 *  based on the Mman_value.Model.t abstract domain.
 *)

open Cil_types;;

(**
 * Debug category
*)
let dflw_dkey = Mman_options.Self.register_category "dataflows:forward:value"

module MV = Mman_value
  
(* ********************************************************************** *)
(* {1 Parameters of the analysis } *)
(* ********************************************************************** *)
  
(**
 * Simplified lattice of values 
*)
module ValapJoinSemiLattice = struct
  type t = MV.Model.t
  let join = MV.Model.join
  let bottom = MV.Model.bottom
  let is_included = MV.Model.is_included
  let join_and_is_included = MV.Model.join_and_is_included
  let pretty = MV.Model.pretty
end

(** 
 * Analysis arguments:
 * - the starting function
 * - the stack: each function has its caller stmt id
 * - its initial state
*)
module type ComputeArg = sig
  val kf: Kernel_function.t (* = Cil_types.kernel_function *)
  val stack: (Kernel_function.t * int) list 
  val init: ValapJoinSemiLattice.t
end

(* ********************************************************************** *)
(* {2 Global states for functions call/return} *)
(* ********************************************************************** *)

(**
 * Cil temporal variables for the ghost symbolic variables
*)
let vinfo_hole vty =
  Cil.makeGlobalVar ~source:false ~temp:true
    Mman_svar.sv_hole_name vty

let vinfo_hli =
  Cil.makeGlobalVar ~source:false ~temp:true
    Mman_svar.sv_hli_name Cil.voidPtrType

let vinfo_retres vty =
  Cil.makeGlobalVar ~source:false ~temp:true
    "__retres" vty

(**
 * Memoize globals 
*)
let global_vars = ref []
let globals () =
  begin
    (if (!global_vars) == [] then
       let init_global vi _ii =
         match vi.vstorage with
         | Cil_types.Static ->
             global_vars := !global_vars @ [Mman_asyn.AVar(vi)]
         | _ -> ()
       in
       Globals.Vars.iter_in_file_order init_global
    );
    !global_vars
  end
  
(**
 * Compute actions (assignment and constraints)
 * to initialize the globals
*)
let init_done = ref false 
let init_glv : Mman_asyn.alval list ref = ref []
let init_gexp : Mman_asyn.aexp list ref = ref []
let init_gcnd : Mman_asyn.aconstr list ref = ref []

let init_globals () 
  : unit
  =
  let _ = Mman_options.Self.feedback "DF:running init globals@." in 
  if not(!init_done) then
    begin
      let gl, ge, gc = Mman_asyn.init_globals () in 
      init_glv := gl;
      init_gexp := ge;
      init_gcnd := gc;

      (*init_gcnd := (Mman_asyn.coerce_var vinfo_hli Cil.voidPtrType);*)
      (*init_gcnd := Mman_asyn.init_globals;*)
      
      (* Iterate over globals *)
      (*Globals.Vars.iter_in_file_order init_global;*)
      (* = iter_globals init_global (Ast.get()).globals *)

      let _ = Mman_options.Self.feedback "initialization done\n--------------@." in 
      init_done := true
    end
  

(**
 * State of the computation for first stmt for functions
*)
module Call_state =
  State_builder.Hashtbl
    (Cil_datatype.Stmt.Hashtbl)
    (MV.Model)
    (struct
      let name = "Mman_dflow.Call_state"
      let dependencies = [ Ast.self; Db.Value.self ]
      let size = 17
    end)
    
let set_call_state stmt state =
  (* TODO: enclosing loop treatment needed? *)
  let change old_state = (MV.Model.join old_state state) in
  let set _ = state in
  ignore (Call_state.memo ~change set stmt)
    
(**
 * State of the computation for return stmt for function
*)
module Return_state =
  State_builder.Hashtbl
    (Cil_datatype.Stmt.Hashtbl)
    (MV.Model)
    (struct
      let name = "Mman_dflow.Return_state"
      let dependencies = [ Ast.self; Db.Value.self ]
      let size = 17
    end)
    
let set_return_state stmt state =
  let change old_state = (MV.Model.join old_state state) in
  let set _ = state in
  ignore (Return_state.memo ~change set stmt)

(**
 * State of the computation for return stmt for loops
*)
    
(** TODO: loops needed? *)
    
(** 
 * Compute the initial state for call of kf_callee by kf_caller statement s
 * with arguments argl in state.
*)
let rec compute_fun_init s kf_caller kf_callee argl state =
  let _ = Mman_options.Self.feedback "DF:compute_fun_init...@." in
  (* - unify the caller and the callee environments *)
  let eid_caller = Mman_env.penv_of_stmt s in
  let stmt_callee = Kernel_function.find_first_stmt kf_callee in
  let eid_callee = Mman_env.penv_of_stmt stmt_callee in
  
  (* o unconstrain __retres from the caller environment *)
  let call_state_forgot_retres = (* if caller does not return void,
                                    unconstrain __retres in eid_call *)
    if Kernel_function.returns_void kf_caller 
    then 
    	state
    else
      MV.Model.forget_list state
        [Mman_asyn.AVar(vinfo_retres
                          (Kernel_function.get_return_type kf_caller))]
  in
  (* o compute the unifying environment *)
  let eid_common, _, _ = Mman_env.penv_unify eid_caller eid_callee in
  (* - extend the abstract value of the caller to this common env *)
  let call_state_extended =
    MV.Model.change_env call_state_forgot_retres
      eid_caller eid_common
  in 
  (* - do assignment of formals by arguments *)
  let kf_fv1_fvn = Kernel_function.get_formals kf_callee in
  let call_state_with_actuals =
    List.fold_left2
      (fun d fvi ei ->
         let alvi = Mman_asyn.AVar(fvi) in
         let aei = Mman_asyn.transform_exp ei in      
         (* MV.Model.do_assign  call_state_extended [alvi] [aei] [alvi] [aei] *)
         MV.Model.do_assign d [alvi] [aei] [alvi] [aei]        (* !! d.sei is not eid_common *)
      )
      call_state_extended
      kf_fv1_fvn
      argl
  in 
  (* - project out caller environment *)
  let callee_state_without_locals =
    MV.Model.change_env call_state_with_actuals eid_common eid_callee
  in 
  (* - initialise the local vars depending on their type *)
  let callee_state_init_stmt =
    set_fun_locals kf_callee eid_callee callee_state_without_locals
  in
  let _ = (Mman_options.Self.debug  ~level:2
             "DF:compute_fun_init done. \n State at first stmt sid:%d: %a@."
             stmt_callee.sid
             MV.Model.pretty callee_state_init_stmt)
  in
  callee_state_init_stmt
    
(**
 * Initalise the locals using their type
*)
and set_fun_locals kf _eid_kf state =
  let _ = Mman_options.Self.debug ~level:1 "DF:set_fun_locals....@."
        in 
  let lv1_lvn = Kernel_function.get_locals kf in
  let c1_cn = ref [] in (* collect constraints *)
  let _ =
    List.iter
      (fun lvi ->
         c1_cn := !c1_cn @ (Mman_asyn.coerce_var lvi lvi.vtype)
      )
      lv1_lvn
  in
  MV.Model.meet_exp (* eid_kf *) state (!c1_cn)
    
(**
 * Combine the callee return state vret with the caller state
 * vcall and assign lv with __retres
 *)
let compute_fun_ret s lv vcall vret kf_callee =
  let _ = Mman_options.Self.debug ~level:2 "DF:Combine the callee return state vret with the caller state ... @." 
      in
  let _ = Mman_options.Self.debug ~level:2 "DF:returned_state: %a @." 
            MV.Model.pretty vret
    in 
  (* caller *)
  let eid_caller = Mman_env.penv_of_stmt s in
  let kf_caller = Kernel_function.find_englobing_kf s in

  (* callee *)
  let eid_callee = MV.Model.env vret in

  (* common unifying environment *)
  let eid_common, _, _ = Mman_env.penv_unify eid_caller eid_callee in
  let _ = Mman_options.Self.debug ~level:2 "DF:eid_common %d @." 
        eid_common
  in 

  (* prepare caller state *)
  (*  - forget globals: here, not relational analysis *)
  let state_caller_noglobs = MV.Model.forget_list vcall (globals ())
  in
  (*  - extend to common environment *)
  let state_caller_extended = 
  	  MV.Model.change_env state_caller_noglobs eid_caller eid_common 
  in
  
  (* prepare callee state *)
  let state_callee_ret_update =
    (* if caller and callee have return != void
     * transfer the __retres of callee in unused var _hole *)
    if not(Kernel_function.returns_void kf_callee) &&
       not(Kernel_function.returns_void kf_caller)
    then (
      let av_retres =
        Mman_asyn.AVar(vinfo_retres (Kernel_function.get_return_type kf_callee))
      in
      let av_hole =
        Mman_asyn.AVar(vinfo_hole (Kernel_function.get_return_type kf_callee))
      in
      match lv with
      | None -> (* forget callee only *)
      	  let _ = Mman_options.Self.debug ~level:2 "DF:forget callee only...@."
      	  in 
          MV.Model.forget_list vret [av_retres]
      | Some(_) -> (* assign callee __retres to unused _hole *)
      	  let _ = Mman_options.Self.debug ~level:2 "DF:assign callee __retres to unused _hole...@."
      	  in 
          let vret2hole =
            MV.Model.do_assign vret [av_hole] [Mman_asyn.ALval(av_retres)] 
                                    [av_hole] [Mman_asyn.ALval(av_retres)]
          in
          MV.Model.forget_list vret2hole [av_retres]
    )
    else
      vret
  in
  (*let _ = Mman_options.Self.debug ~level:2 "DF:state_callee_ret_update:%a@."
      MV.Model.pretty state_callee_ret_update in*)
  
  (*  - extend callee to common env *)
  let state_callee_extended =
    MV.Model.change_env state_callee_ret_update
      eid_callee eid_common
  in
  (* meet the two extended values *)
  let state_composed =
    MV.Model.intersects state_caller_extended state_callee_extended
  in

  let state_proj_caller =
    MV.Model.change_env state_composed
      eid_common eid_caller
  in
  match lv with
  | None -> state_proj_caller
  | Some(lv) ->
      (* if lv != None then *)
      (* - assign lv to _hole, then unconstrain _hole *)
      let vi_hole = vinfo_hole (Kernel_function.get_return_type kf_callee) in
      let exp_hole = Cil.evar ~loc:Cil.builtinLoc vi_hole in
      let llv, lexp = Mman_asyn.transform_assign lv exp_hole in
      let aval1 = (* transfer_assign s lv exp_hole state_proj_caller *)
        MV.Model.do_assign state_proj_caller llv lexp llv lexp
      in
      MV.Model.forget_list aval1 [Mman_asyn.AVar(vi_hole)]
        

(**
 * Forward reference of
 * Compute the end state of the call in s with actual stack 
 * of kf_callee in the initial state init_callee
*)
let compute_fun =
  ref (fun _ _ _ _ ->
      Mman_options.Self.fatal "compute_fun not properly initialized!")

(**
 * Ignored functions for the dataflow computation
*)
let isIgnoredFunction kf =
  not(Kernel_function.is_definition kf) (* skip declarations *)
  && true (* TODO *)


(**
 * Analyser pass
*)
module Compute(AnPar: ComputeArg) = struct
  (* The JOIN_SEMILATTICE *)
  include ValapJoinSemiLattice      
  (* The forward abstract transfer *)
  (* See pattern in plugins/from/from_compute.ml *)
  let rec transfer_stmt_main (s: Cil_types.stmt) (aval: t) =
    let _ = (Mman_options.Self.debug ~level:2
             "==============\nDF:transfer_stmt_main: sid:%a \n@."
             Cil_datatype.Stmt.pretty_sid s
              (*Printer.pp_stmt s*)
               (*MV.Model.pretty aval*) )
    in 
    match s.skind with
    | Instr(Set (lv, exp, _)) ->
        let _ = Mman_options.Self.feedback "DF:transfer_assign..."  
        in 
        map_on_all_succs s (transfer_assign s lv exp aval)
          
    | Instr(Call(lv, fe, argl,_)) ->                 
        let kf =
          (match Kernel_function.get_called fe with
           | Some(f) -> f
           | None ->
               let _ = Mman_options.Self.not_yet_implemented "Dynamic call" in
               raise (Mman_asyn.Not_dealt "Dynamic call")
          )
        in
        let _ = Mman_options.Self.feedback "DF:function called: %a'" 
            Kernel_function.pretty kf;
        in 
        let newaval =
          (* special case sbrk *)   	
          if (String.compare (Kernel_function.get_name kf) "sbrk") == 0
          then 
            (transfer_sbrk s lv argl aval)
          else if (isIgnoredFunction kf) 
          then
            aval
          else
            (transfer_call s kf lv argl aval) 
        in
        map_on_all_succs s newaval
          
    | Instr(i) ->
        let _ = Mman_options.Self.feedback "s.skind: Instr3 @."
          in 
        let _ = Mman_options.Self.not_yet_implemented "Instruction" in
        begin
          Mman_options.Self.debug ~dkey:dflw_dkey ~level:2 "Instr %a@."
            Printer.pp_instr i;
          map_on_all_succs s aval
        end
        
    | Switch (_,_,_,_) ->
        let _ = Mman_options.Self.feedback "s.skind: Switch @."
          in 
        Dataflows.transfer_switch_from_guard transfer_guard s aval
          
    | If (_,_,_,_) ->
        let _ = Mman_options.Self.feedback "s.skind: If @."
          in 
        Dataflows.transfer_if_from_guard transfer_guard s aval
          
    | Return (_exp,_) ->
        (* if it exists, _exp is __retres after Cil passage *)
        let _ = (Mman_options.Self.debug ~dkey:dflw_dkey ~level:2
                   "transfer_return: %a@."
                   MV.Model.pretty aval
                ) in
        (* register the return state *)
        let _ = set_return_state s aval in
        [] 
        
    | Block _ | UnspecifiedSequence _  
    | Continue _ | Break _ | Goto _
    | Loop _ 
      -> map_on_all_succs s aval
           
    | Throw _ | TryCatch _ 
    | TryExcept (_, _, _, _)
    | TryFinally (_, _, _) ->
        let _ = Mman_options.Self.not_yet_implemented "Statement %a"
            Printer.pp_stmt s
        in
        map_on_all_succs s aval


  and map_on_all_succs (s: Cil_types.stmt) (newaval: t) =
    List.map (fun x -> (x,newaval)) s.succs
      
  and transfer_assign (s: Cil_types.stmt) lv exp (aval: t) =
    (* Translate lv and exp in Apron *)
    let _ = (Mman_options.Self.debug ~dkey:dflw_dkey
               "DF:transfer_assign: %a@.on %a@."
               Printer.pp_stmt s
               MV.Model.pretty aval)
    in
    let llv, lexp = Mman_asyn.transform_assign lv exp in
    MV.Model.do_assign aval llv lexp llv lexp 

  and transfer_sbrk (s: Cil_types.stmt) lv argl (aval: t) 
    : t
    =
    (*let _ = (Mman_options.Self.debug ~dkey:dflw_dkey
               "transfer_sbrk: %a@.on %a@."
               Printer.pp_stmt s
               MV.Model.pretty aval)
    in*)
    let _ = (Mman_options.Self.feedback "DF:transfer_sbrk: %a @."
               Printer.pp_stmt s
               (*MV.Model.pretty aval*) )
    in  
    (* transform in assignment *)
    let llv, lexp = Mman_asyn.transform_sbrk lv argl in
    let llv_dw, lexp_dw,_ = Mman_asyn.transform_sbrk_dw lv argl in 
    MV.Model.do_assign aval llv lexp llv_dw lexp_dw 
      
  and transfer_call (s: Cil_types.stmt) kf_callee lv argl (aval: t) 
    : t
    =    
    let _ = Mman_options.Self.feedback "DF:transfer_call...@." in
    (* assert (kf.fname != sbrk) && not(isIgnoredFunction kf) *)
    
    let _, kf_caller = Kernel_function.find_from_sid s.sid in    
    
    (* compute the call state for kf to see if not yet computed *)
    let init_callee = compute_fun_init s kf_caller kf_callee argl aval in
    
    (* compute the return state of the callee *)
    let ret_callee = !compute_fun AnPar.stack s kf_callee init_callee in
        
    let _ = Mman_options.Self.debug ~level:2 "DF:ret_callee: %a @." 
            MV.Model.pretty ret_callee
    in
    (* recombine the call state with the end state *)
    let _ = Mman_options.Self.debug ~level:1 "DF:ret_call: %a(...) \n DF:%a@."
        Kernel_function.pretty kf_callee 
        MV.Model.pretty aval
    in
    
    let end_caller = compute_fun_ret s lv aval ret_callee kf_callee in
    let _ = Mman_options.Self.debug ~level:1 "DF:ret_call state: %a@."
        MV.Model.pretty end_caller in
    end_caller
      
  
  and transfer_guard (s: Cil_types.stmt) (e: Cil_types.exp) (aval: t) =
    (* Return (aval meet e, aval meet not e) *)
    let ae,not_ae = Mman_asyn.transform_guard e in
    let _sei = Mman_env.penv_of_stmt s in
    (MV.Model.meet_exp (* sei *) aval [ae]), 
    (MV.Model.meet_exp (* sei *) aval [not_ae]) 
    
  and transfer_stmt_pre s aval =
    (* Filter out unreachable statements *)
    if (* Db.Value.is_reachable_stmt s *) true then
      transfer_stmt_main s aval
    else []
         
  and transfer_stmt s aval =
    let _ = (Mman_options.Self.debug ~dkey:dflw_dkey
               "transfer_stmt: sid:%a@.on %a@."
               Cil_datatype.Stmt.pretty_sid s
               MV.Model.pretty aval)
    in
    let ds = transfer_stmt_pre s aval in
    (* Filter the outgoing abstract values using doEdge *)
    List.map (fun (succ, d) -> (succ, doEdge s succ d)) ds
      
  and doEdge s succ d =
    let eid_succ = Mman_env.penv_of_stmt succ in
    if (* Db.Value.is_reachable_stmt succ *) true
    then begin
      let eid_s = Mman_env.penv_of_stmt s in
      if (eid_s != eid_succ) &&
         (Kernel_function.find_from_sid s.sid) ==
         (Kernel_function.find_from_sid succ.sid)
      then
        MV.Model.change_env d eid_s eid_succ 
      else
        MV.Model.copy d
    end
    else
      MV.Model.bottom_of eid_succ        
  let init = [Kernel_function.find_first_stmt AnPar.kf, AnPar.init]
             
end (* Compute *)


(** 
 * Global with states computed 
*)
let res_states = Cil_datatype.Stmt.Hashtbl.create 7
    
(**
 * Returns the state at the end of execution of kf_callee with
 * the initial state init_callee
*)
let compute_fun_aux stack s kf_callee init_callee
  : MV.Model.t =  
  let _ = Mman_options.Self.debug ~level:1
              "DF:compute_fun_aux....@." in 
  (* start of callee is at its first statement *)
  let stmt_init = (Kernel_function.find_first_stmt kf_callee) in
  let eid_init = (Mman_env.penv_of_stmt stmt_init) in
  (* assert eid_init == Mman_value.Model.env init_state *)
  (* end state is at return statement *)
  let stmt_ret = (Kernel_function.find_return kf_callee) in
  let eid_ret = (Mman_env.penv_of_stmt stmt_ret) in
  let bot_ret = (MV.Model.bottom_of eid_ret) in
  (* deal with recursive call *)
  if List.mem_assq kf_callee stack then
    begin (* Recursive call, see statement *)
      let sid = List.assq kf_callee stack in
      if (s.sid == sid) then
        (* loop with the same statement, return bottom end *)
        bot_ret
      else
        (* return the end state, partially computed *)
        let state_ret =
          try
            Return_state.find stmt_ret
          with Not_found ->
            bot_ret
        in
        state_ret
    end
  else
    begin
      let old_state = try Call_state.find stmt_init
        with Not_found -> MV.Model.bottom_of eid_init in
      let new_state, isin =
        MV.Model.join_and_is_included init_callee old_state in
      if isin then (* return stored state for return *)
        (try
           Return_state.find stmt_ret
         with Not_found ->
           bot_ret)
      else begin
        (* launch another fixpoint computation from the already given state *)
        let module Init =
        struct
          let kf = kf_callee
          let stack = (kf_callee, s.sid)::stack
          let init = new_state (* TODO: special treatment for loops? *)
        end
        in 
        let fenv = Dataflows.function_env kf_callee in
        let module Fenv = (val fenv: Dataflows.FUNCTION_ENV) in
        let module Init2 = Compute(Init) in
        let module Dataflow = Dataflows.Simple_forward(Fenv)(Init2) in
        let _ =
          begin
            Mman_options.Self.debug ~dkey:dflw_dkey
              "Computation on stack %a:@."
              (fun fmt sl ->
                 (List.iter (fun (kf,si) ->
                      (Format.fprintf fmt "%s <-(sid:%d)- "
                         (Kernel_function.get_name kf) si)) sl
                 )
              ) Init.stack;
            Dataflow.iter_on_result
              (fun stmt v ->
                 begin
                   Mman_options.Self.debug ~dkey:dflw_dkey
                     "    (sid_%a): %a@."
                     Cil_datatype.Stmt.pretty_sid stmt
                     Init2.pretty v;
                   Cil_datatype.Stmt.Hashtbl.replace res_states stmt v;
                   if (Cil_datatype.Stmt.equal stmt stmt_init) then
                     set_call_state stmt v
                   ;
                   if (Cil_datatype.Stmt.equal stmt stmt_ret) then
                     set_return_state stmt v
                 end
              )
          end
        in
        let state_ret =
          try
            Return_state.find stmt_ret
          with Not_found ->
            (Mman_options.Self.debug ~dkey:dflw_dkey
               "Return value not found@.";
             bot_ret)
        in
        let _ = Mman_options.Self.debug ~level:1
              "compute_fun_aux done \n%a....@." 
              MV.Model.pretty state_ret
          in 
        state_ret
      end
    end
    
let () = compute_fun := compute_fun_aux
    
(**
 * Print the computed states
*)
let print_results fout =
  (** TODO: simplify this ! *)
  let printer s v =
    if fout then
      Format.fprintf !Mman_options.channel_res
        "(sid:%a): %a@."
        Cil_datatype.Stmt.pretty_sid s
        MV.Model.pretty v
    else
      Mman_options.Self.result "(sid:%a): %a@."
        Cil_datatype.Stmt.pretty_sid s
        MV.Model.pretty v
  in
  begin
    Cil_datatype.Stmt.Hashtbl.iter
      printer 
      res_states
  end
  
let print_results_fun fout kf =
  let stmt_kf =
    try (Kernel_function.get_definition kf).sbody.bstmts
    with Kernel_function.No_Definition
       | Not_found -> []
  in
  (** TODO: simplify this ! *)
  let printer s v =
    if fout then
      Format.fprintf !(Mman_options.channel_res)
        "(sid:%a): %a@."
        Cil_datatype.Stmt.pretty_sid s
        MV.Model.pretty v
    else
       Mman_options.Self.result "(sid:%a): %a@."
         Cil_datatype.Stmt.pretty_sid s
         MV.Model.pretty v
  in
  begin 
    (* Mman_options.Self.result "(by statement)"; *)
    Cil_datatype.Stmt.Hashtbl.iter
      (fun s v -> if List.mem s stmt_kf then
          printer s v
        else
         ())
    res_states
  end
  

(**
 * Check that the computation is finished: TODO
*)
let is_computed () = false
  
(**
 * Get the function name from the logic annotations 
 * or the default name, otherwise raise an error
*)
let get_mfun (mk:Mman_dabs.method_kind) : Cil_types.kernel_function =
  (* Find name of method given by the logic annotations *)
  let fname = Mman_dabs.get_method_name mk in
  let kf = Globals.Functions.find_by_name fname in
  kf
    
(**
 * Start analysis from 'main' to collect shape infos: TODO
*)
let rec compute_from_entry_point () =
  let kf, _ = Globals.entry_point () in
  begin
    (* compute initial state *)
    let init_state = get_init_state kf
    in
    let _ = Mman_options.Self.feedback "@.DF:compute_from_entry_point, initial_state: %a@."                 
                MV.Model.pretty init_state
    in 
    compute kf init_state
    ;
    print_results false  
  end 
  
and get_init_state kf = 
  let init_stmt = Kernel_function.find_first_stmt kf in
  let eid_stmt = Mman_env.penv_of_stmt init_stmt in
  let _ = Mman_options.Self.feedback "DF:Computing initial state@." in
  let _ = Mman_options.Self.feedback "DF:Initial_state_stmt (sid:%a,%a, peid:%d) @."
          Cil_datatype.Stmt.pretty_sid init_stmt  
          Printer.pp_stmt init_stmt 
          eid_stmt
  in 
  let _ = init_globals () in  
  let init_state = try
      Call_state.find init_stmt
    with Not_found -> (
        (* compute initials from inital globals and restricted locals *)
        let _ = Mman_options.Self.feedback "DF:Computing global values@." in
        let glb_state = MV.init_globals eid_stmt !init_glv !init_gexp !init_gcnd in         
        let glb_loc_state = set_fun_locals kf eid_stmt glb_state in
        glb_loc_state
      )
  in
  (*let _ = Mman_options.Self.debug ~level:2
      "DF:Initial state (sid:%a): %a@."
      Cil_datatype.Stmt.pretty_sid init_stmt
      MV.Model.pretty init_state
  in*)
  init_state
    
(**
 * Start analysis from 'minit' to compute final specs: TODO
*)
and compute_for_minit () =
  try
    let fname = Mman_dabs.get_method_name Mman_dabs.DA_MINIT in
    let kf = Globals.Functions.find_by_name fname in
    begin
      Mman_options.Self.feedback "Analysing method minit='%a'" 
        Kernel_function.pretty kf;
      (* TODO: do domething with the initial state *)
      
      let init_state =  get_init_state kf in 
      Mman_options.Self.feedback "init state:%a" 
           MV.Model.pretty (init_state) ;
      compute kf (init_state);
      print_results_fun false kf
    end
  with Not_found ->
    Mman_options.Self.feedback "Interface method 'minit' not found@."
      
(**
 * Start analysis from 'malloc' to compute final specs: TODO
*)
and compute_for_malloc () =
  try
    let fname = Mman_dabs.get_method_name Mman_dabs.DA_MALLOC in
    let kf = Globals.Functions.find_by_name fname in
    begin
      Mman_options.Self.feedback "Analysing method malloc='%a'" 
        Kernel_function.pretty kf;
      (* TODO: do domething with the initial state *)
      compute kf (get_init_state kf);
      print_results_fun false kf
    end
  with _ ->
    Mman_options.Self.feedback "Interface method 'malloc' not found"
      
(**
 * Start analysis from 'mfree' to compute final specs: TODO
*)
and compute_for_mfree () =
  try
    let fname = Mman_dabs.get_method_name Mman_dabs.DA_MFREE in
    let kf = Globals.Functions.find_by_name fname in
    begin
      Mman_options.Self.feedback "Analysing method mfree='%a'" 
        Kernel_function.pretty kf;
      (* TODO: do domething with the initial state *)
      compute kf (get_init_state kf);
      print_results_fun false kf
    end
  with _ ->
    Mman_options.Self.feedback "Interface method 'mfree' not found"
      
(**
 * Start general analysis
*)
and compute kf init =
  let fenv = Dataflows.function_env kf in
  let module Fenv = (val fenv: Dataflows.FUNCTION_ENV) in
  let module Arg = struct
    let kf = kf
    let stack = []
    let init = init
  end in
  let module Arg2 = Compute(Arg) in
  let module Dataflow = Dataflows.Simple_forward(Fenv)(Arg2) in
  Dataflow.iter_on_result
    (fun stmt v ->
       Cil_datatype.Stmt.Hashtbl.replace res_states stmt v
    )
    

