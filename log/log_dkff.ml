[mman] DW:env2apron: 
        seid_-1 -> [0]
       []
[kernel] Parsing FRAMAC_SHARE/libc/__fc_builtin_for_normalization.i (no preprocessing)
[kernel] Converting CABS->CIL
[kernel] Parsing ../mem copy/bench/dkff/dkffmain.c (with preprocessing)
[kernel] Converting CABS->CIL
[mman] Welcome to the Mman plugin
[mman] check and initialise data abstraction
[mman] Reading data abstraction
[mman] 'cty' definition: ok
[mman] feature 'cal': undefined
[mman] feature 'cbe': undefined
[mman] feature 'cen': undefined
[mman] feature 'fbe': ok
[mman] feature 'fen': ok
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
[mman] Add '__fc_random_counter' of type int (aka int)
[mman] Add '__fc_rand_max' of type unsigned long const (aka unsigned long const)
[mman] Add '__fc_time' of type unsigned int volatile (aka unsigned int volatile)
[mman] Add '__fc_time_tm' of type struct tm (aka struct tm)
[mman] Add '__p_fc_time_tm' of type struct tm * (aka struct tm *)
[mman] Add '__fc_fds' of type int [1024] (aka int [1024])
[mman] Add '__fc_fopen' of type FILE [512] (aka struct __fc_FILE [512])
[mman] Add '__p_fc_fopen' of type FILE * (aka struct __fc_FILE *)
[mman] Add 'is_initialized' of type int (aka int)
[mman] Add feature 'csz' for 'id:14'
[mman] Add feature 'fn' for 'id:14'
[mman] Add 'AVAIL' of type Header (aka struct header)
[mman] Add 'hend' of type Header * (aka struct header *)
[mman] Add 'hbase' of type Header * (aka struct header *)
[mman] Initialize penv for 'dkAlloc'
[mman] Add 'n' of type size_t (aka unsigned int)
[mman] Add 'na' of type size_t (aka unsigned int)
[mman] Add 'p' of type Header * (aka struct header *)
[mman] Add 'pre' of type Header * (aka struct header *)
[mman] Add 'q' of type Header * (aka struct header *)
[mman] Initialize penv for 'dkFree'
[mman] Add 'x' of type void * (aka void *)
[mman] Add 'po' of type Header * (aka struct header *)
[mman] Add 'q' of type Header * (aka struct header *)
[mman] Add 'p' of type Header * (aka struct header *)
[mman] Initialize penv for 'dkInit'
[mman] Initialize penv for 'main'
[mman] Add 'man' of type void * (aka void *)
[mman] Add 'p1' of type void * (aka void *)
[mman] Add 'p2' of type void * (aka void *)
[mman] stmt2penvs:
       (1) s_2 (@line 90) -> e_0
       (1) s_5 (@line 93) -> e_0
       (1) s_6 (@line 96) -> e_0
       (1) s_7 (@line 98) -> e_0
       (1) s_8 (@line 99) -> e_0
       (1) s_9 (@line 100) -> e_0
       (1) s_10 (@line 101) -> e_0
       (1) s_11 (@line 102) -> e_0
       (1) s_15 (@line 112) -> e_1
       (1) s_16 (@line 113) -> e_1
       (1) s_19 (@line 120) -> e_1
       (1) s_20 (@line 121) -> e_1
       (1) s_22 (@line 124) -> e_1
       (1) s_24 (@line 125) -> e_1
       (1) s_25 (@line 127) -> e_1
       (1) s_27 (@line 127) -> e_1
       (1) s_28 (@line 127) -> e_1
       (1) s_29 (@line 128) -> e_1
       (1) s_31 (@line 128) -> e_1
       (1) s_33 (@line 129) -> e_1
       (1) s_34 (@line 130) -> e_1
       (1) s_35 (@line 131) -> e_1
       (1) s_37 (@line 132) -> e_1
       (1) s_41 (@line 134) -> e_1
       (1) s_42 (@line 135) -> e_1
       (1) s_43 (@line 136) -> e_1
       (1) s_44 (@line 137) -> e_1
       (1) s_46 (@line 138) -> e_1
       (1) s_48 (@line 140) -> e_1
       (1) s_49 (@line 141) -> e_1
       (1) s_50 (@line 143) -> e_1
       (1) s_53 (@line 153) -> e_2
       (1) s_55 (@line 154) -> e_2
       (1) s_57 (@line 155) -> e_2
       (1) s_59 (@line 158) -> e_2
       (1) s_62 (@line 159) -> e_2
       (1) s_65 (@line 163) -> e_2
       (1) s_67 (@line 163) -> e_2
       (1) s_69 (@line 163) -> e_2
       (1) s_70 (@line 163) -> e_2
       (1) s_71 (@line 163) -> e_2
       (1) s_72 (@line 164) -> e_2
       (1) s_73 (@line 164) -> e_2
       (1) s_74 (@line 165) -> e_2
       (1) s_76 (@line 167) -> e_2
       (1) s_77 (@line 168) -> e_2
       (1) s_78 (@line 169) -> e_2
       (1) s_80 (@line 170) -> e_2
       (1) s_81 (@line 171) -> e_2
       (1) s_84 (@line 174) -> e_2
       (1) s_85 (@line 176) -> e_2
       (1) s_86 (@line 178) -> e_2
       (1) s_87 (@line 180) -> e_2
       (1) s_90 (@line 9) -> e_3
       (1) s_91 (@line 9) -> e_3
       (1) s_92 (@line 10) -> e_3
       (1) s_93 (@line 11) -> e_3
       (1) s_94 (@line 12) -> e_3
       (1) s_95 (@line 13) -> e_3
       (1) s_96 (@line 14) -> e_3
       (1) s_97 (@line 15) -> e_3
       (1) s_98 (@line 16) -> e_3
       (1) s_100 (@line 91) -> e_0
       (1) s_101 (@line 103) -> e_0
       (1) s_103 (@line 132) -> e_1
       (1) s_104 (@line 138) -> e_1
       (1) s_105 (@line 143) -> e_1
       (1) s_107 (@line 160) -> e_2
       (1) s_108 (@line 160) -> e_2
       (1) s_109 (@line 183) -> e_2
       (1) s_111 (@line 16) -> e_3
