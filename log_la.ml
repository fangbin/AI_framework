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
[mman] Add 'isfree' of type int (aka int)
[mman] Add feature 'csz' for 'id:12'
[mman] Add feature 'fn' for 'id:12'
[mman] Add '_heapstart' of type HEADER (aka struct hdr)
[mman] Add feature 'csz' for 'id:15'
[mman] Add feature 'fn' for 'id:15'
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
[mman] Add '__retres' of type void * (aka void *)
[mman] Initialize penv for 'warm_boot'
[mman] Add 'str' of type char * (aka char *)
[mman] stmt2penvs:
       (1) s_1 (@line 35) -> e_4
       (1) s_4 (@line 61) -> e_2
       (1) s_5 (@line 62) -> e_2
       (1) s_7 (@line 66) -> e_2
       (1) s_8 (@line 70) -> e_2
       (1) s_9 (@line 71) -> e_2
       (1) s_10 (@line 72) -> e_2
       (1) s_12 (@line 75) -> e_2
       (1) s_13 (@line 76) -> e_2
       (1) s_14 (@line 77) -> e_2
       (1) s_15 (@line 79) -> e_2
       (1) s_18 (@line 88) -> e_2
       (1) s_19 (@line 88) -> e_2
       (1) s_20 (@line 88) -> e_2
       (1) s_22 (@line 88) -> e_2
       (1) s_24 (@line 88) -> e_2
       (1) s_25 (@line 88) -> e_2
       (1) s_26 (@line 88) -> e_2
       (1) s_27 (@line 89) -> e_2
       (1) s_29 (@line 89) -> e_2
       (1) s_30 (@line 90) -> e_2
       (1) s_31 (@line 91) -> e_2
       (1) s_33 (@line 92) -> e_2
       (1) s_34 (@line 101) -> e_2
       (1) s_35 (@line 102) -> e_2
       (1) s_39 (@line 88) -> e_2
       (1) s_40 (@line 88) -> e_2
       (1) s_41 (@line 115) -> e_2
       (1) s_42 (@line 116) -> e_2
       (1) s_44 (@line 117) -> e_2
       (1) s_45 (@line 118) -> e_2
       (1) s_46 (@line 119) -> e_2
       (1) s_47 (@line 121) -> e_2
       (1) s_50 (@line 135) -> e_1
       (1) s_51 (@line 147) -> e_1
       (1) s_52 (@line 147) -> e_1
       (1) s_53 (@line 147) -> e_1
       (1) s_55 (@line 147) -> e_1
       (1) s_56 (@line 147) -> e_1
       (1) s_57 (@line 148) -> e_1
       (1) s_59 (@line 148) -> e_1
       (1) s_61 (@line 149) -> e_1
       (1) s_62 (@line 150) -> e_1
       (1) s_63 (@line 151) -> e_1
       (1) s_64 (@line 152) -> e_1
       (1) s_66 (@line 154) -> e_1
       (1) s_67 (@line 155) -> e_1
       (1) s_68 (@line 157) -> e_1
       (1) s_69 (@line 159) -> e_1
       (1) s_71 (@line 163) -> e_1
       (1) s_73 (@line 147) -> e_1
       (1) s_74 (@line 147) -> e_1
       (1) s_75 (@line 173) -> e_1
       (1) s_77 (@line 182) -> e_0
       (1) s_78 (@line 183) -> e_0
       (1) s_79 (@line 187) -> e_0
       (1) s_80 (@line 189) -> e_0
       (1) s_81 (@line 191) -> e_0
       (1) s_82 (@line 192) -> e_0
       (1) s_85 (@line 8) -> e_3
       (1) s_86 (@line 8) -> e_3
       (1) s_87 (@line 9) -> e_3
       (1) s_88 (@line 10) -> e_3
       (1) s_89 (@line 15) -> e_3
       (1) s_91 (@line 36) -> e_4
       (1) s_93 (@line 80) -> e_2
       (1) s_94 (@line 104) -> e_2
       (1) s_95 (@line 125) -> e_2
       (1) s_97 (@line 163) -> e_1
       (1) s_98 (@line 173) -> e_1
       (1) s_100 (@line 197) -> e_0
       (1) s_102 (@line 15) -> e_3
[mman] envs:
       penv_0 = (2,[20] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)isfree;	(12)_heapstart;	(13)c12__csz;	(14)c12__fn;
       	(15)_heapend;	(16)c15__csz;	(17)c15__fn;	(18)frhd;	(19)memleft;
       } )
       penv_1 = (2,[25] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)isfree;	(12)_heapstart;	(13)c12__csz;	(14)c12__fn;
       	(15)_heapend;	(16)c15__csz;	(17)c15__fn;	(18)frhd;	(19)memleft;
       	(20)f1677_nbytes;	(21)nxt;	(22)prev;	(23)nunits;	(24)__retres;
       } )
       penv_2 = (2,[24] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)isfree;	(12)_heapstart;	(13)c12__csz;	(14)c12__fn;
       	(15)_heapend;	(16)c15__csz;	(17)c15__fn;	(18)frhd;	(19)memleft;
       	(20)f1671_ap;	(21)nxt;	(22)prev;	(23)f;} )
       penv_3 = (2,[23] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)isfree;	(12)_heapstart;	(13)c12__csz;	(14)c12__fn;
       	(15)_heapend;	(16)c15__csz;	(17)c15__fn;	(18)frhd;	(19)memleft;
       	(20)man;	(21)p1;	(22)__retres;} )
       penv_4 = (2,[21] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)isfree;	(12)_heapstart;	(13)c12__csz;	(14)c12__fn;
       	(15)_heapend;	(16)c15__csz;	(17)c15__fn;	(18)frhd;	(19)memleft;
       	(20)f1666_str;} )
