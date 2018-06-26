[mman] DW:env2apron: 
        seid_-1 -> [0]
       []
[kernel] Parsing FRAMAC_SHARE/libc/__fc_builtin_for_normalization.i (no preprocessing)
[kernel] Converting CABS->CIL
[kernel] Parsing ../mem copy/bench/dknf/dknfmain.c (with preprocessing)
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
[mman] Add '__fc_fopen' of type FILE [512] (aka struct __fc_FILE [512])
[mman] Add '__p_fc_fopen' of type FILE * (aka struct __fc_FILE *)
[mman] Add '__fc_time' of type unsigned int volatile (aka unsigned int volatile)
[mman] Add '__fc_time_tm' of type struct tm (aka struct tm)
[mman] Add '__p_fc_time_tm' of type struct tm * (aka struct tm *)
[mman] Add '__fc_fds' of type int [1024] (aka int [1024])
[mman] Add 'is_initialized' of type int (aka int)
[mman] Add feature 'csz' for 'id:14'
[mman] Add feature 'fn' for 'id:14'
[mman] Add 'AVAIL' of type Header (aka struct header)
[mman] Add 'hend' of type void * (aka void *)
[mman] Add 'hbase' of type Header * (aka struct header *)
[mman] Add feature 'csz' for 'id:20'
[mman] Add feature 'fn' for 'id:20'
[mman] Add 'rov' of type Header (aka struct header)
[mman] Initialize penv for 'dkAlloc'
[mman] Add 'n' of type size_t (aka unsigned int)
[mman] Add 'na' of type size_t (aka unsigned int)
[mman] Add 'p' of type Header * (aka struct header *)
[mman] Add 'q' of type Header * (aka struct header *)
[mman] Add 'pre' of type Header * (aka struct header *)
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
       (1) s_2 (@line 49) -> e_0
       (1) s_5 (@line 52) -> e_0
       (1) s_6 (@line 54) -> e_0
       (1) s_7 (@line 57) -> e_0
       (1) s_8 (@line 58) -> e_0
       (1) s_9 (@line 60) -> e_0
       (1) s_10 (@line 61) -> e_0
       (1) s_11 (@line 62) -> e_0
       (1) s_12 (@line 64) -> e_0
       (1) s_16 (@line 76) -> e_1
       (1) s_17 (@line 77) -> e_1
       (1) s_20 (@line 84) -> e_1
       (1) s_21 (@line 85) -> e_1
       (1) s_23 (@line 87) -> e_1
       (1) s_25 (@line 89) -> e_1
       (1) s_26 (@line 92) -> e_1
       (1) s_28 (@line 92) -> e_1
       (1) s_29 (@line 92) -> e_1
       (1) s_30 (@line 93) -> e_1
       (1) s_32 (@line 93) -> e_1
       (1) s_34 (@line 93) -> e_1
       (1) s_35 (@line 95) -> e_1
       (1) s_36 (@line 96) -> e_1
       (1) s_37 (@line 97) -> e_1
       (1) s_39 (@line 98) -> e_1
       (1) s_43 (@line 100) -> e_1
       (1) s_44 (@line 101) -> e_1
       (1) s_45 (@line 102) -> e_1
       (1) s_46 (@line 103) -> e_1
       (1) s_47 (@line 105) -> e_1
       (1) s_49 (@line 106) -> e_1
       (1) s_51 (@line 108) -> e_1
       (1) s_52 (@line 109) -> e_1
       (1) s_54 (@line 110) -> e_1
       (1) s_55 (@line 111) -> e_1
       (1) s_56 (@line 112) -> e_1
       (1) s_59 (@line 114) -> e_1
       (1) s_60 (@line 115) -> e_1
       (1) s_62 (@line 119) -> e_1
       (1) s_65 (@line 132) -> e_2
       (1) s_67 (@line 133) -> e_2
       (1) s_69 (@line 134) -> e_2
       (1) s_71 (@line 137) -> e_2
       (1) s_74 (@line 138) -> e_2
       (1) s_77 (@line 142) -> e_2
       (1) s_79 (@line 142) -> e_2
       (1) s_81 (@line 142) -> e_2
       (1) s_82 (@line 142) -> e_2
       (1) s_83 (@line 142) -> e_2
       (1) s_84 (@line 143) -> e_2
       (1) s_85 (@line 143) -> e_2
       (1) s_86 (@line 144) -> e_2
       (1) s_88 (@line 147) -> e_2
       (1) s_89 (@line 148) -> e_2
       (1) s_90 (@line 149) -> e_2
       (1) s_92 (@line 151) -> e_2
       (1) s_93 (@line 152) -> e_2
       (1) s_96 (@line 157) -> e_2
       (1) s_97 (@line 158) -> e_2
       (1) s_98 (@line 159) -> e_2
       (1) s_100 (@line 160) -> e_2
       (1) s_101 (@line 161) -> e_2
       (1) s_103 (@line 163) -> e_2
       (1) s_105 (@line 164) -> e_2
       (1) s_106 (@line 165) -> e_2
       (1) s_110 (@line 7) -> e_3
       (1) s_111 (@line 7) -> e_3
       (1) s_112 (@line 8) -> e_3
       (1) s_113 (@line 9) -> e_3
       (1) s_114 (@line 10) -> e_3
       (1) s_115 (@line 11) -> e_3
       (1) s_116 (@line 12) -> e_3
       (1) s_117 (@line 13) -> e_3
       (1) s_118 (@line 14) -> e_3
       (1) s_120 (@line 50) -> e_0
       (1) s_121 (@line 66) -> e_0
       (1) s_123 (@line 98) -> e_1
       (1) s_124 (@line 106) -> e_1
       (1) s_125 (@line 119) -> e_1
       (1) s_127 (@line 139) -> e_2
       (1) s_128 (@line 139) -> e_2
       (1) s_129 (@line 167) -> e_2
       (1) s_131 (@line 14) -> e_3