[mman] envs:
       penv_0 = (2,[20] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       } )
       penv_1 = (2,[25] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)f2095_n;	(21)na;	(22)p;	(23)pre;	(24)q;
       } )
       penv_2 = (2,[24] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)f2102_x;	(21)po;	(22)q;	(23)p;} )
       penv_3 = (2,[23] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)man;	(21)p1;	(22)p2;} )
[mman] --------------------------------------------
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] DF:Computing initial state
[mman] DF:Initial_state_stmt (sid:90,/* sid:90 */
                                     dkInit();, peid:3)
[mman] DF:running init globals
[mman] Feature cty, term ""@:
[mman] Feature cal, term ""@:
[mman] Feature cbe, term ""@:
[mman] Feature cen, term ""@:
[mman] Feature fbe, term &AVAIL@:
[mman] Feature fen, term (Header *)hend@:
[mman] Feature csz, term x->size*sizeof(Header)@:
[mman] Feature cn, term ""@:
[mman] Feature cp, term ""@:
[mman] Feature cdt, term ""@:
[mman] Feature fn, term x->nlink@:
[mman] Feature fp, term ""@:
[mman] Feature cf, term ""@:
[mman] Feature cpf, term ""@:
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] Global inits: is_initializedcsz(AVAIL)fn(AVAIL)hendhbase := 00000
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
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)man;	(21)p1;	(22)p2;} @)
[mman] MV:old value  ({peid:3}
       Top)
[mman] DW:env2apron: 
        seid_0 -> [1]
       [0> AVAIL:int 1> __fc_fds:int 2> __fc_fopen:int 3> __fc_rand_max:int 4> __fc_random_counter:int 5> __fc_time:int 6> __fc_time_tm:int 7> __hli:int 8> __hole:int 9> __hst:int 10> __l14:int 11> __l7:int 12> __null:int 13> __p_fc_fopen:int 14> __p_fc_time_tm:int 15> c14__csz:int 16> c14__fn:int 17> hbase:int 18> hend:int 19> is_initialized:int 20> man:int 21> p1:int 22> p2:int]
[mman] new eshape value:
         ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}top 
       ) 
        -------------------shape initialized-------------------
[mman] DW:do_assign, env:senv_0 = @(0,penv_3,
       [0] 
        senv:
       {} 
        penv_3:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)man;	(21)p1;	(22)p2;} @)
