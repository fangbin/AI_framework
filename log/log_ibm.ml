[mman] DW:env2apron: 
        seid_-1 -> [0]
       []
[kernel] Parsing FRAMAC_SHARE/libc/__fc_builtin_for_normalization.i (no preprocessing)
[kernel] Converting CABS->CIL
[kernel] Parsing ../mem copy/bench/ibm/ibmmain.c (with preprocessing)
[kernel] Converting CABS->CIL
[mman] Welcome to the Mman plugin
[mman] check and initialise data abstraction
[mman] Reading data abstraction
[mman] 'cty' definition: ok
[mman] feature 'cal': undefined
[mman] feature 'cbe': ok
[mman] feature 'cen': ok
[mman] feature 'fbe': undefined
[mman] feature 'fen': undefined
[mman] feature 'csz': ok
[mman] feature 'cn': undefined
[mman] feature 'cp': undefined
[mman] feature 'cdt': ok
[mman] feature 'fn': undefined
[mman] feature 'fp': undefined
[mman] feature 'cf': ok
[mman] feature 'cpf': undefined
[mman] method 'minit': ok
[mman] method 'malloc': ok
[mman] method 'minit': ok
[mman] method 'mrealoc': undefined
[mman] --------------------------------------------
[mman] Analysed code in full.c
[mman] Initialize global environment
[mman] Add '__fc_time' of type unsigned int volatile (aka unsigned int volatile)
[mman] Add '__fc_time_tm' of type struct tm (aka struct tm)
[mman] Add '__p_fc_time_tm' of type struct tm * (aka struct tm *)
[mman] Add '__fc_fds' of type int [1024] (aka int [1024])
[mman] Add 'has_initialized' of type int (aka int)
[mman] Add 'managed_memory_start' of type void * (aka void *)
[mman] Add 'last_valid_address' of type void * (aka void *)
[mman] Initialize penv for 'ibmAlloc'
[mman] Add 'numbytes' of type long (aka long)
[mman] Add 'current_location' of type void * (aka void *)
[mman] Add 'current_location_mcb' of type struct mem_control_block * (aka struct mem_control_block *)
[mman] Add 'memory_location' of type void * (aka void *)
[mman] Initialize penv for 'ibmFree'
[mman] Add 'firstbyte' of type void * (aka void *)
[mman] Add 'mcb' of type struct mem_control_block * (aka struct mem_control_block *)
[mman] Initialize penv for 'ibmInit'
[mman] Initialize penv for 'main'
[mman] Add 'man' of type void * (aka void *)
[mman] Add 'p1' of type void * (aka void *)
[mman] Add 'p2' of type void * (aka void *)
[mman] Add 'p3' of type void * (aka void *)
[mman] Add 'p4' of type void * (aka void *)
[mman] stmt2penvs:
       (1) s_1 (@line 12) -> e_0
       (1) s_2 (@line 18) -> e_0
       (1) s_3 (@line 21) -> e_0
       (1) s_6 (@line 37) -> e_2
       (1) s_7 (@line 39) -> e_2
       (1) s_10 (@line 62) -> e_1
       (1) s_11 (@line 63) -> e_1
       (1) s_13 (@line 70) -> e_1
       (1) s_14 (@line 75) -> e_1
       (1) s_15 (@line 78) -> e_1
       (1) s_16 (@line 81) -> e_1
       (1) s_18 (@line 81) -> e_1
       (1) s_19 (@line 81) -> e_1
       (1) s_20 (@line 89) -> e_1
       (1) s_21 (@line 89) -> e_1
       (1) s_23 (@line 91) -> e_1
       (1) s_25 (@line 92) -> e_1
       (1) s_26 (@line 98) -> e_1
       (1) s_27 (@line 101) -> e_1
       (1) s_28 (@line 104) -> e_1
       (1) s_31 (@line 111) -> e_1
       (1) s_32 (@line 119) -> e_1
       (1) s_33 (@line 121) -> e_1
       (1) s_34 (@line 126) -> e_1
       (1) s_35 (@line 131) -> e_1
       (1) s_36 (@line 134) -> e_1
       (1) s_37 (@line 135) -> e_1
       (1) s_38 (@line 136) -> e_1
       (1) s_40 (@line 144) -> e_1
       (1) s_42 (@line 147) -> e_1
       (1) s_44 (@line 8) -> e_3
       (1) s_45 (@line 8) -> e_3
       (1) s_46 (@line 9) -> e_3
       (1) s_47 (@line 10) -> e_3
       (1) s_48 (@line 11) -> e_3
       (1) s_49 (@line 12) -> e_3
       (1) s_50 (@line 13) -> e_3
       (1) s_51 (@line 14) -> e_3
       (1) s_52 (@line 15) -> e_3
       (1) s_54 (@line 22) -> e_0
       (1) s_56 (@line 41) -> e_2
       (1) s_59 (@line 15) -> e_3