[mman] --------------------------------------------
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] DF:Computing initial state
[mman] DF:Initial_state_stmt (sid:85,/* sid:85 */
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
[mman] build cast(2) of (2)
[mman] Global inits: fn(_heapstart)csz(_heapstart)fn(_heapend)csz(_heapend)memleft := 00000
       meet frhd>=0sv_2>=0(sv_2 - sv_3)=0
[mman] initialization done
       --------------
[mman] DF:Computing global values
[mman] MV:init_globals, peid:3
[mman] MV:initialize shape...
[mman] MEV:initialise symbolic environment, seid:0
[mman] DW:env2apron: 
        seid_0 -> [1]
       [0> __fc_fds:int 1> __fc_fopen:int 2> __fc_time:int 3> __fc_time_tm:int 4> __hli:int 5> __hole:int 6> __hst:int 7> __l5:int 8> __null:int 9> __p_fc_fopen:int 10> __p_fc_time_tm:int 11> __retres:int 12> _heapend:int 13> _heapstart:int 14> c12__csz:int 15> c12__fn:int 16> c15__csz:int 17> c15__fn:int 18> frhd:int 19> isfree:int 20> man:int 21> memleft:int 22> p1:int]
[mman] DW:do_assign,
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (15)_heapend |-> (15)_heapend,
        
       heap list 
       [(12)_heapstart::(15)_heapend::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|memleft=0; c15__fn=0; c15__csz=0; c12__fn=0; c12__csz=0|] 
       )
[mman] MV:meet_exp....
[mman] MV:constraints:frhd>=0
[mman] MV:constraints:sv_2>=0
[mman] MV:constraints:(sv_2 - sv_3)=0
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_18>=0
[mman] MSH:guard_one return constraint:sv_2>=0
[mman] MSH:guard_one return constraint:(sv_2 - sv_3)=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_18>=0
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
[mman] MV:constraints:__retres>=0
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_20>=0
[mman] MSH:guard_one return constraint:sv_21>=0
[mman] MSH:guard_one return constraint:sv_22>=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_20>=0
[mman] MV:constraints returned from MSH:sv_21>=0
[mman] MV:constraints returned from MSH:sv_22>=0
[mman] MDW:meet_exp
[mman] MDW:const:man -_i,0 0 >= 0
[mman] MDW:const:p1 -_i,0 0 >= 0
[mman] MDW:const:__retres -_i,0 0 >= 0
[mman] MV:finish meet_exp.
[mman] DF:compute_from_entry_point, initial_state: {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (15)_heapend |-> (15)_heapend,
        
       heap list 
       [(12)_heapstart::(15)_heapend::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|-__hli+__hst=0; memleft=0; c15__fn=0; c15__csz=0;
                         c12__fn=0; c12__csz=0; p1>=0; man>=0; frhd>=0; __retres>=0;
                         __hli>=0|]
[mman] DF:transfer_stmt_main: sid:85
[mman] DF:function called: laInit'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {seid:0, peid:3}[|-__hli+__hst=0; memleft=0; c15__fn=0; c15__csz=0;
                         c12__fn=0; c12__csz=0; p1>=0; man>=0; frhd>=0; __retres>=0;
                         __hli>=0|]
[mman] MEV:Unify penvs 3, 0
[mman] unified penv_3 = (3,[23] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)isfree;	(12)_heapstart;	(13)c12__csz;	(14)c12__fn;
       	(15)_heapend;	(16)c15__csz;	(17)c15__fn;	(18)frhd;	(19)memleft;
       	(20)man;	(21)p1;	(22)__retres;} )
[mman] MV:change_env...
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:0,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:1,peid:0)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:env2apron: 
        seid_1 -> [2]
       [0> __fc_fds:int 1> __fc_fopen:int 2> __fc_time:int 3> __fc_time_tm:int 4> __hli:int 5> __hole:int 6> __hst:int 7> __l5:int 8> __null:int 9> __p_fc_fopen:int 10> __p_fc_time_tm:int 11> _heapend:int 12> _heapstart:int 13> c12__csz:int 14> c12__fn:int 15> c15__csz:int 16> c15__fn:int 17> frhd:int 18> isfree:int 19> memleft:int]
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
        State at first stmt sid:77: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (15)_heapend |-> (15)_heapend,
        
       heap list 
       [(12)_heapstart::(15)_heapend::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|-__hli+__hst=0; memleft=0; c15__fn=0; c15__csz=0;
                         c12__fn=0; c12__csz=0; frhd>=0; __hli>=0|]
[mman] DF:compute_fun_aux....
[mman] DF:transfer_stmt_main: sid:77
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:77 */
                         _heapstart.ptr = (struct hdr *)sbrk(65360);
[mman] ASY:transform_lval2var: _heapstart.ptr
[mman] ASY:transform_sbrk: fn(_heapstart):=__hole[sbrk(65360)] (SHAPE)
[mman] to: fn(_heapstart):=sbrk(65360) (SHAPE)
[mman] ASY:transform_lval2var: _heapstart.ptr
[mman] ASY:transform_sbrk: fn(_heapstart):=__hole[sbrk(65360)] (DW)
[mman] to: fn(_heapstart):=__hli (DW)
[mman] to: __hli:=(__hli + 65360) (DW)
[mman] MV:after evaL:fn(sv_12)
[mman] MV:after evaE:sbrk(65360)
[mman] DW:do_assign,
[mman] MV:do_assign: fn(sv_12):=sbrk(65360) (SHAPE)
[mman] MV:eshape mutate
[mman] MSH:Add feature 'csz' for 'id:14'
[mman] MSH:Add feature 'fn' for 'id:14'
[mman] new svar added vi.id32
[mman] MV:eshape mutate done, old esh.seid:1
[mman] DW:change_env...
[mman] DW:env2apron: 
        seid_3 -> [3]
       [0> __fc_fds:int 1> __fc_fopen:int 2> __fc_time:int 3> __fc_time_tm:int 4> __hli:int 5> __hole:int 6> __hst:int 7> __l5:int 8> __null:int 9> __p_fc_fopen:int 10> __p_fc_time_tm:int 11> __s32:int 12> _heapend:int 13> _heapstart:int 14> c12__csz:int 15> c12__fn:int 16> c14__csz:int 17> c14__fn:int 18> c15__csz:int 19> c15__fn:int 20> frhd:int 21> isfree:int 22> memleft:int]