[mman] DW:to_var, Mman_asyn.AVar(is_initialized)
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(AVAIL))
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(AVAIL))
[mman] DW:to_var, Mman_asyn.AVar(hend)
[mman] DW:to_var, Mman_asyn.AVar(hbase)
[mman] DW: after do_assign 
       ({seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0;
                                               c14__fn=0; c14__csz=0|])
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       )
[mman] MV:assign_done,vinit.eid:3 
       , new value: 
        ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       ) 
        ==========================================
[mman] MV:meet_exp, value:({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:sv_2>=0
[mman] MV:constraints:(sv_2 - sv_3)=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_2>=0
[mman] MSH:guard_one return constraint:(sv_2 - sv_3)=0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       )
[mman] DF:set_fun_locals....
[mman] MV:meet_exp, value:({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:man>=0
[mman] MV:constraints:p1>=0
[mman] MV:constraints:p2>=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_20>=0
[mman] MSH:guard_one return constraint:sv_21>=0
[mman] MSH:guard_one return constraint:sv_22>=0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       )
[mman] DF:initial_state eid:3 
        {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
        ===================
[mman] -----------
        DF:transfer_stmt_main: sid:90 
        on{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] DF:function called: dkInit'
[mman] DF:do_call, kf_callee: dkInit(...), stmt:/* sid:90 */
                                                dkInit();
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] DF:caller_penv:3, callee_penv:0, state.eid:3...
[mman] MV:forget vars ...
[mman] MEV:Unify penvs 3, 0
[mman] unified penv_3 = (3,[23] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)man;	(21)p1;	(22)p2;} )
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
       [0> AVAIL:int 1> __fc_fds:int 2> __fc_fopen:int 3> __fc_rand_max:int 4> __fc_random_counter:int 5> __fc_time:int 6> __fc_time_tm:int 7> __hli:int 8> __hole:int 9> __hst:int 10> __l14:int 11> __l7:int 12> __null:int 13> __p_fc_fopen:int 14> __p_fc_time_tm:int 15> c14__csz:int 16> c14__fn:int 17> hbase:int 18> hend:int 19> is_initialized:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp, value:({peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:1, esh.seid:1....
[mman] MSH:do guard, seid:1...
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       )
[mman] DF:compute_fun_init done. 
        State at first stmt sid:2: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] DF:compute_fun_aux....
[mman] -----------
        DF:transfer_stmt_main: sid:2 
        on{peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] s.skind: If
[mman] transform guard is_initialized != 0
[mman] transform guard: (int) is_initialized (op) 0
[mman] lval2exp: found is_initialized
[mman] to: (true)is_initialized!=0
       	  (false)is_initialized=0
[mman] MV:meet_exp, value:({peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:is_initialized=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:1, esh.seid:1....
[mman] MSH:do guard, seid:1...
[mman] MSH:guard_one return constraint:sv_13=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:0}
       Bot)
[mman] MV:meet_exp, value:({peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:is_initialized!=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:1, esh.seid:1....
[mman] MSH:do guard, seid:1...
[mman] MSH:guard_one return constraint:sv_13>0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       )
[mman] -----------
        DF:transfer_stmt_main: sid:100 
        on{peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] -----------
        DF:transfer_stmt_main: sid:101 
        on{peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] compute_fun_aux done 
       {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|] 
       ....
[mman] DF:init_callee: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] DF:ret_callee: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] DF:ret_call: dkInit(...) 
        DF:{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] MEV:Unify penvs 3, 0
[mman] unified penv_3 = (4,[23] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)man;	(21)p1;	(22)p2;} )
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
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] -----------
        DF:transfer_stmt_main: sid:91 
        on{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: man
[mman] transform_assign: man:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: man:=0
[mman] MV:after evaL:sv_20
[mman] MV:after evaE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:0
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:92 
        on{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)man |-> (0)__null,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] DF:function called: dkAlloc'
[mman] DF:do_call, kf_callee: dkAlloc(...), stmt:/* sid:92 */
                                                 p1 = dkAlloc((unsigned int)20);
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] DF:caller_penv:3, callee_penv:1, state.eid:3...
[mman] MV:forget vars ...
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_20/25 -> pvar_23
[mman] old pvar_21/25 -> pvar_24
[mman] old pvar_22/25 -> pvar_25
[mman] old pvar_23/25 -> pvar_26
[mman] old pvar_24/25 -> pvar_27
[mman] unified penv_4 = (1,[28] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)man;	(21)p1;	(22)p2;	(23)f2095_n;	(24)na;
       	(25)p;	(26)pre;	(27)q;} )
