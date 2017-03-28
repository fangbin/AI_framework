[mman] DW:env2apron: 
        seid_-1 -> [0]
       []
[kernel] Parsing FRAMAC_SHARE/libc/__fc_builtin_for_normalization.i (no preprocessing)
[kernel] Converting CABS->CIL
[kernel] Parsing ../mem copy/bench/la/lamain.c (with preprocessing)
[kernel] Converting CABS->CIL
[mman] Welcome to the Mman plugin
[mman] check and initialise data abstraction
[mman] Reading data abstraction
[mman] 'cty' definition: ok
[mman] feature 'cal': undefined
[mman] feature 'cbe': ok
[mman] feature 'cen': ok
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
[mman] Add '__fc_time' of type unsigned int volatile (aka unsigned int volatile)
[mman] Add '__fc_time_tm' of type struct tm (aka struct tm)
[mman] Add '__p_fc_time_tm' of type struct tm * (aka struct tm *)
[mman] Add '__fc_fds' of type int [1024] (aka int [1024])
[mman] Add '__fc_fopen' of type FILE [512] (aka struct __fc_FILE [512])
[mman] Add '__p_fc_fopen' of type FILE * (aka struct __fc_FILE *)
[mman] Add feature 'csz' for 'id:11'
[mman] Add feature 'fn' for 'id:11'
[mman] Add '_heapstart' of type HEADER (aka struct hdr)
[mman] Add feature 'csz' for 'id:14'
[mman] Add feature 'fn' for 'id:14'
[mman] Add '_heapend' of type HEADER (aka struct hdr)
[mman] Add 'frhd' of type HEADER * (aka struct hdr *)
[mman] Add 'memleft' of type short (aka short)
[mman] Initialize penv for 'laAlloc'
[mman] Add 'nbytes' of type int (aka int)
[mman] Add 'nxt' of type HEADER * (aka struct hdr *)
[mman] Add 'prev' of type HEADER * (aka struct hdr *)
[mman] Add 'nunits' of type int (aka int)
[mman] Add '__retres' of type void * (aka void *)
[mman] Initialize penv for 'laFree'
[mman] Add 'ap' of type void * (aka void *)
[mman] Add 'nxt' of type HEADER * (aka struct hdr *)
[mman] Add 'prev' of type HEADER * (aka struct hdr *)
[mman] Add 'f' of type HEADER * (aka struct hdr *)
[mman] Initialize penv for 'laInit'
[mman] Initialize penv for 'main'
[mman] Add 'man' of type void * (aka void *)
[mman] Add 'p1' of type void * (aka void *)
[mman] Add 'p2' of type void * (aka void *)
[mman] Add '__retres' of type int (aka int)
[mman] Initialize penv for 'warm_boot'
[mman] Add 'str' of type char * (aka char *)
[mman] stmt2penvs:
       (1) s_1 (@line 30) -> e_4
       (1) s_4 (@line 50) -> e_2
       (1) s_5 (@line 51) -> e_2
       (1) s_7 (@line 55) -> e_2
       (1) s_8 (@line 59) -> e_2
       (1) s_9 (@line 60) -> e_2
       (1) s_10 (@line 61) -> e_2
       (1) s_12 (@line 64) -> e_2
       (1) s_13 (@line 65) -> e_2
       (1) s_14 (@line 66) -> e_2
       (1) s_15 (@line 68) -> e_2
       (1) s_18 (@line 77) -> e_2
       (1) s_19 (@line 77) -> e_2
       (1) s_20 (@line 77) -> e_2
       (1) s_22 (@line 77) -> e_2
       (1) s_24 (@line 77) -> e_2
       (1) s_25 (@line 77) -> e_2
       (1) s_26 (@line 77) -> e_2
       (1) s_27 (@line 78) -> e_2
       (1) s_29 (@line 78) -> e_2
       (1) s_30 (@line 79) -> e_2
       (1) s_31 (@line 80) -> e_2
       (1) s_33 (@line 81) -> e_2
       (1) s_34 (@line 90) -> e_2
       (1) s_35 (@line 91) -> e_2
       (1) s_39 (@line 77) -> e_2
       (1) s_40 (@line 77) -> e_2
       (1) s_41 (@line 104) -> e_2
       (1) s_42 (@line 106) -> e_2
       (1) s_44 (@line 107) -> e_2
       (1) s_45 (@line 108) -> e_2
       (1) s_46 (@line 109) -> e_2
       (1) s_47 (@line 111) -> e_2
       (1) s_50 (@line 122) -> e_1
       (1) s_51 (@line 134) -> e_1
       (1) s_52 (@line 134) -> e_1
       (1) s_53 (@line 134) -> e_1
       (1) s_55 (@line 134) -> e_1
       (1) s_56 (@line 134) -> e_1
       (1) s_57 (@line 135) -> e_1
       (1) s_59 (@line 135) -> e_1
       (1) s_61 (@line 136) -> e_1
       (1) s_62 (@line 137) -> e_1
       (1) s_63 (@line 138) -> e_1
       (1) s_64 (@line 139) -> e_1
       (1) s_66 (@line 141) -> e_1
       (1) s_67 (@line 142) -> e_1
       (1) s_68 (@line 144) -> e_1
       (1) s_69 (@line 146) -> e_1
       (1) s_71 (@line 151) -> e_1
       (1) s_73 (@line 134) -> e_1
       (1) s_74 (@line 134) -> e_1
       (1) s_75 (@line 160) -> e_1
       (1) s_76 (@line 161) -> e_1
       (1) s_78 (@line 170) -> e_0
       (1) s_79 (@line 171) -> e_0
       (1) s_80 (@line 174) -> e_0
       (1) s_81 (@line 175) -> e_0
       (1) s_82 (@line 177) -> e_0
       (1) s_83 (@line 178) -> e_0
       (1) s_86 (@line 8) -> e_3
       (1) s_87 (@line 8) -> e_3
       (1) s_88 (@line 9) -> e_3
       (1) s_89 (@line 10) -> e_3
       (1) s_90 (@line 11) -> e_3
       (1) s_91 (@line 12) -> e_3
       (1) s_92 (@line 13) -> e_3
       (1) s_93 (@line 14) -> e_3
       (1) s_94 (@line 15) -> e_3
       (1) s_96 (@line 31) -> e_4
       (1) s_98 (@line 69) -> e_2
       (1) s_99 (@line 93) -> e_2
       (1) s_100 (@line 112) -> e_2
       (1) s_102 (@line 151) -> e_1
       (1) s_103 (@line 161) -> e_1
       (1) s_105 (@line 180) -> e_0
       (1) s_107 (@line 15) -> e_3