[mman] DW: emvironment changed
[mman] 0, 3.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c12__fn+65360=0; -__hli+__hst+65360=0; memleft=0;
                         c15__fn=0; c15__csz=0; c12__csz=0; frhd>=0; __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:78
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:78 */
                         _heapend.ptr = (struct hdr *)sbrk(0);
[mman] ASY:transform_lval2var: _heapend.ptr
[mman] ASY:transform_sbrk: fn(_heapend):=__hole[sbrk(0)] (SHAPE)
[mman] to: fn(_heapend):=sbrk(0) (SHAPE)
[mman] ASY:transform_lval2var: _heapend.ptr
[mman] ASY:transform_sbrk: fn(_heapend):=__hole[sbrk(0)] (DW)
[mman] to: fn(_heapend):=__hli (DW)
[mman] to: __hli:=(__hli + 0) (DW)
[mman] MV:after evaL:fn(sv_15)
[mman] MV:after evaE:sbrk(0)
[mman] DW:do_assign,
[mman] MV:do_assign: fn(sv_15):=sbrk(0) (SHAPE)
[mman] MV:eshape mutate
[mman] MV:eshape mutate done, old esh.seid:3
[mman] 0, 3.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; memleft=0; c15__csz=0; c12__csz=0;
                         frhd>=0; __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:79
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[_heapstart.ptr]
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] to: frhd:=fn(_heapstart)
[mman] MV:after evaL:sv_18
[mman] MV:after evaE:sv_14
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (14)c12__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:3
[mman] 0, 3.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; memleft=0; c15__csz=0; c12__csz=0;
                         frhd>=0; __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:80
[mman] ASY:transform_lval2var: frhd->ptr
[mman] transform_assign: fn(frhd):=__hole[(struct hdr *)0]
[mman] build cast(4) of (4)
[mman] to: fn(frhd):=0
[mman] MV:after evaL:fn(sv_14)
[mman] MV:after evaE:0
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign,
[mman] 0, 3.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; memleft=0; c15__csz=0; c14__fn=0;
                         c12__csz=0; frhd>=0; __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:81
[mman] ASY:transform_lval2var: frhd->size
[mman] transform_assign: csz(frhd):=(__hole * 8)[(unsigned int)((char *)_heapend.ptr - (char *)_heapstart.ptr) / sizeof(HEADER)]
[mman] replace_vinfo _heapend/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: csz(frhd):=(((fn(_heapend) - fn(_heapstart)) / 8) * 8)
[mman] MV:after evaL:csz(sv_14)
[mman] MV:after evaE:(((sv_17 - sv_14) / 8) * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign,
[mman] 0, 3.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; memleft=0; c15__csz=0; c14__fn=0;
                         c12__csz=0; -c14__csz+65368>=0; frhd>=0; c14__csz-65352>=0;
                         __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:82
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
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:100
[mman] compute_fun_aux done 
       {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|] 
       ....
[mman] DF:ret_callee: {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|]
[mman] DF:ret_call: laInit(...) 
        DF:{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (15)_heapend |-> (15)_heapend,
        
       heap list 
       [(12)_heapstart::(15)_heapend::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|-__hli+__hst=0; memleft=0; c15__fn=0; c15__csz=0;
                         c12__fn=0; c12__csz=0; p1>=0; man>=0; frhd>=0; __retres>=0;
                         __hli>=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|]
[mman] MEV:Unify penvs 3, 0
[mman] unified penv_3 = (4,[23] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)isfree;	(12)_heapstart;	(13)c12__csz;	(14)c12__fn;
       	(15)_heapend;	(16)c15__csz;	(17)c15__fn;	(18)frhd;	(19)memleft;
       	(20)man;	(21)p1;	(22)__retres;} )
[mman] DF:eid_common 3
[mman] MV:forget vars ...
[mman] DW:forget _heapstart,... in
        {seid:0, peid:3}[|-__hli+__hst=0; memleft=0; c15__fn=0; c15__csz=0;
                         c12__fn=0; c12__csz=0; p1>=0; man>=0; frhd>=0; __retres>=0;
                         __hli>=0|]