[mman] envs:
       penv_0 = (2,[12] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;} )
       penv_1 = (2,[16] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;	(12)f1084_numbytes;	(13)current_location;	(14)current_location_mcb;
       	(15)memory_location;} )
       penv_2 = (2,[14] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;	(12)f1080_firstbyte;	(13)mcb;} )
       penv_3 = (2,[17] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;	(12)man;	(13)p1;	(14)p2;
       	(15)p3;	(16)p4;} )
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] DF:Computing initial state
[mman] DF:Initial_state_stmt (sid:44, peid:3)
[mman] running init globals
[mman] Global inits:  := 
       meet sv_2>=0(sv_2 - sv_3)=0
[mman] initialization done
       --------------
[mman] DF:Computing global values
[mman] MV:init_globals, peid:3
[mman] -------------------initialize shape-------------------
[mman] MEV:initialise symbolic environment, seid:0
[mman] MV:new senv: senv_0 = @(0,penv_3,
       [0] 
        senv:
       {} 
        penv_3:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;	(12)man;	(13)p1;	(14)p2;
       	(15)p3;	(16)p4;} @)
[mman] MV:old value  ({peid:3}
       Top)
[mman] DW:env2apron: 
        seid_0 -> [1]
       [0> __fc_fds:int 1> __fc_time:int 2> __fc_time_tm:int 3> __hli:int 4> __hole:int 5> __hst:int 6> __l5:int 7> __null:int 8> __p_fc_time_tm:int 9> has_initialized:int 10> last_valid_address:int 11> man:int 12> managed_memory_start:int 13> p1:int 14> p2:int 15> p3:int 16> p4:int]
[mman] new eshape value:
         ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:0, peid:3}top 
       ) 
        -------------------shape initialized-------------------
[mman] MV:assign_done,vinit.eid:3 
       , new value: 
        ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:0, peid:3}top 
       ) 
        ==========================================
[mman] MV:meet_exp....
[mman] MV:constraints:sv_2>=0
[mman] MV:constraints:(sv_2 - sv_3)=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_2>=0
[mman] MSH:guard_one return constraint:(sv_2 - sv_3)=0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:man>=0
[mman] MV:constraints:p1>=0
[mman] MV:constraints:p2>=0
[mman] MV:constraints:p3>=0
[mman] MV:constraints:p4>=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_12>=0
[mman] MSH:guard_one return constraint:sv_13>=0
[mman] MSH:guard_one return constraint:sv_14>=0
[mman] MSH:guard_one return constraint:sv_15>=0
[mman] MSH:guard_one return constraint:sv_16>=0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] DF:initial_state eid:3 
        {peid:3}
       eshape: stack:(seid:0,peid:3) 
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:0, peid:3}top 
        ===================
[mman] -----------
        DF:transfer_stmt_main: sid:44 
        on{peid:3}
       eshape: stack:(seid:0,peid:3) 
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:0, peid:3}top
[mman] DF:function called: ibmInit'
[mman] DF:do_call: ibmInit(...)
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] DF:caller_penv:3, callee_penv:0, state.eid:3...
[mman] MV:forget vars ...
[mman] MEV:Unify penvs 3, 0
[mman] unified penv_3 = (3,[17] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;	(12)man;	(13)p1;	(14)p2;
       	(15)p3;	(16)p4;} )