[mman] DF:Unified env eid_common:4
[mman] MV:change_env...
[mman] MV:peid:3, old peid:3, new peid(eid common): 4
[mman] MEV:senv_change_pe, old senv:(seid:0,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:2,peid:4)
[mman] MSH:change_env, project out...
[mman] DW:env2apron: 
        seid_2 -> [3]
       [0> AVAIL:int 1> __fc_fds:int 2> __fc_fopen:int 3> __fc_rand_max:int 4> __fc_random_counter:int 5> __fc_time:int 6> __fc_time_tm:int 7> __hli:int 8> __hole:int 9> __hst:int 10> __l14:int 11> __l7:int 12> __null:int 13> __p_fc_fopen:int 14> __p_fc_time_tm:int 15> c14__csz:int 16> c14__fn:int 17> f2095_n:int 18> hbase:int 19> hend:int 20> is_initialized:int 21> man:int 22> na:int 23> p:int 24> p1:int 25> p2:int 26> pre:int 27> q:int]
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
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)man;	(21)p1;	(22)p2;	(23)f2095_n;	(24)na;
       	(25)p;	(26)pre;	(27)q;} @)
[mman] DW:to_var, Mman_asyn.AVar(n)
[mman] DW: after do_assign 
       ({seid:2, peid:4}[|is_initialized=0; hend=0; hbase=0;
                                               f2095_n-20=0; c14__fn=0; c14__csz=0|])
[mman] MV:finish do_assign.
[mman] MV:change_env...
[mman] MV:peid:4, old peid:4, new peid(eid common): 1
[mman] MEV:senv_change_pe, old senv:(seid:2,peid:4)
[mman] MEV:senv_change_pe, new senv:(seid:3,peid:1)
[mman] MSH:change_env, project out...
[mman] DW:env2apron: 
        seid_3 -> [4]
       [0> AVAIL:int 1> __fc_fds:int 2> __fc_fopen:int 3> __fc_rand_max:int 4> __fc_random_counter:int 5> __fc_time:int 6> __fc_time_tm:int 7> __hli:int 8> __hole:int 9> __hst:int 10> __l14:int 11> __l7:int 12> __null:int 13> __p_fc_fopen:int 14> __p_fc_time_tm:int 15> c14__csz:int 16> c14__fn:int 17> f2095_n:int 18> hbase:int 19> hend:int 20> is_initialized:int 21> na:int 22> p:int 23> pre:int 24> q:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp, value:({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hend=0; hbase=0; f2095_n-20=0; c14__fn=0;
                         c14__csz=0|] 
       )....
[mman] MV:constraints:na>=0
[mman] MV:constraints:4294967295>=na
[mman] MV:constraints:p>=0
[mman] MV:constraints:pre>=0
[mman] MV:constraints:q>=0
[mman] MV:constraints:__retres>=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_21>=0
[mman] MSH:guard_one return constraint:4294967295>=sv_21
[mman] MSH:guard_one return constraint:sv_22>=0
[mman] MSH:guard_one return constraint:sv_23>=0
[mman] MSH:guard_one return constraint:sv_24>=0
[mman] MSH:guard_one return constraint:sv_1>=0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hend=0; hbase=0; f2095_n-20=0; c14__fn=0;
                         c14__csz=0|] 
       )
[mman] DF:compute_fun_init done. 
        State at first stmt sid:15: {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hend=0; hbase=0; f2095_n-20=0; c14__fn=0;
                         c14__csz=0|]
[mman] DF:compute_fun_aux....
[mman] -----------
        DF:transfer_stmt_main: sid:15 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hend=0; hbase=0; f2095_n-20=0; c14__fn=0;
                         c14__csz=0|]
[mman] s.skind: If
[mman] transform guard is_initialized == 0
[mman] transform guard: (int) is_initialized (op) 0
[mman] lval2exp: found is_initialized
[mman] to: (true)is_initialized=0
       	  (false)is_initialized!=0
[mman] MV:meet_exp, value:({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hend=0; hbase=0; f2095_n-20=0; c14__fn=0;
                         c14__csz=0|] 
       )....