[mman] MV:change_env...
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:3,peid:0)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:env2apron: 
        seid_4 -> [4]
       [0> __fc_fds:int 1> __fc_fopen:int 2> __fc_time:int 3> __fc_time_tm:int 4> __hli:int 5> __hole:int 6> __hst:int 7> __l5:int 8> __null:int 9> __p_fc_fopen:int 10> __p_fc_time_tm:int 11> __retres:int 12> __s32:int 13> _heapend:int 14> _heapstart:int 15> c12__csz:int 16> c12__fn:int 17> c14__csz:int 18> c14__fn:int 19> c15__csz:int 20> c15__fn:int 21> frhd:int 22> isfree:int 23> man:int 24> memleft:int 25> p1:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] MV:change_env...
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|]
[mman] DF:transfer_stmt_main: sid:86
[mman] ASY:transform_lval2var: man
[mman] transform_assign: man:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: man:=0
[mman] MV:after evaL:sv_20
[mman] MV:after evaE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:4
[mman] 3, 4.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:4,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (20)man |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:87
[mman] DF:function called: laAlloc'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_20((20)f1677_nbytes)/25 -> pvar_23
[mman] old pvar_21((21)nxt)/25 -> pvar_24
[mman] old pvar_22((22)prev)/25 -> pvar_25
[mman] old pvar_23((23)nunits)/25 -> pvar_26
[mman] unified penv_5 = (1,[27] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)isfree;	(12)_heapstart;	(13)c12__csz;	(14)c12__fn;
       	(15)_heapend;	(16)c15__csz;	(17)c15__fn;	(18)frhd;	(19)memleft;
       	(20)man;	(21)p1;	(22)__retres;	(23)f1677_nbytes;	(24)nxt;
       	(25)prev;	(26)nunits;} )
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:env2apron: 
        seid_5 -> [5]
       [0> __fc_fds:int 1> __fc_fopen:int 2> __fc_time:int 3> __fc_time_tm:int 4> __hli:int 5> __hole:int 6> __hst:int 7> __l5:int 8> __null:int 9> __p_fc_fopen:int 10> __p_fc_time_tm:int 11> __retres:int 12> __s32:int 13> _heapend:int 14> _heapstart:int 15> c12__csz:int 16> c12__fn:int 17> c14__csz:int 18> c14__fn:int 19> c15__csz:int 20> c15__fn:int 21> f1677_nbytes:int 22> frhd:int 23> isfree:int 24> man:int 25> memleft:int 26> nunits:int 27> nxt:int 28> p1:int 29> prev:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] MV:after evaL, None
[mman] MV:after evaE:20
[mman] DW:do_assign,
[mman] 5, 5.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:5}
       eshape: stack:(seid:5,peid:5) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (20)man |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:5, peid:5}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; f1677_nbytes-20=0; c15__csz=0;
                         c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; frhd>=0; c14__csz-8memleft>=0;
                         c14__csz-65352>=0; __hli-65360>=0|] 
       )
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:5)
[mman] MEV:senv_change_pe, new senv:(seid:6,peid:1)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:env2apron: 
        seid_6 -> [6]
       [0> __fc_fds:int 1> __fc_fopen:int 2> __fc_time:int 3> __fc_time_tm:int 4> __hli:int 5> __hole:int 6> __hst:int 7> __l5:int 8> __null:int 9> __p_fc_fopen:int 10> __p_fc_time_tm:int 11> __retres:int 12> __s32:int 13> _heapend:int 14> _heapstart:int 15> c12__csz:int 16> c12__fn:int 17> c14__csz:int 18> c14__fn:int 19> c15__csz:int 20> c15__fn:int 21> f1677_nbytes:int 22> frhd:int 23> isfree:int 24> memleft:int 25> nunits:int 26> nxt:int 27> prev:int]
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:nxt>=0
[mman] MV:constraints:prev>=0
[mman] MV:constraints:__retres>=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_21>=0
[mman] MSH:guard_one return constraint:sv_22>=0
[mman] MSH:guard_one return constraint:sv_24>=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_21>=0
[mman] MV:constraints returned from MSH:sv_22>=0
[mman] MV:constraints returned from MSH:sv_24>=0
[mman] MDW:meet_exp
[mman] MDW:const:nxt -_i,0 0 >= 0
[mman] MDW:const:prev -_i,0 0 >= 0
[mman] MDW:const:__retres -_i,0 0 >= 0
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:50: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; f1677_nbytes-20=0; c15__csz=0;
                         c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|]
[mman] DF:compute_fun_aux....
[mman] DF:transfer_stmt_main: sid:50
[mman] ASY:transform_lval2var: nunits
[mman] transform_assign: nunits:=__hole[(int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1)]
[mman] lval2exp: found nbytes
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: nunits:=((((nbytes + 8) - 1) / 8) + 1)
[mman] MV:after evaL, None
[mman] MV:after evaE:((((sv_20 + 8) - 1) / 8) + 1)
[mman] DW:do_assign,
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:51
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[(HEADER *)0]
[mman] build cast(4) of (4)
[mman] to: prev:=0
[mman] MV:after evaL:sv_22
[mman] MV:after evaE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:52
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[frhd]
[mman] lval2exp: found frhd
[mman] to: nxt:=frhd
[mman] MV:after evaL:sv_21
[mman] MV:after evaE:sv_14
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (14)c12__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:53
[mman] DF:transfer_stmt_main: sid:55
[mman] s.skind: If
[mman] transform guard nxt
[mman] transform guard: (HEADER *) nxt (op) 0
[mman] lval2exp: found nxt
[mman] to: (true)nxt!=0
       	  (false)nxt=0
[mman] MV:meet_exp....
[mman] MV:constraints:nxt=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_14=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:nxt!=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_14>0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_14>0
[mman] MDW:meet_exp
[mman] MDW:const:c12__fn -_i,0 0 > 0
[mman] MV:finish meet_exp.
[mman] DF:transfer_stmt_main: sid:57
[mman] DF:transfer_stmt_main: sid:59
[mman] s.skind: If
[mman] transform guard nxt->size >= (unsigned int)nunits
[mman] transform guard: (int) nxt->size (op) (unsigned int)nunits
[mman] replace_vinfo nxt/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo nxt/_heapstart in 8
[mman] replace_vinfo nxt/_heapstart in csz(_heapstart)
[mman] lval2exp: found nunits
[mman] build cast(4) of (4)
[mman] to: (true)(csz(nxt) / 8)>=nunits
       	  (false)(csz(nxt) / 8)>nunits
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_23
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_23
[mman] MDW:meet_exp
[mman] MDW:const:c14__csz /_i,0 8 -_i,0 nunits > 0
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_23
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_23
[mman] MDW:meet_exp
[mman] MDW:const:c14__csz /_i,0 8 -_i,0 nunits >= 0
[mman] MV:finish meet_exp.
[mman] DF:transfer_stmt_main: sid:73
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[nxt]
[mman] lval2exp: found nxt
[mman] to: prev:=nxt
[mman] MV:after evaL:sv_22
[mman] MV:after evaE:sv_14
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (14)c12__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:74
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt->ptr]
[mman] replace_vinfo nxt/_heapstart in fn(_heapstart)
[mman] to: nxt:=fn(nxt)
[mman] MV:after evaL:sv_21
[mman] MV:after evaE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c14__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (31)c14__fn,
        (22)prev |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] DF:transfer_stmt_main: sid:53