[mman] envs:
       penv_0 = (2,[19] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)_heapstart;	(12)c11__csz;	(13)c11__fn;	(14)_heapend;
       	(15)c14__csz;	(16)c14__fn;	(17)frhd;	(18)memleft;} )
       penv_1 = (2,[24] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)_heapstart;	(12)c11__csz;	(13)c11__fn;	(14)_heapend;
       	(15)c14__csz;	(16)c14__fn;	(17)frhd;	(18)memleft;	(19)f1676_nbytes;
       	(20)nxt;	(21)prev;	(22)nunits;	(23)__retres;} )
       penv_2 = (2,[23] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)_heapstart;	(12)c11__csz;	(13)c11__fn;	(14)_heapend;
       	(15)c14__csz;	(16)c14__fn;	(17)frhd;	(18)memleft;	(19)f1670_ap;
       	(20)nxt;	(21)prev;	(22)f;} )
       penv_3 = (2,[23] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)_heapstart;	(12)c11__csz;	(13)c11__fn;	(14)_heapend;
       	(15)c14__csz;	(16)c14__fn;	(17)frhd;	(18)memleft;	(19)man;
       	(20)p1;	(21)p2;	(22)__retres;} )
       penv_4 = (2,[20] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)_heapstart;	(12)c11__csz;	(13)c11__fn;	(14)_heapend;
       	(15)c14__csz;	(16)c14__fn;	(17)frhd;	(18)memleft;	(19)f1665_str;
       } )
[mman] --------------------------------------------
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] DF:Computing initial state
[mman] DF:Initial_state_stmt (sid:86,/* sid:86 */
                                     laInit();, peid:3)