[mman] envs:
       penv_0 = (2,[24] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;} )
       penv_1 = (2,[29] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;	(24)f2095_n;
       	(25)na;	(26)p;	(27)q;	(28)pre;} )
       penv_2 = (2,[28] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;	(24)f2102_x;
       	(25)po;	(26)q;	(27)p;} )
       penv_3 = (2,[27] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;	(24)man;
       	(25)p1;	(26)p2;} )
[mman] --------------------------------------------
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] DF:Computing initial state
[mman] DF:Initial_state_stmt (sid:110,/* sid:110 */
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
[mman] replace_vinfo rov/AVAIL in (csz(AVAIL) / 8)
[mman] replace_vinfo rov/AVAIL in 8
[mman] replace_vinfo rov/AVAIL in csz(AVAIL)
[mman] build cast(4) of (4)
[mman] replace_vinfo rov/AVAIL in fn(AVAIL)
[mman] build cast(4) of (4)
[mman] Global inits: is_initializedcsz(AVAIL)fn(AVAIL)hbasecsz(rov)fn(rov) := 000000
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
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;	(24)man;
       	(25)p1;	(26)p2;} @)
[mman] MV:old value  ({peid:3}
       Top)
[mman] DW:env2apron: 
        seid_0 -> [1]
       [0> AVAIL:int 1> __fc_fds:int 2> __fc_fopen:int 3> __fc_rand_max:int 4> __fc_random_counter:int 5> __fc_time:int 6> __fc_time_tm:int 7> __hli:int 8> __hole:int 9> __hst:int 10> __l14:int 11> __l20:int 12> __l9:int 13> __null:int 14> __p_fc_fopen:int 15> __p_fc_time_tm:int 16> c14__csz:int 17> c14__fn:int 18> c20__csz:int 19> c20__fn:int 20> hbase:int 21> hend:int 22> is_initialized:int 23> man:int 24> p1:int 25> p2:int 26> rov:int]
[mman] new eshape value:
         ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
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
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;	(24)man;
       	(25)p1;	(26)p2;} @)
