[mman] DW:env2apron: 
        seid_-1 -> [0]
       []
[kernel] Parsing FRAMAC_SHARE/libc/__fc_builtin_for_normalization.i (no preprocessing)
[kernel] Converting CABS->CIL
[kernel] Parsing ../mem copy/bench/kr/krmain.c (with preprocessing)
[kernel] Converting CABS->CIL
[mman] Welcome to the Mman plugin
[mman] check and initialise data abstraction
[mman] Reading data abstraction
[mman] 'cty' definition: ok
[mman] feature 'cal': undefined
[mman] feature 'cbe': undefined
[mman] feature 'cen': undefined
[mman] feature 'fbe': undefined
[mman] feature 'fen': undefined
[mman] feature 'csz': ok
[mman] feature 'cn': undefined
[mman] feature 'cp': undefined
[mman] feature 'cdt': undefined
[mman] feature 'fn': ok
[mman] feature 'fp': undefined
[mman] feature 'cf': undefined
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
[mman] Add feature 'csz' for 'id:9'
[mman] Add feature 'fn' for 'id:9'
[mman] Add 'base' of type Header (aka union header)
[mman] Add 'freep' of type Header * (aka union header *)
[mman] Initialize penv for 'krAlloc'
[mman] Add 'nbytes' of type unsigned int (aka unsigned int)
[mman] Add 'p' of type Header * (aka union header *)
[mman] Add 'prevp' of type Header * (aka union header *)
[mman] Add 'nunits' of type unsigned int (aka unsigned int)
[mman] Initialize penv for 'krFree'
[mman] Add 'ap' of type void * (aka void *)
[mman] Add 'bp' of type Header * (aka union header *)
[mman] Add 'p' of type Header * (aka union header *)
[mman] Initialize penv for 'main'
[mman] Add 'man' of type void * (aka void *)
[mman] Add 'p1' of type void * (aka void *)
[mman] Add 'p2' of type void * (aka void *)
[mman] Initialize penv for 'morecore'
[mman] Add 'nu' of type unsigned int (aka unsigned int)
[mman] Add 'cp' of type char * (aka char *)
[mman] Add 'up' of type Header * (aka union header *)
[mman] stmt2penvs:
       (1) s_1 (@line 30) -> e_1
       (1) s_2 (@line 31) -> e_1
       (1) s_3 (@line 31) -> e_1
       (1) s_4 (@line 32) -> e_1
       (1) s_5 (@line 32) -> e_1
       (1) s_6 (@line 32) -> e_1
       (1) s_7 (@line 32) -> e_1
       (1) s_8 (@line 33) -> e_1
       (1) s_10 (@line 35) -> e_1
       (1) s_11 (@line 35) -> e_1
       (1) s_12 (@line 36) -> e_1
       (1) s_14 (@line 36) -> e_1
       (1) s_16 (@line 37) -> e_1
       (1) s_17 (@line 38) -> e_1
       (1) s_18 (@line 40) -> e_1
       (1) s_19 (@line 41) -> e_1
       (1) s_20 (@line 42) -> e_1
       (1) s_21 (@line 44) -> e_1
       (1) s_23 (@line 46) -> e_1
       (1) s_26 (@line 48) -> e_1
       (1) s_27 (@line 49) -> e_1
       (1) s_28 (@line 49) -> e_1
       (1) s_29 (@line 50) -> e_1
       (1) s_32 (@line 35) -> e_1
       (1) s_33 (@line 35) -> e_1
       (1) s_36 (@line 65) -> e_4
       (1) s_37 (@line 66) -> e_4
       (1) s_39 (@line 68) -> e_4
       (1) s_41 (@line 70) -> e_4
       (1) s_42 (@line 71) -> e_4
       (1) s_44 (@line 73) -> e_4
       (1) s_45 (@line 74) -> e_4
       (1) s_46 (@line 75) -> e_4
       (1) s_48 (@line 77) -> e_4
       (1) s_50 (@line 85) -> e_2
       (1) s_51 (@line 86) -> e_2
       (1) s_52 (@line 86) -> e_2
       (1) s_54 (@line 86) -> e_2
       (1) s_56 (@line 86) -> e_2
       (1) s_57 (@line 86) -> e_2
       (1) s_59 (@line 87) -> e_2
       (1) s_61 (@line 87) -> e_2
       (1) s_62 (@line 88) -> e_2
       (1) s_64 (@line 87) -> e_2
       (1) s_65 (@line 88) -> e_2
       (1) s_68 (@line 86) -> e_2
       (1) s_70 (@line 90) -> e_2
       (1) s_71 (@line 91) -> e_2
       (1) s_72 (@line 92) -> e_2
       (1) s_73 (@line 94) -> e_2
       (1) s_75 (@line 96) -> e_2
       (1) s_76 (@line 97) -> e_2
       (1) s_77 (@line 98) -> e_2
       (1) s_78 (@line 100) -> e_2
       (1) s_79 (@line 101) -> e_2
       (1) s_82 (@line 8) -> e_3
       (1) s_83 (@line 9) -> e_3
       (1) s_84 (@line 10) -> e_3
       (1) s_85 (@line 11) -> e_3
       (1) s_86 (@line 12) -> e_3
       (1) s_87 (@line 13) -> e_3
       (1) s_88 (@line 14) -> e_3
       (1) s_89 (@line 15) -> e_3
       (1) s_91 (@line 46) -> e_1
       (1) s_92 (@line 50) -> e_1
       (1) s_93 (@line 35) -> e_1
       (1) s_95 (@line 71) -> e_4
       (1) s_96 (@line 77) -> e_4
       (1) s_98 (@line 102) -> e_2
       (1) s_100 (@line 15) -> e_3