[mman] MV:constraints:is_initialized!=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_13>0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hend=0; hbase=0; f2095_n-20=0; c14__fn=0;
                         c14__csz=0|] 
       )
[mman] MV:meet_exp, value:({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hend=0; hbase=0; f2095_n-20=0; c14__fn=0;
                         c14__csz=0|] 
       )....
[mman] MV:constraints:is_initialized=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_13=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:1}
       Bot)
[mman] -----------
        DF:transfer_stmt_main: sid:19 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hend=0; hbase=0; f2095_n-20=0; c14__fn=0;
                         c14__csz=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: na
[mman] transform_assign: na:=__hole[((n + sizeof(Header)) - (size_t)1) / sizeof(Header) + (size_t)1]
[mman] lval2exp: found n
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: na:=((((n + 8) - 1) / 8) + 1)
[mman] MV:after evaL, None
[mman] MV:after evaE:((((sv_20 + 8) - 1) / 8) + 1)
[mman] DW:do_assign, env:senv_3 = @(0,penv_1,
       [0] 
        senv:
       {} 
        penv_1:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)f2095_n;	(21)na;	(22)p;	(23)pre;	(24)q;
       } @)
[mman] DW:to_var, Mman_asyn.AVar(na)
[mman] MDW:to_texpr, seid:3
[mman] Mman_asyn.ASVar(sid:20), sei:3
[mman] DW: after do_assign 
       ({seid:3, peid:1}[|na-4=0; is_initialized=0; hend=0;
                                               hbase=0; f2095_n-20=0; c14__fn=0;
                                               c14__csz=0|])
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:20 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-4=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: na
[mman] transform_assign: na:=__hole[na * sizeof(Header)]
[mman] lval2exp: found na
[mman] to: na:=(na * 8)
[mman] MV:after evaL, None
[mman] MV:after evaE:(sv_21 * 8)
[mman] DW:do_assign, env:senv_3 = @(0,penv_1,
       [0] 
        senv:
       {} 
        penv_1:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_time;	(7)__fc_time_tm;	(8)__l7;	(9)__p_fc_time_tm;
       	(10)__fc_fds;	(11)__fc_fopen;	(12)__p_fc_fopen;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)f2095_n;	(21)na;	(22)p;	(23)pre;	(24)q;
       } @)
[mman] DW:to_var, Mman_asyn.AVar(na)
[mman] MDW:to_texpr, seid:3
[mman] Mman_asyn.ASVar(sid:21), sei:3
[mman] DW: after do_assign 
       ({seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0;
                                               hbase=0; f2095_n-20=0; c14__fn=0;
                                               c14__csz=0|])
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:22 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: p
[mman] transform_assign: p:=__hole[AVAIL.nlink]
[mman] replace_vinfo AVAIL/AVAIL in fn(AVAIL)
[mman] to: p:=fn(AVAIL)
[mman] MV:after evaL:sv_22
[mman] MV:after evaE:sv_17
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (17)c14__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:3
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:24 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: pre
[mman] transform_assign: pre:=__hole[& AVAIL]
[mman] to: pre:=&AVAIL
[mman] MV:after evaL:sv_23
[mman] MV:after evaE:sv_14
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (14)AVAIL
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:3
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:25 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] -----------
        DF:transfer_stmt_main: sid:27 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] s.skind: If
[mman] transform guard p != (Header *)0
[mman] transform guard: (int) p (op) (Header *)0
[mman] lval2exp: found p
[mman] build cast(4) of (4)
[mman] to: (true)p!=0
       	  (false)p=0
[mman] MV:meet_exp, value:({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:p=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_17=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:1}
       Bot)
[mman] MV:meet_exp, value:({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:p!=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_17>0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|] 
       )
[mman] -----------
        DF:transfer_stmt_main: sid:29 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] -----------
        DF:transfer_stmt_main: sid:31 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] s.skind: If
[mman] transform guard p->size >= na
[mman] transform guard: (int) p->size (op) na
[mman] replace_vinfo p/AVAIL in (csz(AVAIL) / 8)
[mman] replace_vinfo p/AVAIL in 8
[mman] replace_vinfo p/AVAIL in csz(AVAIL)
[mman] lval2exp: found na
[mman] to: (true)(csz(p) / 8)>=na
       	  (false)(csz(p) / 8)>na
[mman] MV:meet_exp, value:({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:(csz(p) / 8)>na
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return is None...
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:1}
       Bot)