[mman] DW:to_var, Mman_asyn.AVar(is_initialized)
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(AVAIL))
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(AVAIL))
[mman] DW:to_var, Mman_asyn.AVar(hbase)
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(rov))
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(rov))
[mman] DW: after do_assign 
       ({seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0;
                                               c20__csz=0; c14__fn=0; c14__csz=0|])
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
       )
[mman] MV:assign_done,vinit.eid:3 
       , new value: 
        ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
       ) 
        ==========================================
[mman] MV:meet_exp, value:({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
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
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
       )
[mman] DF:set_fun_locals....
[mman] MV:meet_exp, value:({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:man>=0
[mman] MV:constraints:p1>=0
[mman] MV:constraints:p2>=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_24>=0
[mman] MSH:guard_one return constraint:sv_25>=0
[mman] MSH:guard_one return constraint:sv_26>=0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
       )
[mman] DF:initial_state eid:3 
        {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
        ===================
[mman] -----------
        DF:transfer_stmt_main: sid:110 
        on{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] DF:function called: dkInit'
[mman] DF:do_call, kf_callee: dkInit(...), stmt:/* sid:110 */
                                                dkInit();
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] DF:caller_penv:3, callee_penv:0, state.eid:3...
[mman] MV:forget vars ...
[mman] MEV:Unify penvs 3, 0
[mman] unified penv_3 = (3,[27] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;	(24)man;
       	(25)p1;	(26)p2;} )
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
       [0> AVAIL:int 1> __fc_fds:int 2> __fc_fopen:int 3> __fc_rand_max:int 4> __fc_random_counter:int 5> __fc_time:int 6> __fc_time_tm:int 7> __hli:int 8> __hole:int 9> __hst:int 10> __l14:int 11> __l20:int 12> __l9:int 13> __null:int 14> __p_fc_fopen:int 15> __p_fc_time_tm:int 16> c14__csz:int 17> c14__fn:int 18> c20__csz:int 19> c20__fn:int 20> hbase:int 21> hend:int 22> is_initialized:int 23> rov:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp, value:({peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:1, esh.seid:1....
[mman] MSH:do guard, seid:1...
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
       )
[mman] DF:compute_fun_init done. 
        State at first stmt sid:2: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] DF:compute_fun_aux....
[mman] -----------
        DF:transfer_stmt_main: sid:2 
        on{peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] s.skind: If
[mman] transform guard is_initialized != 0
[mman] transform guard: (int) is_initialized (op) 0
[mman] lval2exp: found is_initialized
[mman] to: (true)is_initialized!=0
       	  (false)is_initialized=0
[mman] MV:meet_exp, value:({peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
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
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
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
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
       )
[mman] -----------
        DF:transfer_stmt_main: sid:120 
        on{peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] -----------
        DF:transfer_stmt_main: sid:121 
        on{peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] compute_fun_aux done 
       {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|] 
       ....
[mman] DF:init_callee: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] DF:ret_callee: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] DF:ret_call: dkInit(...) 
        DF:{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] MEV:Unify penvs 3, 0
[mman] unified penv_3 = (4,[27] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;	(24)man;
       	(25)p1;	(26)p2;} )
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
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] -----------
        DF:transfer_stmt_main: sid:111 
        on{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: man
[mman] transform_assign: man:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: man:=0
[mman] MV:after evaL:sv_24
[mman] MV:after evaE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:0
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:112 
        on{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (24)man |-> (0)__null,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] DF:function called: dkAlloc'
[mman] DF:do_call, kf_callee: dkAlloc(...), stmt:/* sid:112 */
                                                 p1 = dkAlloc((unsigned int)20);
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] DF:caller_penv:3, callee_penv:1, state.eid:3...
[mman] MV:forget vars ...
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_24/29 -> pvar_27
[mman] old pvar_25/29 -> pvar_28
[mman] old pvar_26/29 -> pvar_29
[mman] old pvar_27/29 -> pvar_30
[mman] old pvar_28/29 -> pvar_31
[mman] unified penv_4 = (1,[32] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;	(24)man;
       	(25)p1;	(26)p2;	(27)f2095_n;	(28)na;	(29)p;
       	(30)q;	(31)pre;} )