[mman] DF:Unified env eid_common:3
[mman] MV:change_env...
[mman] MV:peid:3, old peid:3, new peid(eid common): 3
[mman] MV:change_env...
[mman] MV:peid:3, old peid:3, new peid(eid common): 0
[mman] MEV:senv_change_pe, old senv:(seid:0,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:1,peid:0)
[mman] MSH:change_env, project out...
[mman] DW:env2apron: 
        seid_1 -> [2]
       [0> __fc_fds:int 1> __fc_time:int 2> __fc_time_tm:int 3> __hli:int 4> __hole:int 5> __hst:int 6> __l5:int 7> __null:int 8> __p_fc_time_tm:int 9> has_initialized:int 10> last_valid_address:int 11> managed_memory_start:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:1, esh.seid:1....
[mman] MSH:do guard, seid:1...
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:1: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:1, peid:0}top
[mman] DF:compute_fun_aux....
[mman] -----------
        DF:transfer_stmt_main: sid:1 
        on{peid:0}
       eshape: stack:(seid:1,peid:0) 
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:1, peid:0}top
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:1 */
                         last_valid_address = sbrk(0);
[mman] ASY:transform_lval2var: last_valid_address
[mman] ASY:transform_sbrk: last_valid_address:=__hole[sbrk(0)] (SHAPE)
[mman] to: last_valid_address:=sbrk(0) (SHAPE)
[mman] ASY:transform_lval2var: last_valid_address
[mman] ASY:transform_sbrk: last_valid_address:=__hole[sbrk(0)] (DW)
[mman] to: last_valid_address:=__hli (DW)
[mman] to: __hli:=(__hli + 0) (DW)
[mman] MV:after evaL:sv_11
[mman] MV:after evaE:sbrk(0)
[mman] MV:do_assign_one, llv and llv_dw
[mman] DW:do_assign, env:senv_1 = @(0,penv_0,
       [0] 
        senv:
       {} 
        penv_0:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;} @)
[mman] DW:to_var, Mman_asyn.AVar(last_valid_address)
[mman] DW:to_var, Mman_asyn.AVar(__hli)
[mman] MDW:to_texpr, seid:1
[mman] DW:to_var, Mman_asyn.AVar(__hli)
[mman] MDW:to_texpr, seid:1
[mman] DW:to_var, Mman_asyn.AVar(__hli)
[mman] DW: after do_assign 
       ({seid:1, peid:0}[|-__hli+last_valid_address=0|])
[mman] MV:do_assign: sv_11:=sbrk(0) (SHAPE)
[mman] MV:eshape mutate
[mman] MV:eshape mutate done, old esh.seid:1
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:2 
        on{peid:0}
       eshape: stack:(seid:1,peid:0) 
        (11)last_valid_address |-> (2)__hli,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:1, peid:0}[|-__hli+last_valid_address=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: managed_memory_start
[mman] transform_assign: managed_memory_start:=__hole[last_valid_address]
[mman] lval2exp: found last_valid_address
[mman] to: managed_memory_start:=last_valid_address
[mman] MV:after evaL:sv_10
[mman] MV:after evaE:sv_2
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH: svR: (2)__hli
[mman] := Hli
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:1
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:3 
        on{peid:0}
       eshape: stack:(seid:1,peid:0) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:1, peid:0}[|-__hli+last_valid_address=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: has_initialized
[mman] transform_assign: has_initialized:=__hole[1]
[mman] to: has_initialized:=1
[mman] MV:after evaL, None
[mman] MV:after evaE:1
[mman] DW:do_assign, env:senv_1 = @(0,penv_0,
       [0] 
        senv:
       {} 
        penv_0:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;} @)
[mman] DW:to_var, Mman_asyn.AVar(has_initialized)
[mman] DW: after do_assign 
       ({seid:1, peid:0}[|-__hli+last_valid_address=0;
                                               has_initialized-1=0|])
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:54 
        on{peid:0}
       eshape: stack:(seid:1,peid:0) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:1, peid:0}[|-__hli+last_valid_address=0; has_initialized-1=0|]
[mman] compute_fun_aux done....
[mman] DF:ret_call: ibmInit(...)
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] MEV:Unify penvs 3, 0
[mman] unified penv_3 = (4,[17] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;	(12)man;	(13)p1;	(14)p2;
       	(15)p3;	(16)p4;} )