[mman] DF:running init globals
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] replace_vinfo _heapend/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] replace_vinfo _heapend/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo _heapend/_heapstart in 8
[mman] replace_vinfo _heapend/_heapstart in csz(_heapstart)
[mman] build cast(4) of (4)
[mman] Global inits: fn(_heapstart)csz(_heapstart)fn(_heapend)csz(_heapend) := 0000
       meet frhd>=0sv_2>=0(sv_2 - sv_3)=0
[mman] initialization done
       --------------
[mman] DF:Computing global values
[mman] MV:init_globals, peid:3
[mman] MV:initialize shape...
[mman] MEV:initialise symbolic environment, seid:0
[mman] DW:env2apron: 
        seid_0 -> [1]
       [0> __fc_fds:int 1> __fc_fopen:int 2> __fc_time:int 3> __fc_time_tm:int 4> __hli:int 5> __hole:int 6> __hst:int 7> __l5:int 8> __null:int 9> __p_fc_fopen:int 10> __p_fc_time_tm:int 11> __retres:int 12> _heapend:int 13> _heapstart:int 14> c11__csz:int 15> c11__fn:int 16> c14__csz:int 17> c14__fn:int 18> frhd:int 19> man:int 20> memleft:int 21> p1:int 22> p2:int]
[mman] DW:do_assign,
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (11)_heapstart |-> (11)_heapstart,
        (14)_heapend |-> (14)_heapend,
        
       heap list 
       [(11)_heapstart::(14)_heapend::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|c14__fn=0; c14__csz=0; c11__fn=0; c11__csz=0|] 
       )
[mman] MV:meet_exp....
[mman] MV:constraints:frhd>=0
[mman] MV:constraints:sv_2>=0
[mman] MV:constraints:(sv_2 - sv_3)=0
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_17>=0
[mman] MSH:guard_one return constraint:sv_2>=0
[mman] MSH:guard_one return constraint:(sv_2 - sv_3)=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_17>=0
[mman] MV:constraints returned from MSH:sv_2>=0
[mman] MV:constraints returned from MSH:(sv_2 - sv_3)=0
[mman] MDW:meet_exp
[mman] MDW:const:frhd -_i,0 0 >= 0
[mman] MDW:const:__hli -_i,0 0 >= 0
[mman] MDW:const:__hli -_i,0 __hst -_i,0 0 = 0
[mman] MV:finish meet_exp.
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:man>=0
[mman] MV:constraints:p1>=0
[mman] MV:constraints:p2>=0
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_19>=0
[mman] MSH:guard_one return constraint:sv_20>=0
[mman] MSH:guard_one return constraint:sv_21>=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_19>=0
[mman] MV:constraints returned from MSH:sv_20>=0
[mman] MV:constraints returned from MSH:sv_21>=0
[mman] MDW:meet_exp
[mman] MDW:const:man -_i,0 0 >= 0
[mman] MDW:const:p1 -_i,0 0 >= 0
[mman] MDW:const:p2 -_i,0 0 >= 0
[mman] MV:finish meet_exp.
[mman] DF:compute_from_entry_point, initial_state: {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (11)_heapstart |-> (11)_heapstart,
        (14)_heapend |-> (14)_heapend,
        
       heap list 
       [(11)_heapstart::(14)_heapend::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|-__hli+__hst=0; c14__fn=0; c14__csz=0; c11__fn=0;
                         c11__csz=0; p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:transfer_stmt_main: sid:86
[mman] DF:function called: laInit'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {seid:0, peid:3}[|-__hli+__hst=0; c14__fn=0; c14__csz=0; c11__fn=0;
                         c11__csz=0; p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] MEV:Unify penvs 3, 0
[mman] unified penv_3 = (3,[23] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)_heapstart;	(12)c11__csz;	(13)c11__fn;	(14)_heapend;
       	(15)c14__csz;	(16)c14__fn;	(17)frhd;	(18)memleft;	(19)man;
       	(20)p1;	(21)p2;	(22)__retres;} )