[mman] DF:transfer_stmt_main: sid:61
[mman] s.skind: If
[mman] transform guard nxt->size > (unsigned int)nunits
[mman] transform guard: (int) nxt->size (op) (unsigned int)nunits
[mman] replace_vinfo nxt/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo nxt/_heapstart in 8
[mman] replace_vinfo nxt/_heapstart in csz(_heapstart)
[mman] lval2exp: found nunits
[mman] build cast(4) of (4)
[mman] to: (true)(csz(nxt) / 8)>nunits
       	  (false)(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_23
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_23
[mman] MDW:meet_exp
[mman] MDW:const:c14__csz /_i,0 8 -_i,0 nunits >= 0
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_23
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_23
[mman] MDW:meet_exp
[mman] MDW:const:c14__csz /_i,0 8 -_i,0 nunits > 0
[mman] MV:finish meet_exp.
[mman] DF:transfer_stmt_main: sid:62
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[nxt->size - (unsigned int)nunits]
[mman] replace_vinfo nxt/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo nxt/_heapstart in 8
[mman] replace_vinfo nxt/_heapstart in csz(_heapstart)
[mman] lval2exp: found nunits
[mman] build cast(4) of (4)
[mman] to: csz(nxt):=(((csz(nxt) / 8) - nunits) * 8)
[mman] MV:after evaL:csz(sv_14)
[mman] MV:after evaE:(((sv_30 / 8) - sv_23) * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign,
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65336>=0;
                         -c14__csz+8memleft-24>=0; -memleft+8171>=0; prev>=0;
                         nxt>=0; memleft-8168>=0; frhd>=0; c14__csz-8memleft+40>=0;
                         c14__csz-65312>=0; __retres>=0; __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:66
[mman] s.skind: If
[mman] transform guard prev == (HEADER *)0
[mman] transform guard: (int) prev (op) (HEADER *)0
[mman] lval2exp: found prev
[mman] build cast(4) of (4)
[mman] to: (true)prev=0
       	  (false)prev!=0
[mman] MV:meet_exp....
[mman] MV:constraints:prev!=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:false
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:prev=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:0=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:0=0
[mman] MDW:meet_exp
[mman] MDW:const:0 -_i,0 0 = 0
[mman] MV:finish meet_exp.
[mman] DF:transfer_stmt_main: sid:63
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt + nxt->size]
[mman] lval2exp: found nxt
[mman] replace_vinfo nxt/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo nxt/_heapstart in 8
[mman] replace_vinfo nxt/_heapstart in csz(_heapstart)
[mman] to: nxt:=(nxt + ((csz(nxt) / 8) * 8))
[mman] MV:after evaL:sv_21
[mman] MV:after evaE:(sv_14 + ((sv_30 / 8) * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_14)*Blk(32)...
[mman] Atom:Chd(sv_14)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (33)__s33,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] DW:env2apron: 
        seid_9 -> [7]
       [0> __fc_fds:int 1> __fc_fopen:int 2> __fc_time:int 3> __fc_time_tm:int 4> __hli:int 5> __hole:int 6> __hst:int 7> __l5:int 8> __null:int 9> __p_fc_fopen:int 10> __p_fc_time_tm:int 11> __retres:int 12> __s32:int 13> __s33:int 14> __s36:int 15> _heapend:int 16> _heapstart:int 17> c12__csz:int 18> c12__fn:int 19> c14__csz:int 20> c14__fn:int 21> c15__csz:int 22> c15__fn:int 23> c33__csz:int 24> c33__fn:int 25> f1677_nbytes:int 26> frhd:int 27> isfree:int 28> memleft:int 29> nunits:int 30> nxt:int 31> prev:int]
[mman] DW: emvironment changed
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65336>=0;
                         -c14__csz+8memleft-24>=0; -memleft+8171>=0; prev>=0;
                         nxt>=0; memleft-8168>=0; frhd>=0; c14__csz-8memleft+40>=0;
                         c14__csz-65312>=0; __retres>=0; __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:67
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[nxt->ptr]
[mman] replace_vinfo nxt/_heapstart in fn(_heapstart)
[mman] to: frhd:=fn(nxt)
[mman] MV:after evaL:sv_18
[mman] MV:after evaE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c14__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:64
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[(unsigned int)nunits]
[mman] lval2exp: found nunits
[mman] build cast(4) of (4)
[mman] to: csz(nxt):=(nunits * 8)
[mman] MV:after evaL:csz(sv_14)
[mman] MV:after evaE:(sv_23 * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign,
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c14__csz-32=0; c12__csz=0;
                         -memleft+8171>=0; prev>=0; nxt>=0; memleft-8168>=0;
                         frhd>=0; __retres>=0; __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] DF:transfer_stmt_main: sid:69
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)((int)memleft - nunits)]
[mman] lval2exp: found memleft
[mman] build cast(4) of (4)
[mman] lval2exp: found nunits
[mman] build cast(2) of (2)
[mman] to: memleft:=(memleft - nunits)
[mman] MV:after evaL, None
[mman] MV:after evaE:(sv_19 - sv_23)
[mman] DW:do_assign,
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:71
[mman] ASY:transform_lval2var: __retres
[mman] transform_assign: __retres:=__hole[(void *)(nxt + 1)]
[mman] lval2exp: found nxt
[mman] build cast(4) of (4)
[mman] to: __retres:=(nxt + (1 * 8))
[mman] MV:after evaL:sv_24
[mman] MV:after evaE:(sv_14 + (1 * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_14)*Blk(32)...
[mman] Atom:Chd(sv_14)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (33)__s33,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:97
[mman] DF:transfer_stmt_main: sid:98
[mman] compute_fun_aux done 
       {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       ....
[mman] DF:ret_callee: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] DF:ret_call: laAlloc(...) 
        DF:{peid:3}
       eshape: stack:(seid:4,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (20)man |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_20((20)f1677_nbytes)/25 -> pvar_23
[mman] old pvar_21((21)nxt)/25 -> pvar_24
[mman] old pvar_22((22)prev)/25 -> pvar_25
[mman] old pvar_23((23)nunits)/25 -> pvar_26
[mman] unified penv_5 = (2,[27] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)isfree;	(12)_heapstart;	(13)c12__csz;	(14)c12__fn;
       	(15)_heapend;	(16)c15__csz;	(17)c15__fn;	(18)frhd;	(19)memleft;
       	(20)man;	(21)p1;	(22)__retres;	(23)f1677_nbytes;	(24)nxt;
       	(25)prev;	(26)nunits;} )