[mman] DF:eid_common 3
[mman] MV:forget vars ...
[mman] MV:change_env...
[mman] MV:peid:3, old peid:3, new peid(eid common): 3
[mman] MV:change_env...
[mman] MV:peid:0, old peid:0, new peid(eid common): 3
[mman] MEV:senv_change_pe, old senv:(seid:1,peid:0)
[mman] MEV:senv_change_pe, new senv:(seid:0,peid:3)
[mman] MSH:change_env, project out...
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] MV:change_env...
[mman] MV:peid:3, old peid:3, new peid(eid common): 3
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:0, peid:3}[|-__hli+last_valid_address=0; has_initialized-1=0|]
[mman] -----------
        DF:transfer_stmt_main: sid:45 
        on{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:0, peid:3}[|-__hli+last_valid_address=0; has_initialized-1=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: man
[mman] transform_assign: man:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: man:=0
[mman] MV:after evaL:sv_12
[mman] MV:after evaE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:0
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:46 
        on{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        (12)man |-> (0)__null,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:0, peid:3}[|-__hli+last_valid_address=0; has_initialized-1=0|]
[mman] DF:function called: ibmAlloc'
[mman] DF:do_call: ibmAlloc(...)
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] DF:caller_penv:3, callee_penv:1, state.eid:3...
[mman] MV:forget vars ...
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_12/16 -> pvar_17
[mman] old pvar_13/16 -> pvar_18
[mman] old pvar_14/16 -> pvar_19
[mman] old pvar_15/16 -> pvar_20
[mman] unified penv_4 = (1,[21] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;	(12)man;	(13)p1;	(14)p2;
       	(15)p3;	(16)p4;	(17)f1084_numbytes;	(18)current_location;	(19)current_location_mcb;
       	(20)memory_location;} )
[mman] DF:Unified env eid_common:4
[mman] MV:change_env...
[mman] MV:peid:3, old peid:3, new peid(eid common): 4
[mman] MEV:senv_change_pe, old senv:(seid:0,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:2,peid:4)
[mman] MSH:change_env, project out...
[mman] DW:env2apron: 
        seid_2 -> [3]
       [0> __fc_fds:int 1> __fc_time:int 2> __fc_time_tm:int 3> __hli:int 4> __hole:int 5> __hst:int 6> __l5:int 7> __null:int 8> __p_fc_time_tm:int 9> current_location:int 10> current_location_mcb:int 11> f1084_numbytes:int 12> has_initialized:int 13> last_valid_address:int 14> man:int 15> managed_memory_start:int 16> memory_location:int 17> p1:int 18> p2:int 19> p3:int 20> p4:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] build cast(4) of (4)
[mman] MV:after evaL, None
[mman] MV:after evaE:20
[mman] DW:do_assign, env:senv_2 = @(0,penv_4,
       [0] 
        senv:
       {} 
        penv_4:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;	(12)man;	(13)p1;	(14)p2;
       	(15)p3;	(16)p4;	(17)f1084_numbytes;	(18)current_location;	(19)current_location_mcb;
       	(20)memory_location;} @)
[mman] DW:to_var, Mman_asyn.AVar(numbytes)
[mman] DW: after do_assign 
       ({seid:2, peid:4}[|-__hli+last_valid_address=0;
                                               has_initialized-1=0;
                                               f1084_numbytes-20=0|])
[mman] MV:finish do_assign.
[mman] MV:change_env...
[mman] MV:peid:4, old peid:4, new peid(eid common): 1
[mman] MEV:senv_change_pe, old senv:(seid:2,peid:4)
[mman] MEV:senv_change_pe, new senv:(seid:3,peid:1)
[mman] MSH:change_env, project out...
[mman] DW:env2apron: 
        seid_3 -> [4]
       [0> __fc_fds:int 1> __fc_time:int 2> __fc_time_tm:int 3> __hli:int 4> __hole:int 5> __hst:int 6> __l5:int 7> __null:int 8> __p_fc_time_tm:int 9> current_location:int 10> current_location_mcb:int 11> f1084_numbytes:int 12> has_initialized:int 13> last_valid_address:int 14> managed_memory_start:int 15> memory_location:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:current_location>=0
[mman] MV:constraints:current_location_mcb>=0
[mman] MV:constraints:memory_location>=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_13>=0
[mman] MSH:guard_one return constraint:sv_14>=0
[mman] MSH:guard_one return constraint:sv_15>=0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:10: {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-20=0|]
[mman] DF:compute_fun_aux....
[mman] -----------
        DF:transfer_stmt_main: sid:10 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-20=0|]