[mman] DF:Unified env eid_common:4
[mman] MV:change_env...
[mman] MV:peid:3, old peid:3, new peid(eid common): 4
[mman] MEV:senv_change_pe, old senv:(seid:0,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:2,peid:4)
[mman] MSH:change_env, project out...
[mman] DW:env2apron: 
        seid_2 -> [3]
       [0> AVAIL:int 1> __fc_fds:int 2> __fc_fopen:int 3> __fc_rand_max:int 4> __fc_random_counter:int 5> __fc_time:int 6> __fc_time_tm:int 7> __hli:int 8> __hole:int 9> __hst:int 10> __l14:int 11> __l20:int 12> __l9:int 13> __null:int 14> __p_fc_fopen:int 15> __p_fc_time_tm:int 16> c14__csz:int 17> c14__fn:int 18> c20__csz:int 19> c20__fn:int 20> f2095_n:int 21> hbase:int 22> hend:int 23> is_initialized:int 24> man:int 25> na:int 26> p:int 27> p1:int 28> p2:int 29> pre:int 30> q:int 31> rov:int]
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
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;	(24)man;
       	(25)p1;	(26)p2;	(27)f2095_n;	(28)na;	(29)p;
       	(30)q;	(31)pre;} @)
[mman] DW:to_var, Mman_asyn.AVar(n)
[mman] DW: after do_assign 
       ({seid:2, peid:4}[|is_initialized=0; hbase=0;
                                               f2095_n-20=0; c20__fn=0; c20__csz=0;
                                               c14__fn=0; c14__csz=0|])
[mman] MV:finish do_assign.
[mman] MV:change_env...
[mman] MV:peid:4, old peid:4, new peid(eid common): 1
[mman] MEV:senv_change_pe, old senv:(seid:2,peid:4)
[mman] MEV:senv_change_pe, new senv:(seid:3,peid:1)
[mman] MSH:change_env, project out...
[mman] DW:env2apron: 
        seid_3 -> [4]
       [0> AVAIL:int 1> __fc_fds:int 2> __fc_fopen:int 3> __fc_rand_max:int 4> __fc_random_counter:int 5> __fc_time:int 6> __fc_time_tm:int 7> __hli:int 8> __hole:int 9> __hst:int 10> __l14:int 11> __l20:int 12> __l9:int 13> __null:int 14> __p_fc_fopen:int 15> __p_fc_time_tm:int 16> c14__csz:int 17> c14__fn:int 18> c20__csz:int 19> c20__fn:int 20> f2095_n:int 21> hbase:int 22> hend:int 23> is_initialized:int 24> na:int 25> p:int 26> pre:int 27> q:int 28> rov:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp, value:({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:na>=0
[mman] MV:constraints:4294967295>=na
[mman] MV:constraints:p>=0
[mman] MV:constraints:q>=0
[mman] MV:constraints:pre>=0
[mman] MV:constraints:__retres>=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_25>=0
[mman] MSH:guard_one return constraint:4294967295>=sv_25
[mman] MSH:guard_one return constraint:sv_26>=0
[mman] MSH:guard_one return constraint:sv_27>=0
[mman] MSH:guard_one return constraint:sv_28>=0
[mman] MSH:guard_one return constraint:sv_1>=0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|] 
       )
[mman] DF:compute_fun_init done. 
        State at first stmt sid:16: {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] DF:compute_fun_aux....
[mman] -----------
        DF:transfer_stmt_main: sid:16 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] s.skind: If
[mman] transform guard is_initialized == 0
[mman] transform guard: (int) is_initialized (op) 0
[mman] lval2exp: found is_initialized
[mman] to: (true)is_initialized=0
       	  (false)is_initialized!=0
[mman] MV:meet_exp, value:({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|] 
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
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|] 
       )