[mman] DF:eid_common 5
[mman] MV:forget vars ...
[mman] DW:forget _heapstart,... in
        {seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:assign callee __retres to unused _hole...
[mman] MV:after evaL:sv_1
[mman] MV:after evaE:sv_14
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (14)c12__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (1)__hole |-> (14)c12__fn,
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       )
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:6,peid:1)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:5)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] ASY:transform_lval2var: p1
[mman] transform_assign: p1:=__hole[__hole]
[mman] lval2exp: found __hole
[mman] to: p1:=__hole
[mman] MV:after evaL:sv_21
[mman] MV:after evaE:sv_1
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (1)__hole
[mman] MV:eshape mutate done, old esh.seid:4
[mman] 3, 4.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (14)c12__fn,
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)p1 |-> (14)c12__fn,
        (22)__retres |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+40>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __hli-65361>=0|] 
       )
[mman] MV:forget vars ...
[mman] DW:forget __hole,... in
        {seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+40>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __hli-65361>=0|]
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (14)c12__fn,
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)p1 |-> (14)c12__fn,
        (22)__retres |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+40>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __hli-65361>=0|]
[mman] DF:transfer_stmt_main: sid:88
[mman] DF:function called: laAlloc'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+40>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __hli-65361>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_20((20)f1677_nbytes)/25 -> pvar_23
[mman] old pvar_21((21)nxt)/25 -> pvar_24
[mman] old pvar_22((22)prev)/25 -> pvar_25
[mman] old pvar_23((23)nunits)/25 -> pvar_26
[mman] unified penv_5 = (3,[27] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)isfree;	(12)_heapstart;	(13)c12__csz;	(14)c12__fn;
       	(15)_heapend;	(16)c15__csz;	(17)c15__fn;	(18)frhd;	(19)memleft;
       	(20)man;	(21)p1;	(22)__retres;	(23)f1677_nbytes;	(24)nxt;
       	(25)prev;	(26)nunits;} )
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] MV:after evaL, None
[mman] MV:after evaE:20
[mman] DW:do_assign,
[mman] 5, 5.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:5}
       eshape: stack:(seid:5,peid:5) 
        (1)__hole |-> (14)c12__fn,
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)p1 |-> (14)c12__fn,
        (22)__retres |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:5, peid:5}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; f1677_nbytes-20=0; c15__csz=0;
                         c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; frhd>=0; c14__csz-8memleft-32>=0;
                         c14__csz-65352>=0; __hli-65361>=0|] 
       )
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:5)
[mman] MEV:senv_change_pe, new senv:(seid:6,peid:1)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:nxt>=0
[mman] MV:constraints:prev>=0
[mman] MV:constraints:__retres>=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_21>=0
[mman] MSH:guard_one return constraint:0>=0
[mman] MSH:guard_one return constraint:sv_24>=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_21>=0
[mman] MV:constraints returned from MSH:0>=0
[mman] MV:constraints returned from MSH:sv_24>=0
[mman] MDW:meet_exp
[mman] MDW:const:nxt -_i,0 0 >= 0
[mman] MDW:const:0 -_i,0 0 >= 0
[mman] MDW:const:__retres -_i,0 0 >= 0
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:50: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (1)__hole |-> (14)c12__fn,
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; f1677_nbytes-20=0; c15__csz=0;
                         c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] DF:compute_fun_aux....
[mman] DF:transfer_stmt_main: sid:50
[mman] ASY:transform_lval2var: nunits
[mman] transform_assign: nunits:=__hole[(int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1)]
[mman] to: nunits:=((((nbytes + 8) - 1) / 8) + 1)
[mman] MV:after evaL, None
[mman] MV:after evaE:((((sv_20 + 8) - 1) / 8) + 1)
[mman] DW:do_assign,
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:51
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[(HEADER *)0]
[mman] to: prev:=0
[mman] MV:after evaL:sv_22
[mman] MV:after evaE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:52
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[frhd]
[mman] to: nxt:=frhd
[mman] MV:after evaL:sv_21
[mman] MV:after evaE:sv_14
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (14)c12__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:53
[mman] DF:transfer_stmt_main: sid:55
[mman] s.skind: If
[mman] transform guard nxt
[mman] MV:meet_exp....
[mman] MV:constraints:nxt=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_14=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:nxt!=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_14>0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_14>0
[mman] MDW:meet_exp
[mman] MDW:const:c12__fn -_i,0 0 > 0
[mman] MV:finish meet_exp.
[mman] DF:transfer_stmt_main: sid:57
[mman] DF:transfer_stmt_main: sid:59
[mman] s.skind: If
[mman] transform guard nxt->size >= (unsigned int)nunits
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_23
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_23
[mman] MDW:meet_exp
[mman] MDW:const:c14__csz /_i,0 8 -_i,0 nunits > 0
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_23
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_23
[mman] MDW:meet_exp
[mman] MDW:const:c14__csz /_i,0 8 -_i,0 nunits >= 0
[mman] MV:finish meet_exp.
[mman] DF:transfer_stmt_main: sid:73
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[nxt]
[mman] to: prev:=nxt
[mman] MV:after evaL:sv_22
[mman] MV:after evaE:sv_14
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (14)c12__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:74
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt->ptr]
[mman] to: nxt:=fn(nxt)
[mman] MV:after evaL:sv_21
[mman] MV:after evaE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c14__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (31)c14__fn,
        (22)prev |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] DF:transfer_stmt_main: sid:53