[mman] s.skind: If
[mman] transform guard ! has_initialized
[mman] transform guard: (int) has_initialized (op) 0
[mman] lval2exp: found has_initialized
[mman] to: (true)has_initialized=0
       	  (false)has_initialized!=0
[mman] MV:meet_exp....
[mman] MV:constraints:has_initialized!=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_9>0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:has_initialized=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_9=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] -----------
        DF:transfer_stmt_main: sid:13 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-20=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: numbytes
[mman] transform_assign: numbytes:=__hole[(long)((unsigned long)numbytes + (unsigned long)sizeof(struct mem_control_block))]
[mman] lval2exp: found numbytes
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: numbytes:=(numbytes + 8)
[mman] MV:after evaL, None
[mman] MV:after evaE:(sv_12 + 8)
[mman] DW:do_assign, env:senv_3 = @(0,penv_1,
       [0] 
        senv:
       {} 
        penv_1:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)has_initialized;
       	(10)managed_memory_start;	(11)last_valid_address;	(12)f1084_numbytes;	(13)current_location;	(14)current_location_mcb;
       	(15)memory_location;} @)
[mman] DW:to_var, Mman_asyn.AVar(numbytes)
[mman] MDW:to_texpr, seid:3
[mman] Mman_asyn.ASVar(sid:12), sei:3
[mman] DW: after do_assign 
       ({seid:3, peid:1}[|-__hli+last_valid_address=0;
                                               has_initialized-1=0;
                                               f1084_numbytes-28=0|])
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:14 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-28=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: memory_location
[mman] transform_assign: memory_location:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: memory_location:=0
[mman] MV:after evaL:sv_15
[mman] MV:after evaE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:3
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:15 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        (15)memory_location |-> (0)__null,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-28=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: current_location
[mman] transform_assign: current_location:=__hole[managed_memory_start]
[mman] lval2exp: found managed_memory_start
[mman] to: current_location:=managed_memory_start
[mman] MV:after evaL:sv_13
[mman] MV:after evaE:sv_2
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH: svR: (2)__hli
[mman] := Hli
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:3
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:16 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        (13)current_location |-> (2)__hli,
        (15)memory_location |-> (0)__null,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-28=0|]
[mman] -----------
        DF:transfer_stmt_main: sid:18 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        (13)current_location |-> (2)__hli,
        (15)memory_location |-> (0)__null,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-28=0|]
[mman] s.skind: If
[mman] transform guard current_location != last_valid_address
[mman] transform guard: (int) current_location (op) last_valid_address
[mman] lval2exp: found current_location
[mman] lval2exp: found last_valid_address
[mman] to: (true)current_location!=last_valid_address
       	  (false)current_location=last_valid_address
[mman] MV:meet_exp....
[mman] MV:constraints:current_location=last_valid_address
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_2=sv_2
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:current_location!=last_valid_address
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:false
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] -----------
        DF:transfer_stmt_main: sid:19 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        (13)current_location |-> (2)__hli,
        (15)memory_location |-> (0)__null,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-28=0|]
[mman] -----------
        DF:transfer_stmt_main: sid:32 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        (13)current_location |-> (2)__hli,
        (15)memory_location |-> (0)__null,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-28=0|]
[mman] s.skind: If
[mman] transform guard ! memory_location
[mman] transform guard: (int) memory_location (op) 0
[mman] lval2exp: found memory_location
[mman] to: (true)memory_location=0
       	  (false)memory_location!=0
[mman] MV:meet_exp....
[mman] MV:constraints:memory_location!=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:false
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:memory_location=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:0=0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] -----------
        DF:transfer_stmt_main: sid:33 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        (13)current_location |-> (2)__hli,
        (15)memory_location |-> (0)__null,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-28=0|]
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:33 */
                         sbrk((int)numbytes);
[mman] lval2exp: found numbytes
[mman] build cast(4) of (4)
[mman] to: __hli:=(__hli + numbytes) (DW)
[mman] -----------
        DF:transfer_stmt_main: sid:34 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        (13)current_location |-> (2)__hli,
        (15)memory_location |-> (0)__null,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-28=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: memory_location