[mman] envs:
       penv_0 = (1,[14] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)base;
       	(10)__l9;	(11)c9__csz;	(12)c9__fn;	(13)freep;} )
       penv_1 = (2,[18] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)base;
       	(10)__l9;	(11)c9__csz;	(12)c9__fn;	(13)freep;	(14)f1084_nbytes;
       	(15)p;	(16)prevp;	(17)nunits;} )
       penv_2 = (2,[17] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)base;
       	(10)__l9;	(11)c9__csz;	(12)c9__fn;	(13)freep;	(14)f1095_ap;
       	(15)bp;	(16)p;} )
       penv_3 = (2,[17] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)base;
       	(10)__l9;	(11)c9__csz;	(12)c9__fn;	(13)freep;	(14)man;
       	(15)p1;	(16)p2;} )
       penv_4 = (2,[17] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)base;
       	(10)__l9;	(11)c9__csz;	(12)c9__fn;	(13)freep;	(14)f1090_nu;
       	(15)cp;	(16)up;} )
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] DF:Computing initial state
[mman] DF:Initial_state_stmt (sid:82, peid:3)
[mman] running init globals
[mman] build cast(4) of (4)
[mman] Global inits: freep := 0
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
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)base;
       	(10)__l9;	(11)c9__csz;	(12)c9__fn;	(13)freep;	(14)man;
       	(15)p1;	(16)p2;} @)
[mman] MV:old value  ({peid:3}
       Top)
[mman] DW:env2apron: 
        seid_0 -> [1]
       [0> __fc_fds:int 1> __fc_time:int 2> __fc_time_tm:int 3> __hli:int 4> __hole:int 5> __hst:int 6> __l5:int 7> __l9:int 8> __null:int 9> __p_fc_time_tm:int 10> base:int 11> c9__csz:int 12> c9__fn:int 13> freep:int 14> man:int 15> p1:int 16> p2:int]
[mman] new eshape value:
         ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (9)base |-> (9)base,
        
       heap list 
       [(9)base::]
       atoms:
       chd((9)base)[csz:(11)c9__csz,fn:(12)c9__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}top 
       ) 
        -------------------shape initialized-------------------
[mman] DW:do_assign, env:senv_0 = @(0,penv_3,
       [0] 
        senv:
       {} 
        penv_3:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)base;
       	(10)__l9;	(11)c9__csz;	(12)c9__fn;	(13)freep;	(14)man;
       	(15)p1;	(16)p2;} @)
[mman] DW:to_var, Mman_asyn.AVar(freep)
[mman] DW: after do_assign 
       ({seid:0, peid:3}[|freep=0|])
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (9)base |-> (9)base,
        
       heap list 
       [(9)base::]
       atoms:
       chd((9)base)[csz:(11)c9__csz,fn:(12)c9__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|freep=0|] 
       )