[mman] MV:meet_exp, value:({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|] 
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
        DF:transfer_stmt_main: sid:20 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: na
[mman] transform_assign: na:=__hole[((n + sizeof(Header)) - (size_t)1) / sizeof(Header) + (size_t)1]
[mman] lval2exp: found n
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: na:=((((n + 8) - 1) / 8) + 1)
[mman] MV:after evaL, None
[mman] MV:after evaE:((((sv_24 + 8) - 1) / 8) + 1)
[mman] DW:do_assign, env:senv_3 = @(0,penv_1,
       [0] 
        senv:
       {} 
        penv_1:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;	(24)f2095_n;
       	(25)na;	(26)p;	(27)q;	(28)pre;} @)
[mman] DW:to_var, Mman_asyn.AVar(na)
[mman] MDW:to_texpr, seid:3
[mman] Mman_asyn.ASVar(sid:24), sei:3
[mman] DW: after do_assign 
       ({seid:3, peid:1}[|na-4=0; is_initialized=0; hbase=0;
                                               f2095_n-20=0; c20__fn=0; c20__csz=0;
                                               c14__fn=0; c14__csz=0|])
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:21 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-4=0; is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: na
[mman] transform_assign: na:=__hole[na * sizeof(Header)]
[mman] lval2exp: found na
[mman] to: na:=(na * 8)
[mman] MV:after evaL, None
[mman] MV:after evaE:(sv_25 * 8)
[mman] DW:do_assign, env:senv_3 = @(0,penv_1,
       [0] 
        senv:
       {} 
        penv_1:
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_random_counter;
       	(5)__fc_rand_max;	(6)__fc_fopen;	(7)__p_fc_fopen;	(8)__fc_time;	(9)__fc_time_tm;
       	(10)__l9;	(11)__p_fc_time_tm;	(12)__fc_fds;	(13)is_initialized;	(14)AVAIL;
       	(15)__l14;	(16)c14__csz;	(17)c14__fn;	(18)hend;	(19)hbase;
       	(20)rov;	(21)__l20;	(22)c20__csz;	(23)c20__fn;	(24)f2095_n;
       	(25)na;	(26)p;	(27)q;	(28)pre;} @)
[mman] DW:to_var, Mman_asyn.AVar(na)
[mman] MDW:to_texpr, seid:3
[mman] Mman_asyn.ASVar(sid:25), sei:3
[mman] DW: after do_assign 
       ({seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0;
                                               f2095_n-20=0; c20__fn=0; c20__csz=0;
                                               c14__fn=0; c14__csz=0|])
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:23 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: p
[mman] transform_assign: p:=__hole[rov.nlink]
[mman] replace_vinfo rov/AVAIL in fn(AVAIL)
[mman] to: p:=fn(rov)
[mman] MV:after evaL:sv_26
[mman] MV:after evaE:sv_23
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (23)c20__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:3
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:25 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: pre
[mman] transform_assign: pre:=__hole[& rov]
[mman] to: pre:=&rov
[mman] MV:after evaL:sv_28
[mman] MV:after evaE:sv_20
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (20)rov
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:3
[mman] MV:finish do_assign.
[mman] -----------
        DF:transfer_stmt_main: sid:26 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] -----------
        DF:transfer_stmt_main: sid:28 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
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
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:p=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_23=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:1}
       Bot)
[mman] MV:meet_exp, value:({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|] 
       )....
[mman] MV:constraints:p!=0
[mman] MV:meet_exp_set....
[mman] MV:meet_exp_one, peid:3, esh.seid:3....
[mman] MSH:do guard, seid:3...
[mman] MSH:guard_one return constraint:sv_23>0
[mman] MV:MSH.guard done...
[mman] MV:finish meet_exp.
[mman] MV:new eshape value: ({peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|] 
       )
[mman] -----------
        DF:transfer_stmt_main: sid:30 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] -----------
        DF:transfer_stmt_main: sid:32 
        on{peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
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
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|] 
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
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|] 
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
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] DF:ret_callee: {peid:-1}
       Bot