[mman] transform_assign: memory_location:=__hole[last_valid_address]
[mman] lval2exp: found last_valid_address
[mman] to: memory_location:=last_valid_address
[mman] MV:after evaL:sv_15
[mman] MV:after evaE:sv_2
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH: svR: (2)__hli
[mman] := Hli
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:3
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:35 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (2)__hli,
        (13)current_location |-> (2)__hli,
        (15)memory_location |-> (2)__hli,
        
       heap list 
       []
       atoms:
       emp,
        
        dwords:{seid:3, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-28=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: last_valid_address
[mman] transform_assign: last_valid_address:=__hole[last_valid_address + numbytes]
[mman] lval2exp: found last_valid_address
[mman] lval2exp: found numbytes
[mman] to: last_valid_address:=(last_valid_address + (numbytes * 1))
[mman] MV:after evaL:sv_11
[mman] MV:after evaE:(sv_2 + (sv_12 * 1))
[mman] MV:eshape mutate
[mman] MSH:mutate hli offset:create a new location...
[mman] new svar added vi.id30
[mman] MV:eshape mutate done, esh.seid:3
[mman] DW:change_env...
[mman] DW:env2apron: 
        seid_4 -> [5]
       [0> __fc_fds:int 1> __fc_time:int 2> __fc_time_tm:int 3> __hli:int 4> __hole:int 5> __hst:int 6> __l5:int 7> __null:int 8> __p_fc_time_tm:int 9> __s30:int 10> current_location:int 11> current_location_mcb:int 12> f1084_numbytes:int 13> has_initialized:int 14> last_valid_address:int 15> managed_memory_start:int 16> memory_location:int]
[mman] DW: emvironment changed
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:36 
        on{peid:1}
       eshape: stack:(seid:4,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (30)__s30,
        (13)current_location |-> (2)__hli,
        (15)memory_location |-> (2)__hli,
        
       heap list 
       [(2)__hli::]
       atoms:
       blk((2)__hli,(30)__s30) * 
       emp,
        
        dwords:{seid:4, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-28=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: current_location_mcb
[mman] transform_assign: current_location_mcb:=__hole[(struct mem_control_block *)memory_location]
[mman] lval2exp: found memory_location
[mman] build cast(4) of (4)
[mman] to: current_location_mcb:=memory_location
[mman] MV:after evaL:sv_14
[mman] MV:after evaE:sv_2
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH: svR: (2)__hli
[mman] := Hli
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:4
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:37 
        on{peid:1}
       eshape: stack:(seid:4,peid:1) 
        (10)managed_memory_start |-> (2)__hli,
        (11)last_valid_address |-> (30)__s30,
        (13)current_location |-> (2)__hli,
        (14)current_location_mcb |-> (2)__hli,
        (15)memory_location |-> (2)__hli,
        
       heap list 
       [(2)__hli::]
       atoms:
       blk((2)__hli,(30)__s30) * 
       emp,
        
        dwords:{seid:4, peid:1}[|-__hli+last_valid_address=0; has_initialized-1=0;
                         f1084_numbytes-28=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: current_location_mcb->is_available
[mman] failure: Unexpected exception.
                Please submit bug report (Ref. "Log.FeatureRequest("mman", "logic term in abstraction")").
[kernel] Current source was: /Users/yuezhuang/Documents/projects/mem copy/bench/ibm/ibmmalloc.c:135
         The full backtrace is:
         Raised at file "src/kernel_services/plugin_entry_points/log.ml", line 583, characters 30-31
         Called from file "src/kernel_services/plugin_entry_points/log.ml", line 577, characters 9-16
         Re-raised at file "src/kernel_services/plugin_entry_points/log.ml", line 580, characters 15-16
         Called from file "queue.ml", line 134, characters 6-20
         Called from file "src/kernel_internals/runtime/boot.ml", line 37, characters 4-20
         Called from file "src/kernel_services/cmdline_parameters/cmdline.ml", line 787, characters 2-9
         Called from file "src/kernel_services/cmdline_parameters/cmdline.ml", line 817, characters 18-64
         Called from file "src/kernel_services/cmdline_parameters/cmdline.ml", line 228, characters 4-8
         
         Plug-in mman aborted: internal error.
         Please report as 'crash' at http://bts.frama-c.com/.
         Your Frama-C version is Aluminium-20160502.
         Note that a version and a backtrace alone often do not contain enough
         information to understand the bug. Guidelines for reporting bugs are at:
         http://bts.frama-c.com/dokuwiki/doku.php?id=mantis:frama-c:bug_reporting_guidelines