[mman] DF:transfer_stmt_main: sid:61
[mman] s.skind: If
[mman] transform guard nxt->size > (unsigned int)nunits
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_23
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_23
[mman] MDW:meet_exp
[mman] MDW:const:c14__csz /_i,0 8 -_i,0 nunits >= 0
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_23
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_23
[mman] MDW:meet_exp
[mman] MDW:const:c14__csz /_i,0 8 -_i,0 nunits > 0
[mman] MV:finish meet_exp.
[mman] DF:transfer_stmt_main: sid:62
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[nxt->size - (unsigned int)nunits]
[mman] to: csz(nxt):=(((csz(nxt) / 8) - nunits) * 8)
[mman] MV:after evaL:csz(sv_14)
[mman] MV:after evaE:(((sv_30 / 8) - sv_23) * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign,
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65336>=0;
                         -c14__csz+8memleft-24>=0; -memleft+8171>=0; prev>=0;
                         nxt>=0; memleft-8168>=0; frhd>=0; c14__csz-8memleft+40>=0;
                         c14__csz-65312>=0; __retres>=0; __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:66
[mman] s.skind: If
[mman] transform guard prev == (HEADER *)0
[mman] MV:meet_exp....
[mman] MV:constraints:prev!=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:false
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:prev=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:0=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:0=0
[mman] MDW:meet_exp
[mman] MDW:const:0 -_i,0 0 = 0
[mman] MV:finish meet_exp.
[mman] DF:transfer_stmt_main: sid:63
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt + nxt->size]
[mman] to: nxt:=(nxt + ((csz(nxt) / 8) * 8))
[mman] MV:after evaL:sv_21
[mman] MV:after evaE:(sv_14 + ((sv_30 / 8) * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_14)*Blk(32)...
[mman] Atom:Chd(sv_14)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (33)__s33,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65336>=0;
                         -c14__csz+8memleft-24>=0; -memleft+8171>=0; prev>=0;
                         nxt>=0; memleft-8168>=0; frhd>=0; c14__csz-8memleft+40>=0;
                         c14__csz-65312>=0; __retres>=0; __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:67
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[nxt->ptr]
[mman] to: frhd:=fn(nxt)
[mman] MV:after evaL:sv_18
[mman] MV:after evaE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c14__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:64
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[(unsigned int)nunits]
[mman] to: csz(nxt):=(nunits * 8)
[mman] MV:after evaL:csz(sv_14)
[mman] MV:after evaE:(sv_23 * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign,
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c14__csz-32=0; c12__csz=0;
                         -memleft+8171>=0; prev>=0; nxt>=0; memleft-8168>=0;
                         frhd>=0; __retres>=0; __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] DF:transfer_stmt_main: sid:69
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)((int)memleft - nunits)]
[mman] to: memleft:=(memleft - nunits)
[mman] MV:after evaL, None
[mman] MV:after evaE:(sv_19 - sv_23)
[mman] DW:do_assign,
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:71
[mman] ASY:transform_lval2var: __retres
[mman] transform_assign: __retres:=__hole[(void *)(nxt + 1)]
[mman] to: __retres:=(nxt + (1 * 8))
[mman] MV:after evaL:sv_24
[mman] MV:after evaE:(sv_14 + (1 * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_14)*Blk(32)...
[mman] Atom:Chd(sv_14)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (33)__s33,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] 1, 6.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:97
[mman] DF:transfer_stmt_main: sid:98
[mman] compute_fun_aux done 
       {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|] 
       ....
[mman] DF:ret_callee: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] DF:ret_call: laAlloc(...) 
        DF:{peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (14)c12__fn,
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)p1 |-> (14)c12__fn,
        (22)__retres |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+40>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __hli-65361>=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_20((20)f1677_nbytes)/25 -> pvar_23
[mman] old pvar_21((21)nxt)/25 -> pvar_24
[mman] old pvar_22((22)prev)/25 -> pvar_25
[mman] old pvar_23((23)nunits)/25 -> pvar_26
[mman] unified penv_5 = (4,[27] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)__fc_time;
       	(5)__fc_time_tm;	(6)__l5;	(7)__p_fc_time_tm;	(8)__fc_fds;	(9)__fc_fopen;
       	(10)__p_fc_fopen;	(11)isfree;	(12)_heapstart;	(13)c12__csz;	(14)c12__fn;
       	(15)_heapend;	(16)c15__csz;	(17)c15__fn;	(18)frhd;	(19)memleft;
       	(20)man;	(21)p1;	(22)__retres;	(23)f1677_nbytes;	(24)nxt;
       	(25)prev;	(26)nunits;} )
[mman] DF:eid_common 5
[mman] MV:forget vars ...
[mman] DW:forget _heapstart,... in
        {seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+40>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __hli-65361>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:forget callee only...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:6,peid:1)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:5)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW: emvironment changed
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)p1 |-> (14)c12__fn,
        (22)__retres |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+40>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __hli-65361>=0|]