[mman] MV:change_env...
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:0,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:1,peid:0)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:env2apron: 
        seid_1 -> [2]
       [0> __fc_fds:int 1> __fc_fopen:int 2> __fc_time:int 3> __fc_time_tm:int 4> __hli:int 5> __hole:int 6> __hst:int 7> __l5:int 8> __null:int 9> __p_fc_fopen:int 10> __p_fc_time_tm:int 11> _heapend:int 12> _heapstart:int 13> c11__csz:int 14> c11__fn:int 15> c14__csz:int 16> c14__fn:int 17> frhd:int 18> memleft:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:meet_exp_one, peid:1, esh.seid:1....
[mman] MSH:do guard, seid:1...
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH are empty.
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:78: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (11)_heapstart |-> (11)_heapstart,
        (14)_heapend |-> (14)_heapend,
        
       heap list 
       [(11)_heapstart::(14)_heapend::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|-__hli+__hst=0; c14__fn=0; c14__csz=0; c11__fn=0;
                         c11__csz=0; frhd>=0; __hli>=0|]
[mman] DF:compute_fun_aux....
[mman] DF:transfer_stmt_main: sid:78
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:78 */
                         _heapstart.ptr = (struct hdr *)sbrk(65360);
[mman] ASY:transform_lval2var: _heapstart.ptr
[mman] ASY:transform_sbrk: fn(_heapstart):=__hole[sbrk(65360)] (SHAPE)
[mman] to: fn(_heapstart):=sbrk(65360) (SHAPE)
[mman] ASY:transform_lval2var: _heapstart.ptr
[mman] ASY:transform_sbrk: fn(_heapstart):=__hole[sbrk(65360)] (DW)
[mman] to: fn(_heapstart):=__hli (DW)
[mman] to: __hli:=(__hli + 65360) (DW)
[mman] MV:after evaL:fn(sv_11)
[mman] MV:after evaE:sbrk(65360)
[mman] DW:do_assign,
[mman] MV:do_assign: fn(sv_11):=sbrk(65360) (SHAPE)
[mman] MV:eshape mutate
[mman] MSH:Add feature 'csz' for 'id:13'
[mman] MSH:Add feature 'fn' for 'id:13'
[mman] new svar added vi.id32
[mman] MV:eshape mutate done, old esh.seid:1
[mman] DW:change_env...
[mman] DW:env2apron: 
        seid_3 -> [3]
       [0> __fc_fds:int 1> __fc_fopen:int 2> __fc_time:int 3> __fc_time_tm:int 4> __hli:int 5> __hole:int 6> __hst:int 7> __l5:int 8> __null:int 9> __p_fc_fopen:int 10> __p_fc_time_tm:int 11> __s32:int 12> _heapend:int 13> _heapstart:int 14> c11__csz:int 15> c11__fn:int 16> c13__csz:int 17> c13__fn:int 18> c14__csz:int 19> c14__fn:int 20> frhd:int 21> memleft:int]
[mman] DW: emvironment changed
[mman] 0, 3.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (11)_heapstart |-> (11)_heapstart,
        (13)c11__fn |-> (13)c11__fn,
        (14)_heapend |-> (14)_heapend,
        
       heap list 
       [(11)_heapstart::(14)_heapend::(13)c11__fn::(32)__s32::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       chd((13)c11__fn)[csz:(30)c13__csz,fn:(31)c13__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c11__fn+65360=0; -__hli+__hst+65360=0; c14__fn=0;
                         c14__csz=0; c11__csz=0; frhd>=0; __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:79
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:79 */
                         _heapend.ptr = (struct hdr *)sbrk(0);
[mman] ASY:transform_lval2var: _heapend.ptr
[mman] ASY:transform_sbrk: fn(_heapend):=__hole[sbrk(0)] (SHAPE)
[mman] to: fn(_heapend):=sbrk(0) (SHAPE)
[mman] ASY:transform_lval2var: _heapend.ptr
[mman] ASY:transform_sbrk: fn(_heapend):=__hole[sbrk(0)] (DW)
[mman] to: fn(_heapend):=__hli (DW)
[mman] to: __hli:=(__hli + 0) (DW)
[mman] MV:after evaL:fn(sv_14)
[mman] MV:after evaE:sbrk(0)
[mman] DW:do_assign,
[mman] MV:do_assign: fn(sv_14):=sbrk(0) (SHAPE)
[mman] MV:eshape mutate
[mman] MV:eshape mutate done, old esh.seid:3
[mman] 0, 3.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (11)_heapstart |-> (11)_heapstart,
        (13)c11__fn |-> (13)c11__fn,
        (14)_heapend |-> (14)_heapend,
        (16)c14__fn |-> (2)__hli,
        
       heap list 
       [(11)_heapstart::(14)_heapend::(13)c11__fn::(32)__s32::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       chd((13)c11__fn)[csz:(30)c13__csz,fn:(31)c13__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c14__fn=0; -__hli+c11__fn+65360=0;
                         -__hli+__hst+65360=0; c14__csz=0; c11__csz=0; frhd>=0;
                         __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:80
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[_heapstart.ptr]
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] to: frhd:=fn(_heapstart)
[mman] MV:after evaL:sv_17
[mman] MV:after evaE:sv_13
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (13)c11__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:3
[mman] 0, 3.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (11)_heapstart |-> (11)_heapstart,
        (13)c11__fn |-> (13)c11__fn,
        (14)_heapend |-> (14)_heapend,
        (16)c14__fn |-> (2)__hli,
        (17)frhd |-> (13)c11__fn,
        
       heap list 
       [(11)_heapstart::(14)_heapend::(13)c11__fn::(32)__s32::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       chd((13)c11__fn)[csz:(30)c13__csz,fn:(31)c13__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c14__fn=0; -__hli+c11__fn+65360=0;
                         -__hli+__hst+65360=0; c14__csz=0; c11__csz=0; frhd>=0;
                         __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:81
[mman] ASY:transform_lval2var: frhd->ptr
[mman] transform_assign: fn(frhd):=__hole[(struct hdr *)0]
[mman] build cast(4) of (4)
[mman] to: fn(frhd):=0
[mman] MV:after evaL:fn(sv_13)
[mman] MV:after evaE:0
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign,
[mman] 0, 3.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (11)_heapstart |-> (11)_heapstart,
        (13)c11__fn |-> (13)c11__fn,
        (14)_heapend |-> (14)_heapend,
        (16)c14__fn |-> (2)__hli,
        (17)frhd |-> (13)c11__fn,
        
       heap list 
       [(11)_heapstart::(14)_heapend::(13)c11__fn::(32)__s32::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       chd((13)c11__fn)[csz:(30)c13__csz,fn:(31)c13__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c14__fn=0; -__hli+c11__fn+65360=0;
                         -__hli+__hst+65360=0; c14__csz=0; c13__fn=0; c11__csz=0;
                         frhd>=0; __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:82
[mman] ASY:transform_lval2var: frhd->size
[mman] transform_assign: csz(frhd):=(__hole * 8)[(unsigned int)((char *)_heapend.ptr - (char *)_heapstart.ptr) / sizeof(HEADER)]
[mman] replace_vinfo _heapend/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: csz(frhd):=(((fn(_heapend) - fn(_heapstart)) / 8) * 8)
[mman] MV:after evaL:csz(sv_13)
[mman] MV:after evaE:(((sv_16 - sv_13) / 8) * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign,
[mman] 0, 3.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (11)_heapstart |-> (11)_heapstart,
        (13)c11__fn |-> (13)c11__fn,
        (14)_heapend |-> (14)_heapend,
        (16)c14__fn |-> (2)__hli,
        (17)frhd |-> (13)c11__fn,
        
       heap list 
       [(11)_heapstart::(14)_heapend::(13)c11__fn::(32)__s32::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       chd((13)c11__fn)[csz:(30)c13__csz,fn:(31)c13__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c14__fn=0; -__hli+c11__fn+65360=0;
                         -__hli+__hst+65360=0; c14__csz=0; c13__fn=0; c11__csz=0;
                         -c13__csz+65368>=0; frhd>=0; c13__csz-65352>=0;
                         __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:83
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)frhd->size]
[mman] replace_vinfo frhd/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo frhd/_heapstart in 8
[mman] replace_vinfo frhd/_heapstart in csz(_heapstart)
[mman] build cast(2) of (2)
[mman] to: memleft:=(csz(frhd) / 8)
[mman] MV:after evaL, None
[mman] MV:after evaE:(sv_30 / 8)
[mman] DW:do_assign,
[mman] 0, 3.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (11)_heapstart |-> (11)_heapstart,
        (13)c11__fn |-> (13)c11__fn,
        (14)_heapend |-> (14)_heapend,
        (16)c14__fn |-> (2)__hli,
        (17)frhd |-> (13)c11__fn,
        
       heap list 
       [(11)_heapstart::(14)_heapend::(13)c11__fn::(32)__s32::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       chd((13)c11__fn)[csz:(30)c13__csz,fn:(31)c13__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c14__fn=0; -__hli+c11__fn+65360=0;
                         -__hli+__hst+65360=0; c14__csz=0; c13__fn=0; c11__csz=0;
                         -c13__csz+65368>=0; -c13__csz+8memleft+8>=0; frhd>=0;
                         c13__csz-8memleft>=0; c13__csz-65352>=0; __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:105
[mman] compute_fun_aux done 
       {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (11)_heapstart |-> (11)_heapstart,
        (13)c11__fn |-> (13)c11__fn,
        (14)_heapend |-> (14)_heapend,
        (16)c14__fn |-> (2)__hli,
        (17)frhd |-> (13)c11__fn,
        
       heap list 
       [(11)_heapstart::(14)_heapend::(13)c11__fn::(32)__s32::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       chd((13)c11__fn)[csz:(30)c13__csz,fn:(31)c13__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c14__fn=0; -__hli+c11__fn+65360=0;
                         -__hli+__hst+65360=0; c14__csz=0; c13__fn=0; c11__csz=0;
                         -c13__csz+65368>=0; -c13__csz+8memleft+8>=0; frhd>=0;
                         c13__csz-8memleft>=0; c13__csz-65352>=0; __hli-65360>=0|] 
       ....
[mman] DF:ret_callee: {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (11)_heapstart |-> (11)_heapstart,
        (13)c11__fn |-> (13)c11__fn,
        (14)_heapend |-> (14)_heapend,
        (16)c14__fn |-> (2)__hli,
        (17)frhd |-> (13)c11__fn,
        
       heap list 
       [(11)_heapstart::(14)_heapend::(13)c11__fn::(32)__s32::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       chd((13)c11__fn)[csz:(30)c13__csz,fn:(31)c13__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c14__fn=0; -__hli+c11__fn+65360=0;
                         -__hli+__hst+65360=0; c14__csz=0; c13__fn=0; c11__csz=0;
                         -c13__csz+65368>=0; -c13__csz+8memleft+8>=0; frhd>=0;
                         c13__csz-8memleft>=0; c13__csz-65352>=0; __hli-65360>=0|]
[mman] DF:ret_call: laInit(...) 
        DF:{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (11)_heapstart |-> (11)_heapstart,
        (14)_heapend |-> (14)_heapend,
        
       heap list 
       [(11)_heapstart::(14)_heapend::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|-__hli+__hst=0; c14__fn=0; c14__csz=0; c11__fn=0;
                         c11__csz=0; p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (11)_heapstart |-> (11)_heapstart,
        (13)c11__fn |-> (13)c11__fn,
        (14)_heapend |-> (14)_heapend,
        (16)c14__fn |-> (2)__hli,
        (17)frhd |-> (13)c11__fn,
        
       heap list 
       [(11)_heapstart::(14)_heapend::(13)c11__fn::(32)__s32::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       chd((13)c11__fn)[csz:(30)c13__csz,fn:(31)c13__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c14__fn=0; -__hli+c11__fn+65360=0;
                         -__hli+__hst+65360=0; c14__csz=0; c13__fn=0; c11__csz=0;
                         -c13__csz+65368>=0; -c13__csz+8memleft+8>=0; frhd>=0;
                         c13__csz-8memleft>=0; c13__csz-65352>=0; __hli-65360>=0|]
[mman] MEV:Unify penvs 3, 0
[mman] unified penv_3 = (4,[23] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)_heapstart;	(12)c11__csz;	(13)c11__fn;	(14)_heapend;
       	(15)c14__csz;	(16)c14__fn;	(17)frhd;	(18)memleft;	(19)man;
       	(20)p1;	(21)p2;	(22)__retres;} )
[mman] DF:eid_common 3
[mman] MV:forget vars ...
[mman] DW:forget memleft,... in
        {seid:0, peid:3}[|-__hli+__hst=0; c14__fn=0; c14__csz=0; c11__fn=0;
                         c11__csz=0; p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] MV:change_env...
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:3,peid:0)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:env2apron: 
        seid_4 -> [4]
       [0> __fc_fds:int 1> __fc_fopen:int 2> __fc_time:int 3> __fc_time_tm:int 4> __hli:int 5> __hole:int 6> __hst:int 7> __l5:int 8> __null:int 9> __p_fc_fopen:int 10> __p_fc_time_tm:int 11> __retres:int 12> __s32:int 13> _heapend:int 14> _heapstart:int 15> c11__csz:int 16> c11__fn:int 17> c13__csz:int 18> c13__fn:int 19> c14__csz:int 20> c14__fn:int 21> frhd:int 22> man:int 23> memleft:int 24> p1:int 25> p2:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] MV:change_env...
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (11)_heapstart |-> (11)_heapstart,
        (13)c11__fn |-> (13)c11__fn,
        (14)_heapend |-> (14)_heapend,
        (16)c14__fn |-> (2)__hli,
        (17)frhd |-> (13)c11__fn,
        
       heap list 
       [(11)_heapstart::(14)_heapend::(13)c11__fn::(32)__s32::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       chd((13)c11__fn)[csz:(30)c13__csz,fn:(31)c13__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c14__fn=0; -__hli+c11__fn+65360=0;
                         -__hli+__hst+65360=0; c14__csz=0; c13__fn=0; c11__csz=0;
                         -c13__csz+65368>=0; -c13__csz+8memleft+8>=0; frhd>=0;
                         c13__csz-8memleft>=0; c13__csz-65352>=0; __hli-65360>=0|]
[mman] DF:transfer_stmt_main: sid:87
[mman] ASY:transform_lval2var: man
[mman] transform_assign: man:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: man:=0
[mman] MV:after evaL:sv_19
[mman] MV:after evaE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:4
[mman] 3, 4.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:4,peid:3) 
        (11)_heapstart |-> (11)_heapstart,
        (13)c11__fn |-> (13)c11__fn,
        (14)_heapend |-> (14)_heapend,
        (16)c14__fn |-> (2)__hli,
        (17)frhd |-> (13)c11__fn,
        (19)man |-> (0)__null,
        
       heap list 
       [(11)_heapstart::(14)_heapend::(13)c11__fn::(32)__s32::]
       atoms:
       chd((11)_heapstart)[csz:(12)c11__csz,fn:(13)c11__fn,]  * 
       chd((14)_heapend)[csz:(15)c14__csz,fn:(16)c14__fn,]  * 
       chd((13)c11__fn)[csz:(30)c13__csz,fn:(31)c13__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c14__fn=0; -__hli+c11__fn+65360=0;
                         -__hli+__hst+65360=0; c14__csz=0; c13__fn=0; c11__csz=0;
                         -c13__csz+65368>=0; -c13__csz+8memleft+8>=0; frhd>=0;
                         c13__csz-8memleft>=0; c13__csz-65352>=0; __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:88
[mman] DF:function called: laAlloc'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {seid:4, peid:3}[|-__hli+c14__fn=0; -__hli+c11__fn+65360=0;
                         -__hli+__hst+65360=0; c14__csz=0; c13__fn=0; c11__csz=0;
                         -c13__csz+65368>=0; -c13__csz+8memleft+8>=0; frhd>=0;
                         c13__csz-8memleft>=0; c13__csz-65352>=0; __hli-65360>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_19((19)f1676_nbytes)/24 -> pvar_23
[mman] old pvar_20((20)nxt)/24 -> pvar_24
[mman] old pvar_21((21)prev)/24 -> pvar_25
[mman] old pvar_22((22)nunits)/24 -> pvar_26
[mman] old pvar_23((23)__retres)/24 -> pvar_27
[mman] unified penv_5 = (1,[28] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)_heapstart;	(12)c11__csz;	(13)c11__fn;	(14)_heapend;
       	(15)c14__csz;	(16)c14__fn;	(17)frhd;	(18)memleft;	(19)man;
       	(20)p1;	(21)p2;	(22)__retres;	(23)f1676_nbytes;	(24)nxt;
       	(25)prev;	(26)nunits;	(27)__retres;} )
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] failure: Unexpected exception.
                Please submit bug report (Ref. "Failure("Environment.make: duplicated variable names")").
[kernel] Current source was: /Users/yuezhuang/Documents/projects/mem copy/bench/la/lamain.c:9
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