[mman] MV:meet_exp, value:({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:(csz(p) / 8)>=na
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return is None...
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:1}
       Bot)
[mman] compute_fun_aux done 
       {peid:-1}
       Bot....
[mman] DF:init_callee: {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hend=0; hbase=0; f2095_n-20=0; c14__fn=0;
                         c14__csz=0|]
[mman] DF:ret_callee: {peid:-1}
       Bot
[mman] DF:ret_call: dkAlloc(...) 
        DF:{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)man |-> (0)__null,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:-1}
       Bot
[mman] MEV:Unify penvs 3, -1
[mman] DF:eid_common 3
[mman] MV:forget vars ...
[mman] MV:change_env...
[mman] MV:peid:3, old peid:3, new peid(eid common): 3
[mman] DF:assign callee __retres to unused _hole...
[mman] MV:finish do_assign.
[mman] MV:forget vars ...
[mman] MV:change_env...
[mman] MV:peid:-1, old peid:-1, new peid(eid common): 3
[mman] MV:change_env...
[mman] MV:peid:-1, old peid:3, new peid(eid common): 3
[mman] ASY:transform_lval2var: p1
[mman] transform_assign: p1:=__hole[__hole]
[mman] lval2exp: found __hole
[mman] to: p1:=__hole
[mman] MV:finish do_assign.
[mman] MV:forget vars ...
[mman] DF:ret_call state: {peid:-1}
       Bot
[mman] (sid:96): {peid:-1}
       Bot
[mman] (sid:97): {peid:-1}
       Bot
[mman] (sid:33): {peid:-1}
       Bot
[mman] (sid:98): {peid:-1}
       Bot
[mman] (sid:34): {peid:-1}
       Bot
[mman] (sid:2): {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] (sid:35): {peid:-1}
       Bot
[mman] (sid:100): {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] (sid:37): {peid:-1}
       Bot
[mman] (sid:101): {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] (sid:5): {peid:-1}
       Bot
[mman] (sid:6): {peid:-1}
       Bot
[mman] (sid:103): {peid:-1}
       Bot
[mman] (sid:7): {peid:-1}
       Bot
[mman] (sid:104): {peid:-1}
       Bot
[mman] (sid:8): {peid:-1}
       Bot
[mman] (sid:105): {peid:-1}
       Bot
[mman] (sid:41): {peid:-1}
       Bot
[mman] (sid:9): {peid:-1}
       Bot
[mman] (sid:42): {peid:-1}
       Bot
[mman] (sid:10): {peid:-1}
       Bot
[mman] (sid:43): {peid:-1}
       Bot
[mman] (sid:11): {peid:-1}
       Bot
[mman] (sid:44): {peid:-1}
       Bot
[mman] (sid:46): {peid:-1}
       Bot
[mman] (sid:111): {peid:-1}
       Bot
[mman] (sid:15): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hend=0; hbase=0; f2095_n-20=0; c14__fn=0;
                         c14__csz=0|]
[mman] (sid:48): {peid:-1}
       Bot
[mman] (sid:16): {peid:-1}
       Bot
[mman] (sid:49): {peid:-1}
       Bot
[mman] (sid:50): {peid:-1}
       Bot
[mman] (sid:19): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hend=0; hbase=0; f2095_n-20=0; c14__fn=0;
                         c14__csz=0|]
[mman] (sid:20): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-4=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:22): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:24): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:25): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:90): {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] (sid:91): {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] (sid:27): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:92): {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)man |-> (0)__null,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hend=0; hbase=0; c14__fn=0; c14__csz=0|]
[mman] (sid:28): {peid:-1}
       Bot
[mman] (sid:93): {peid:-1}
       Bot
[mman] (sid:29): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:94): {peid:-1}
       Bot
[mman] (sid:95): {peid:-1}
       Bot
[mman] (sid:31): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (22)p |-> (17)c14__fn,
        (23)pre |-> (14)AVAIL,
        
       heap list 
       [(14)AVAIL::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hend=0; hbase=0; f2095_n-20=0;
                         c14__fn=0; c14__csz=0|]
[mman] --------------------------------------------
[mman] Analysing 'minit'
[mman] --------------------------------------------
[mman] Analysing 'malloc'
[mman] --------------------------------------------
[mman] Analysing 'mfree'
[wp] Logging keys: .