[mman] DF:transfer_stmt_main: sid:89
[mman] ASY:transform_lval2var: __retres
[mman] transform_assign: __retres:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: __retres:=0
[mman] MV:after evaL:sv_22
[mman] MV:after evaE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:4
[mman] 3, 4.
[mman] MV:finish do_assign.
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:4,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)p1 |-> (14)c12__fn,
        (22)__retres |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+40>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __hli-65361>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:102
[mman] (sid:64): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65336>=0;
                         -c14__csz+8memleft-24>=0; -memleft+8171>=0; prev>=0;
                         nxt>=0; memleft-8168>=0; frhd>=0; c14__csz-8memleft+40>=0;
                         c14__csz-65312>=0; __retres>=0; __hli-65361>=0|]
[mman] (sid:97): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:98): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        (24)__retres |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:66): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:67): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:68): {peid:-1}
       Bot
[mman] (sid:100): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|]
[mman] (sid:69): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:102): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)p1 |-> (14)c12__fn,
        (22)__retres |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+40>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __hli-65361>=0|]
[mman] (sid:71): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+40>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:73): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:74): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:75): {peid:-1}
       Bot
[mman] (sid:77): {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (15)_heapend |-> (15)_heapend,
        
       heap list 
       [(12)_heapstart::(15)_heapend::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       emp,
        
        dwords:{seid:1, peid:0}[|-__hli+__hst=0; memleft=0; c15__fn=0; c15__csz=0;
                         c12__fn=0; c12__csz=0; frhd>=0; __hli>=0|]
[mman] (sid:78): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c12__fn+65360=0; -__hli+__hst+65360=0; memleft=0;
                         c15__fn=0; c15__csz=0; c12__csz=0; frhd>=0; __hli-65360>=0|]
[mman] (sid:79): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; memleft=0; c15__csz=0; c12__csz=0;
                         frhd>=0; __hli-65360>=0|]
[mman] (sid:80): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; memleft=0; c15__csz=0; c12__csz=0;
                         frhd>=0; __hli-65360>=0|]
[mman] (sid:81): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; memleft=0; c15__csz=0; c14__fn=0;
                         c12__csz=0; frhd>=0; __hli-65360>=0|]
[mman] (sid:50): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; f1677_nbytes-20=0; c15__csz=0;
                         c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|]
[mman] (sid:82): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:3, peid:0}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; memleft=0; c15__csz=0; c14__fn=0;
                         c12__csz=0; -c14__csz+65368>=0; frhd>=0; c14__csz-65352>=0;
                         __hli-65360>=0|]
[mman] (sid:51): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|]
[mman] (sid:52): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|]
[mman] (sid:85): {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (15)_heapend |-> (15)_heapend,
        
       heap list 
       [(12)_heapstart::(15)_heapend::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       emp,
        
        dwords:{seid:0, peid:3}[|-__hli+__hst=0; memleft=0; c15__fn=0; c15__csz=0;
                         c12__fn=0; c12__csz=0; p1>=0; man>=0; frhd>=0; __retres>=0;
                         __hli>=0|]
[mman] (sid:53): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|]
[mman] (sid:86): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|]
[mman] (sid:87): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (20)man |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+8>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __hli-65360>=0|]
[mman] (sid:55): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65360>=0|]
[mman] (sid:88): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (14)c12__fn,
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)p1 |-> (14)c12__fn,
        (22)__retres |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+40>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __hli-65361>=0|]
[mman] (sid:56): {peid:-1}
       Bot
[mman] (sid:89): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (31)c14__fn,
        (21)p1 |-> (14)c12__fn,
        (22)__retres |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:4, peid:3}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; c15__csz=0; c14__fn=0; c12__csz=0;
                         -c14__csz+65368>=0; -c14__csz+8memleft+40>=0; frhd>=0;
                         c14__csz-8memleft-32>=0; c14__csz-65352>=0; __hli-65361>=0|]
[mman] (sid:57): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:59): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:61): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:62): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65368>=0;
                         -c14__csz+8memleft+8>=0; prev>=0; nxt>=0; frhd>=0;
                         c14__csz-8memleft>=0; c14__csz-65352>=0; __retres>=0;
                         __hli-65361>=0|]
[mman] (sid:63): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (12)_heapstart |-> (12)_heapstart,
        (14)c12__fn |-> (14)c12__fn,
        (15)_heapend |-> (15)_heapend,
        (17)c15__fn |-> (2)__hli,
        (18)frhd |-> (14)c12__fn,
        (21)nxt |-> (14)c12__fn,
        (22)prev |-> (0)__null,
        
       heap list 
       [(12)_heapstart::(15)_heapend::(14)c12__fn::(32)__s32::]
       atoms:
       chd((12)_heapstart)[csz:(13)c12__csz,fn:(14)c12__fn,]  * 
       chd((15)_heapend)[csz:(16)c15__csz,fn:(17)c15__fn,]  * 
       chd((14)c12__fn)[csz:(30)c14__csz,fn:(31)c14__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{seid:6, peid:1}[|-__hli+c15__fn=0; -__hli+c12__fn+65360=0;
                         -__hli+__hst+65360=0; nunits-4=0; f1677_nbytes-20=0;
                         c15__csz=0; c14__fn=0; c12__csz=0; -c14__csz+65336>=0;
                         -c14__csz+8memleft-24>=0; -memleft+8171>=0; prev>=0;
                         nxt>=0; memleft-8168>=0; frhd>=0; c14__csz-8memleft+40>=0;
                         c14__csz-65312>=0; __retres>=0; __hli-65361>=0|]
[mman] --------------------------------------------
[mman] Analysing 'minit'
[mman] --------------------------------------------
[mman] Analysing 'malloc'
[mman] --------------------------------------------
[mman] Analysing 'mfree'
[wp] Logging keys: .