[mman] MV:assign_done,vinit.eid:3 
       , new value: 
        ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (9)base |-> (9)base,
        
       heap list 
       [(9)base::]
       atoms:
       chd((9)base)[csz:(11)c9__csz,fn:(12)c9__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|freep=0|] 
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
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_14>=0
[mman] MSH:guard_one return constraint:sv_15>=0
[mman] MSH:guard_one return constraint:sv_16>=0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] DF:initial_state eid:3 
        {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (9)base |-> (9)base,
        
       heap list 
       [(9)base::]
       atoms:
       chd((9)base)[csz:(11)c9__csz,fn:(12)c9__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|freep=0|] 
        ===================
[mman] -----------
        DF:transfer_stmt_main: sid:82 
        on{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (9)base |-> (9)base,
        
       heap list 
       [(9)base::]
       atoms:
       chd((9)base)[csz:(11)c9__csz,fn:(12)c9__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|freep=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: man
[mman] transform_assign: man:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: man:=0
[mman] MV:after evaL:sv_14
[mman] MV:after evaE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:0
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:83 
        on{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (9)base |-> (9)base,
        (14)man |-> (0)__null,
        
       heap list 
       [(9)base::]
       atoms:
       chd((9)base)[csz:(11)c9__csz,fn:(12)c9__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|freep=0|]
[mman] DF:function called: krAlloc'
[mman] DF:do_call: krAlloc(...)
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] DF:caller_penv:3, callee_penv:1, state.eid:3...
[mman] MV:forget vars ...
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_14/18 -> pvar_17
[mman] old pvar_15/18 -> pvar_18
[mman] old pvar_16/18 -> pvar_19
[mman] old pvar_17/18 -> pvar_20
[mman] unified penv_5 = (1,[21] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)base;
       	(10)__l9;	(11)c9__csz;	(12)c9__fn;	(13)freep;	(14)man;
       	(15)p1;	(16)p2;	(17)f1084_nbytes;	(18)p;	(19)prevp;
       	(20)nunits;} )
[mman] DF:Unified env eid_common:5
[mman] MV:change_env...
[mman] MV:peid:3, old peid:3, new peid(eid common): 5
[mman] MEV:senv_change_pe, old senv:(seid:0,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:1,peid:5)
[mman] MSH:change_env, project out...
[mman] DW:env2apron: 
        seid_1 -> [2]
       [0> __fc_fds:int 1> __fc_time:int 2> __fc_time_tm:int 3> __hli:int 4> __hole:int 5> __hst:int 6> __l5:int 7> __l9:int 8> __null:int 9> __p_fc_time_tm:int 10> base:int 11> c9__csz:int 12> c9__fn:int 13> f1084_nbytes:int 14> freep:int 15> man:int 16> nunits:int 17> p:int 18> p1:int 19> p2:int 20> prevp:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] build cast(4) of (4)
[mman] MV:after evaL, None
[mman] MV:after evaE:20
[mman] DW:do_assign, env:senv_1 = @(0,penv_5,
       [0] 
        senv:
       {} 
        penv_5:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)base;
       	(10)__l9;	(11)c9__csz;	(12)c9__fn;	(13)freep;	(14)man;
       	(15)p1;	(16)p2;	(17)f1084_nbytes;	(18)p;	(19)prevp;
       	(20)nunits;} @)
[mman] DW:to_var, Mman_asyn.AVar(nbytes)
[mman] DW: after do_assign 
       ({seid:1, peid:5}[|freep=0; f1084_nbytes-20=0|])