[mman] DF:ret_call: dkAlloc(...) 
        DF:{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (24)man |-> (0)__null,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
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
[mman] (sid:32): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] (sid:34): {peid:-1}
       Bot
[mman] (sid:2): {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:131): {peid:-1}
       Bot
[mman] (sid:35): {peid:-1}
       Bot
[mman] (sid:36): {peid:-1}
       Bot
[mman] (sid:37): {peid:-1}
       Bot
[mman] (sid:5): {peid:-1}
       Bot
[mman] (sid:6): {peid:-1}
       Bot
[mman] (sid:39): {peid:-1}
       Bot
[mman] (sid:7): {peid:-1}
       Bot
[mman] (sid:8): {peid:-1}
       Bot
[mman] (sid:9): {peid:-1}
       Bot
[mman] (sid:10): {peid:-1}
       Bot
[mman] (sid:43): {peid:-1}
       Bot
[mman] (sid:11): {peid:-1}
       Bot
[mman] (sid:44): {peid:-1}
       Bot
[mman] (sid:12): {peid:-1}
       Bot
[mman] (sid:45): {peid:-1}
       Bot
[mman] (sid:110): {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:46): {peid:-1}
       Bot
[mman] (sid:111): {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:47): {peid:-1}
       Bot
[mman] (sid:112): {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (24)man |-> (0)__null,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:16): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] (sid:113): {peid:-1}
       Bot
[mman] (sid:49): {peid:-1}
       Bot
[mman] (sid:17): {peid:-1}
       Bot
[mman] (sid:114): {peid:-1}
       Bot
[mman] (sid:115): {peid:-1}
       Bot
[mman] (sid:51): {peid:-1}
       Bot
[mman] (sid:116): {peid:-1}
       Bot
[mman] (sid:52): {peid:-1}
       Bot
[mman] (sid:20): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] (sid:117): {peid:-1}
       Bot
[mman] (sid:21): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-4=0; is_initialized=0; hbase=0; f2095_n-20=0; c20__fn=0;
                         c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] (sid:118): {peid:-1}
       Bot
[mman] (sid:54): {peid:-1}
       Bot
[mman] (sid:55): {peid:-1}
       Bot
[mman] (sid:23): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] (sid:56): {peid:-1}
       Bot
[mman] (sid:120): {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:25): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] (sid:121): {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|is_initialized=0; hbase=0; c20__fn=0; c20__csz=0;
                         c14__fn=0; c14__csz=0|]
[mman] (sid:26): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] (sid:123): {peid:-1}
       Bot
[mman] (sid:59): {peid:-1}
       Bot
[mman] (sid:124): {peid:-1}
       Bot
[mman] (sid:60): {peid:-1}
       Bot
[mman] (sid:28): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] (sid:125): {peid:-1}
       Bot
[mman] (sid:29): {peid:-1}
       Bot
[mman] (sid:62): {peid:-1}
       Bot
[mman] (sid:30): {peid:1}
       eshape: stack:(seid:3,peid:1) 
        (14)AVAIL |-> (14)AVAIL,
        (20)rov |-> (20)rov,
        (26)p |-> (23)c20__fn,
        (28)pre |-> (20)rov,
        
       heap list 
       [(14)AVAIL::(20)rov::]
       atoms:
       chd((14)AVAIL)[csz:(16)c14__csz,fn:(17)c14__fn,]  * 
       chd((20)rov)[csz:(22)c20__csz,fn:(23)c20__fn,]  * 
       emp,
        
        dwords:{seid:3, peid:1}[|na-32=0; is_initialized=0; hbase=0; f2095_n-20=0;
                         c20__fn=0; c20__csz=0; c14__fn=0; c14__csz=0|]
[mman] --------------------------------------------
[mman] Analysing 'minit'
[mman] --------------------------------------------
[mman] Analysing 'malloc'
[mman] --------------------------------------------
[mman] Analysing 'mfree'
[wp] Logging keys: .