[mman] MV:finish do_assign.
[mman] MV:change_env...
[mman] MV:peid:5, old peid:5, new peid(eid common): 1
[mman] MEV:senv_change_pe, old senv:(seid:1,peid:5)
[mman] MEV:senv_change_pe, new senv:(seid:2,peid:1)
[mman] MSH:change_env, project out...
[mman] DW:env2apron: 
        seid_2 -> [3]
       [0> __fc_fds:int 1> __fc_time:int 2> __fc_time_tm:int 3> __hli:int 4> __hole:int 5> __hst:int 6> __l5:int 7> __l9:int 8> __null:int 9> __p_fc_time_tm:int 10> base:int 11> c9__csz:int 12> c9__fn:int 13> f1084_nbytes:int 14> freep:int 15> nunits:int 16> p:int 17> prevp:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:p>=0
[mman] MV:constraints:prevp>=0
[mman] MV:constraints:nunits>=0
[mman] MV:constraints:4294967295>=nunits
[mman] MV:constraints:__retres>=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:2, esh.seid:2....
[mman] MSH:do guard, seid:2...
[mman] MSH:guard_one return constraint:sv_15>=0
[mman] MSH:guard_one return constraint:sv_16>=0
[mman] MSH:guard_one return constraint:sv_17>=0
[mman] MSH:guard_one return constraint:4294967295>=sv_17
[mman] MSH:guard_one return constraint:sv_1>=0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:1: {peid:1}
       eshape: stack:(seid:2,peid:1) 
        (9)base |-> (9)base,
        
       heap list 
       [(9)base::]
       atoms:
       chd((9)base)[csz:(11)c9__csz,fn:(12)c9__fn,]  * 
       emp,
        
        dwords:{seid:2, peid:1}[|freep=0; f1084_nbytes-20=0|]
[mman] DF:compute_fun_aux....
[mman] -----------
        DF:transfer_stmt_main: sid:1 
        on{peid:1}
       eshape: stack:(seid:2,peid:1) 
        (9)base |-> (9)base,
        
       heap list 
       [(9)base::]
       atoms:
       chd((9)base)[csz:(11)c9__csz,fn:(12)c9__fn,]  * 
       emp,
        
        dwords:{seid:2, peid:1}[|freep=0; f1084_nbytes-20=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: nunits
[mman] transform_assign: nunits:=__hole[((nbytes + sizeof(Header)) - (unsigned int)1) / sizeof(Header) + (unsigned int)1]
[mman] lval2exp: found nbytes
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: nunits:=((((nbytes + 8) - 1) / 8) + 1)
[mman] MV:after evaL, None
[mman] MV:after evaE:((((sv_14 + 8) - 1) / 8) + 1)
[mman] DW:do_assign, env:senv_2 = @(0,penv_1,
       [0] 
        senv:
       {} 
        penv_1:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)base;
       	(10)__l9;	(11)c9__csz;	(12)c9__fn;	(13)freep;	(14)f1084_nbytes;
       	(15)p;	(16)prevp;	(17)nunits;} @)
[mman] DW:to_var, Mman_asyn.AVar(nunits)
[mman] MDW:to_texpr, seid:2
[mman] Mman_asyn.ASVar(sid:14), sei:2
[mman] DW: after do_assign 
       ({seid:2, peid:1}[|nunits-4=0; freep=0;
                                               f1084_nbytes-20=0|])
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:2 
        on{peid:1}
       eshape: stack:(seid:2,peid:1) 
        (9)base |-> (9)base,
        
       heap list 
       [(9)base::]
       atoms:
       chd((9)base)[csz:(11)c9__csz,fn:(12)c9__fn,]  * 
       emp,
        
        dwords:{seid:2, peid:1}[|nunits-4=0; freep=0; f1084_nbytes-20=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: prevp
[mman] transform_assign: prevp:=__hole[freep]
[mman] lval2exp: found freep
[mman] to: prevp:=freep
[mman] MV:after evaL:sv_16
[mman] MV:after evaE:sv_13
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH: svR: (13)freep
[mman] MV:eshape mutate done, esh.seid:2
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:3 
        on{peid:1}
       eshape: stack:(seid:2,peid:1) 
        (9)base |-> (9)base,
        
       heap list 
       [(9)base::]
       atoms:
       chd((9)base)[csz:(11)c9__csz,fn:(12)c9__fn,]  * 
       emp,
        
        dwords:{seid:2, peid:1}[|nunits-4=0; freep=0; f1084_nbytes-20=0|]
[mman] s.skind: If
[mman] transform guard prevp == (Header *)0
[mman] transform guard: (int) prevp (op) (Header *)0
[mman] lval2exp: found prevp
[mman] build cast(4) of (4)
[mman] to: (true)prevp=0
       	  (false)prevp!=0
[mman] MV:meet_exp....
[mman] MV:constraints:prevp!=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:2, esh.seid:2....
[mman] MSH:do guard, seid:2...
[mman] MSH:guard_one return constraint:sv_16>0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:prevp=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:2, esh.seid:2....
[mman] MSH:do guard, seid:2...
[mman] MSH:guard_one return constraint:sv_16=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] -----------
        DF:transfer_stmt_main: sid:10 
        on{peid:1}
       eshape: stack:(seid:2,peid:1) 
        (9)base |-> (9)base,
        
       heap list 
       [(9)base::]
       atoms:
       chd((9)base)[csz:(11)c9__csz,fn:(12)c9__fn,]  * 
       emp,
        
        dwords:{seid:2, peid:1}[|nunits-4=0; freep=0; f1084_nbytes-20=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: p
[mman] transform_assign: p:=__hole[prevp->s.ptr]
[mman] failure: Unexpected exception.
                Please submit bug report (Ref. "Mman_asyn.Not_dealt("Lval expression")").
[kernel] Current source was: /Users/yuezhuang/Documents/projects/mem copy/bench/kr/krmalloc.c:35
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
