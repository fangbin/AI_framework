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
[mman] Add feature 'csz' for 'id:4'
[mman] Add feature 'fn' for 'id:4'
[mman] Add '_heapstart' of type HEADER (aka struct hdr)
[mman] Add feature 'csz' for 'id:7'
[mman] Add feature 'fn' for 'id:7'
[mman] Add '_heapend' of type HEADER (aka struct hdr)
[mman] Add feature 'csz' for 'id:10'
[mman] Add feature 'fn' for 'id:10'
[mman] Add 'frhd' of type HEADER * (aka struct hdr *)
[mman] Add 'memleft' of type short (aka short)
[mman] Initialize penv for 'laAlloc'
[mman] Add 'nbytes' of type int (aka int)
[mman] Add feature 'csz' for 'id:15'
[mman] Add feature 'fn' for 'id:15'
[mman] Add 'nxt' of type HEADER * (aka struct hdr *)
[mman] Add feature 'csz' for 'id:18'
[mman] Add feature 'fn' for 'id:18'
[mman] Add 'prev' of type HEADER * (aka struct hdr *)
[mman] Add 'nunits' of type int (aka int)
[mman] Add '__retres' of type void * (aka void *)
[mman] Initialize penv for 'laFree'
[mman] Add 'ap' of type void * (aka void *)
[mman] Add feature 'csz' for 'id:15'
[mman] Add feature 'fn' for 'id:15'
[mman] Add 'nxt' of type HEADER * (aka struct hdr *)
[mman] Add feature 'csz' for 'id:18'
[mman] Add feature 'fn' for 'id:18'
[mman] Add 'prev' of type HEADER * (aka struct hdr *)
[mman] Add feature 'csz' for 'id:21'
[mman] Add feature 'fn' for 'id:21'
[mman] Add 'f' of type HEADER * (aka struct hdr *)
[mman] Initialize penv for 'laInit'
[mman] Initialize penv for 'main'
[mman] Add 'man' of type void * (aka void *)
[mman] Add 'p1' of type void * (aka void *)
[mman] Add 'p2' of type void * (aka void *)
[mman] Add '__retres' of type int (aka int)
[mman] stmt2penvs:
       (1) s_1 (@line 50) -> e_2
       (1) s_2 (@line 51) -> e_2
       (1) s_4 (@line 55) -> e_2
       (1) s_5 (@line 59) -> e_2
       (1) s_6 (@line 60) -> e_2
       (1) s_7 (@line 61) -> e_2
       (1) s_9 (@line 64) -> e_2
       (1) s_10 (@line 65) -> e_2
       (1) s_11 (@line 66) -> e_2
       (1) s_12 (@line 68) -> e_2
       (1) s_15 (@line 77) -> e_2
       (1) s_16 (@line 77) -> e_2
       (1) s_17 (@line 77) -> e_2
       (1) s_19 (@line 77) -> e_2
       (1) s_21 (@line 77) -> e_2
       (1) s_22 (@line 77) -> e_2
       (1) s_23 (@line 77) -> e_2
       (1) s_24 (@line 78) -> e_2
       (1) s_26 (@line 78) -> e_2
       (1) s_27 (@line 79) -> e_2
       (1) s_28 (@line 80) -> e_2
       (1) s_30 (@line 81) -> e_2
       (1) s_31 (@line 90) -> e_2
       (1) s_32 (@line 91) -> e_2
       (1) s_36 (@line 77) -> e_2
       (1) s_37 (@line 77) -> e_2
       (1) s_38 (@line 104) -> e_2
       (1) s_39 (@line 106) -> e_2
       (1) s_41 (@line 107) -> e_2
       (1) s_42 (@line 108) -> e_2
       (1) s_43 (@line 109) -> e_2
       (1) s_44 (@line 111) -> e_2
       (1) s_47 (@line 122) -> e_1
       (1) s_48 (@line 134) -> e_1
       (1) s_49 (@line 134) -> e_1
       (1) s_50 (@line 134) -> e_1
       (1) s_52 (@line 134) -> e_1
       (1) s_53 (@line 134) -> e_1
       (1) s_54 (@line 135) -> e_1
       (1) s_56 (@line 135) -> e_1
       (1) s_58 (@line 136) -> e_1
       (1) s_59 (@line 137) -> e_1
       (1) s_60 (@line 138) -> e_1
       (1) s_61 (@line 139) -> e_1
       (1) s_63 (@line 141) -> e_1
       (1) s_64 (@line 142) -> e_1
       (1) s_65 (@line 144) -> e_1
       (1) s_66 (@line 146) -> e_1
       (1) s_68 (@line 151) -> e_1
       (1) s_70 (@line 134) -> e_1
       (1) s_71 (@line 134) -> e_1
       (1) s_72 (@line 161) -> e_1
       (1) s_73 (@line 162) -> e_1
       (1) s_75 (@line 171) -> e_0
       (1) s_76 (@line 172) -> e_0
       (1) s_77 (@line 175) -> e_0
       (1) s_78 (@line 176) -> e_0
       (1) s_79 (@line 178) -> e_0
       (1) s_80 (@line 179) -> e_0
       (1) s_83 (@line 8) -> e_3
       (1) s_84 (@line 8) -> e_3
       (1) s_85 (@line 9) -> e_3
       (1) s_86 (@line 10) -> e_3
       (1) s_87 (@line 11) -> e_3
       (1) s_88 (@line 12) -> e_3
       (1) s_89 (@line 13) -> e_3
       (1) s_90 (@line 14) -> e_3
       (1) s_91 (@line 15) -> e_3
       (1) s_93 (@line 69) -> e_2
       (1) s_94 (@line 93) -> e_2
       (1) s_95 (@line 112) -> e_2
       (1) s_97 (@line 151) -> e_1
       (1) s_98 (@line 162) -> e_1
       (1) s_100 (@line 181) -> e_0
       (1) s_102 (@line 15) -> e_3
[mman] penvs:
       penv_0 = (2,[14] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)pfrhd;	(11)c10__csz;	(12)c10__fn;	(13)imemleft;} )
       penv_1 = (2,[23] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)pfrhd;	(11)c10__csz;	(12)c10__fn;	(13)imemleft;	(14)f1673_inbytes;
       	(15)pnxt;	(16)c15__csz;	(17)c15__fn;	(18)pprev;	(19)c18__csz;
       	(20)c18__fn;	(21)inunits;	(22)p__retres;} )
       penv_2 = (2,[24] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)pfrhd;	(11)c10__csz;	(12)c10__fn;	(13)imemleft;	(14)f1667_pap;
       	(15)pnxt;	(16)c15__csz;	(17)c15__fn;	(18)pprev;	(19)c18__csz;
       	(20)c18__fn;	(21)pf;	(22)c21__csz;	(23)c21__fn;} )
       penv_3 = (2,[18] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)pfrhd;	(11)c10__csz;	(12)c10__fn;	(13)imemleft;	(14)pman;
       	(15)pp1;	(16)pp2;	(17)i__retres;} )
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] --------------------------------------------
[mman] DF:Computing initial state
[mman] DF:Initial_state_stmt (sid:83,/* sid:83 */
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
[mman] ASY: fn(_heapstart)csz(_heapstart)fn(_heapend)csz(_heapend) := 0000 
        meet constriants:frhd>=0sv_2>=0(sv_2 - sv_3)=0
[mman] initialization done
       --------------
[mman] DF:Computing global values
[mman] MV:init_globals, peid:3
[mman] MV:initialize shape...
[mman] MEV:initialise symbolic environment, seid:0
[mman] ENV:get list of symbolic variables and program variables eid: 0,
[mman] DW:env2apron: 
        seid_0 -> [1]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c10__csz:int 7> c10__fn:int 8> c4__csz:int 9> c4__fn:int 10> c7__csz:int 11> c7__fn:int 12> i__retres:int 13> imemleft:int 14> pfrhd:int 15> pman:int 16> pp1:int 17> pp2:int]
[mman] DW:do_assign: c4__fn:=0 (DW)
[mman] DW:do_assign: c4__csz:=0 (DW)
[mman] DW:do_assign: c7__fn:=0 (DW)
[mman] DW:do_assign: c7__csz:=0 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_0}[|c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0|] 
       )
[mman] MV:meet_exp....
[mman] MV:constraints:frhd>=0
[mman] MV:constraints:sv_2>=0
[mman] MV:constraints:(sv_2 - sv_3)=0
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_10>=0
[mman] MSH:guard_one return constraint:sv_2>=0
[mman] MSH:guard_one return constraint:(sv_2 - sv_3)=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_10>=0
[mman] MV:constraints returned from MSH:sv_2>=0
[mman] MV:constraints returned from MSH:(sv_2 - sv_3)=0
[mman] DW:meet_exp....(ei:0),d.eid:0
[mman] DW:const:pfrhd -_i,0 0 >= 0
[mman] DW:const:__hli -_i,0 0 >= 0
[mman] DW:const:__hli -_i,0 __hst -_i,0 0 = 0
[mman] after meep constraints:
       {eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pfrhd>=0;
                __hli>=0|]
[mman] MV:finish meet_exp.
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:man>=0
[mman] MV:constraints:p1>=0
[mman] MV:constraints:p2>=0
[mman] MV:meet_exp_one, peid:0, esh.seid:0....
[mman] MSH:do guard, seid:0...
[mman] MSH:guard_one return constraint:sv_14>=0
[mman] MSH:guard_one return constraint:sv_15>=0
[mman] MSH:guard_one return constraint:sv_16>=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_14>=0
[mman] MV:constraints returned from MSH:sv_15>=0
[mman] MV:constraints returned from MSH:sv_16>=0
[mman] DW:meet_exp....(ei:0),d.eid:0
[mman] DW:const:pman -_i,0 0 >= 0
[mman] DW:const:pp1 -_i,0 0 >= 0
[mman] DW:const:pp2 -_i,0 0 >= 0
[mman] after meep constraints:
       {eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pp2>=0;
                pp1>=0; pman>=0; pfrhd>=0; __hli>=0|]
[mman] MV:finish meet_exp.
[mman] DF:compute_from_entry_point, initial_state: {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pp2>=0;
                pp1>=0; pman>=0; pfrhd>=0; __hli>=0|]
[mman] ==============
       DF:transfer_stmt_main: sid:83
[mman] DF:function called: laInit'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pp2>=0;
                pp1>=0; pman>=0; pfrhd>=0; __hli>=0|]
[mman] MEV:Unify penvs 3, 0
[mman] MV:change_env...
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:0,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:1,peid:0)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] ENV:get list of symbolic variables and program variables eid: 1,
[mman] DW:env2apron: 
        seid_1 -> [2]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c10__csz:int 7> c10__fn:int 8> c4__csz:int 9> c4__fn:int 10> c7__csz:int 11> c7__fn:int 12> imemleft:int 13> pfrhd:int]
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:meet_exp_one, peid:1, esh.seid:1....
[mman] MSH:do guard, seid:1...
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH are empty.
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:75: {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pfrhd>=0;
                __hli>=0|]
[mman] DF:compute_fun_aux....
[mman] ==============
       DF:transfer_stmt_main: sid:75
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:75 */
                         _heapstart.ptr = (struct hdr *)sbrk(65360);
[mman] ASY:transform_lval2var: _heapstart.ptr
[mman] ASY:transform_sbrk: fn(_heapstart):=__hole[sbrk(65360)] (SHAPE)
[mman] to: fn(_heapstart):=sbrk(65360) (SHAPE)
[mman] ASY:transform_lval2var: _heapstart.ptr
[mman] ASY:transform_sbrk: fn(_heapstart):=__hole[sbrk(65360)] (DW)
[mman] to: fn(_heapstart):=__hli (DW)
[mman] to: __hli:=(__hli + 65360) (DW)
[mman] MV:do_assign: fn(_heapstart):=sbrk(65360), peid:0
[mman] MV: fn(_heapstart) := sbrk(65360)
[mman] MV: fn(_heapstart) := __hli (DW)
[mman] MV: __hli := (__hli + 65360) (DW)
[mman] MV:after evaL:fn(sv_4)
[mman] MV:after evalE:sbrk(65360)
[mman] MV:do_assign (DW)
[mman] DW:do_assign: c4__fn:=__hli (DW)
[mman] DW:do_assign: __hli:=__hli +_i,0 65360 (DW)
[mman] MV:do_assign: fn(sv_4):=sbrk(65360) (SHAPE)
[mman] MV:eshape mutate
[mman] MSH:Add feature 'csz' for 'id:6'
[mman] MSH:Add feature 'fn' for 'id:6'
[mman] new svar added vi.id32
[mman] MV:eshape mutate done, old esh.seid:1
[mman] DW:change_env...
[mman] ENV:get list of symbolic variables and program variables eid: 3,
[mman] DW:env2apron: 
        seid_3 -> [3]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> __s32:int 5> _heapend:int 6> _heapstart:int 7> c10__csz:int 8> c10__fn:int 9> c4__csz:int 10> c4__fn:int 11> c6__csz:int 12> c6__fn:int 13> c7__csz:int 14> c7__fn:int 15> imemleft:int 16> pfrhd:int]
[mman] DW:emvironment changed
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c4__fn+65360=0; -__hli+__hst+65360=0; c7__fn=0; c7__csz=0;
                c4__csz=0; pfrhd>=0; __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:76
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:76 */
                         _heapend.ptr = (struct hdr *)sbrk(0);
[mman] ASY:transform_lval2var: _heapend.ptr
[mman] ASY:transform_sbrk: fn(_heapend):=__hole[sbrk(0)] (SHAPE)
[mman] to: fn(_heapend):=sbrk(0) (SHAPE)
[mman] ASY:transform_lval2var: _heapend.ptr
[mman] ASY:transform_sbrk: fn(_heapend):=__hole[sbrk(0)] (DW)
[mman] to: fn(_heapend):=__hli (DW)
[mman] to: __hli:=(__hli + 0) (DW)
[mman] MV:do_assign: fn(_heapend):=sbrk(0), peid:0
[mman] MV: fn(_heapend) := sbrk(0)
[mman] MV: fn(_heapend) := __hli (DW)
[mman] MV: __hli := (__hli + 0) (DW)
[mman] MV:after evaL:fn(sv_7)
[mman] MV:after evalE:sbrk(0)
[mman] MV:do_assign (DW)
[mman] DW:do_assign: c7__fn:=__hli (DW)
[mman] DW:do_assign: __hli:=__hli +_i,0 0 (DW)
[mman] MV:do_assign: fn(sv_7):=sbrk(0) (SHAPE)
[mman] MV:eshape mutate
[mman] MV:eshape mutate done, old esh.seid:3
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c4__csz=0; pfrhd>=0; __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:77
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[_heapstart.ptr]
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] to: frhd:=fn(_heapstart)
[mman] MV:do_assign: frhd:=fn(_heapstart), peid:0
[mman] MV: frhd := fn(_heapstart)
[mman] MV: frhd := fn(_heapstart) (DW)
[mman] MV:after evaL:sv_10
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:3
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c4__csz=0; pfrhd>=0; __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:78
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: frhd->ptr
[mman] transform_assign: fn(frhd):=__hole[(struct hdr *)0]
[mman] build cast(4) of (4)
[mman] to: fn(frhd):=0
[mman] MV:do_assign: fn(frhd):=0, peid:0
[mman] MV: fn(frhd) := 0
[mman] MV: fn(frhd) := 0 (DW)
[mman] MV:after evaL:fn(sv_6)
[mman] MV:after evalE:0
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign: c6__fn:=0 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; pfrhd>=0; __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:79
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: frhd->size
[mman] transform_assign: csz(frhd):=(__hole * 8)[(unsigned int)((char *)_heapend.ptr - (char *)_heapstart.ptr) / sizeof(HEADER)]
[mman] replace_vinfo _heapend/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: csz(frhd):=(((fn(_heapend) - fn(_heapstart)) / 8) * 8)
[mman] MV:do_assign: csz(frhd):=(((fn(_heapend) - fn(_heapstart)) / 8) * 8), peid:0
[mman] MV: csz(frhd) := (((fn(_heapend) - fn(_heapstart)) / 8) * 8)
[mman] MV: csz(frhd) := (((fn(_heapend) - fn(_heapstart)) / 8) * 8) (DW)
[mman] MV:after evaL:csz(sv_6)
[mman] MV:after evalE:(((sv_9 - sv_6) / 8) * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign: c6__csz:=(c7__fn -_i,0 c4__fn) /_i,0 8 *_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0; pfrhd>=0;
                c6__csz-65352>=0; __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:80
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)frhd->size]
[mman] replace_vinfo frhd/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo frhd/_heapstart in 8
[mman] replace_vinfo frhd/_heapstart in csz(_heapstart)
[mman] build cast(2) of (2)
[mman] to: memleft:=(csz(frhd) / 8)
[mman] MV:do_assign: memleft:=(csz(frhd) / 8), peid:0
[mman] MV: memleft := (csz(frhd) / 8)
[mman] MV: memleft := (csz(frhd) / 8) (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:(sv_30 / 8)
[mman] MV:do assginment on data, dw.eid:3...
[mman] MV:do assginment on data memleft := (sv_30 / 8) (DW)
[mman] DW:do_assign: imemleft:=c6__csz /_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:100
[mman] compute_fun_aux done 
       {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|] 
       ....
[mman] DF:ret_callee: {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|]
[mman] DF:ret_call: laInit(...) 
        DF:{peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pp2>=0;
                pp1>=0; pman>=0; pfrhd>=0; __hli>=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|]
[mman] MEV:Unify penvs 3, 0
[mman] DF:eid_common 3
[mman] MV:forget vars ...
[mman] DW:forget memleft,... in
        {eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pp2>=0;
                pp1>=0; pman>=0; pfrhd>=0; __hli>=0|]
[mman] MV:change_env...
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:3,peid:0)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] ENV:get list of symbolic variables and program variables eid: 4,
[mman] DW:env2apron: 
        seid_4 -> [4]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> __s32:int 5> _heapend:int 6> _heapstart:int 7> c10__csz:int 8> c10__fn:int 9> c4__csz:int 10> c4__fn:int 11> c6__csz:int 12> c6__fn:int 13> c7__csz:int 14> c7__fn:int 15> i__retres:int 16> imemleft:int 17> pfrhd:int 18> pman:int 19> pp1:int 20> pp2:int]
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:change_env...
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|]
[mman] ==============
       DF:transfer_stmt_main: sid:84
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: man
[mman] transform_assign: man:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: man:=0
[mman] MV:do_assign: man:=0, peid:3
[mman] MV: man := 0
[mman] MV: man := 0 (DW)
[mman] MV:after evaL:sv_14
[mman] MV:after evalE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:4
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (14)pman |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:85
[mman] DF:function called: laAlloc'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_14((14)f1673_inbytes)/23 -> pvar_18
[mman] old pvar_15((15)pnxt)/23 -> pvar_19
[mman] old pvar_18((18)pprev)/23 -> pvar_20
[mman] old pvar_21((21)inunits)/23 -> pvar_21
[mman] old pvar_22((22)p__retres)/23 -> pvar_22
[mman] old lvar_16/23 -> lvar_23
[mman] old lvar_17/23 -> lvar_24
[mman] old lvar_19/23 -> lvar_25
[mman] old lvar_20/23 -> lvar_26
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] ENV:get list of symbolic variables and program variables eid: 5,
[mman] DW:env2apron: 
        seid_5 -> [5]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> __s32:int 5> _heapend:int 6> _heapstart:int 7> c10__csz:int 8> c10__fn:int 9> c19__csz:int 10> c19__fn:int 11> c20__csz:int 12> c20__fn:int 13> c4__csz:int 14> c4__fn:int 15> c6__csz:int 16> c6__fn:int 17> c7__csz:int 18> c7__fn:int 19> f1673_inbytes:int 20> i__retres:int 21> imemleft:int 22> inunits:int 23> p__retres:int 24> pfrhd:int 25> pman:int 26> pnxt:int 27> pp1:int 28> pp2:int 29> pprev:int]
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:do_assign: nbytes:=20, peid:4
[mman] MV: nbytes := 20
[mman] MV: nbytes := 20 (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:20
[mman] MV:do assginment on data, dw.eid:5...
[mman] MV:do assginment on data nbytes := 20 (DW)
[mman] DW:do_assign: f1673_inbytes:=20 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:4}
       eshape: stack:(seid:5,peid:4) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (14)pman |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_5}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pfrhd>=0;
                c6__csz-8imemleft>=0; c6__csz-65352>=0; __hli-65360>=0|] 
       )
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:4)
[mman] MEV:senv_change_pe, new senv:(seid:6,peid:1)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] ENV:get list of symbolic variables and program variables eid: 6,
[mman] DW:env2apron: 
        seid_6 -> [6]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> __s32:int 5> _heapend:int 6> _heapstart:int 7> c10__csz:int 8> c10__fn:int 9> c15__csz:int 10> c15__fn:int 11> c18__csz:int 12> c18__fn:int 13> c4__csz:int 14> c4__fn:int 15> c6__csz:int 16> c6__fn:int 17> c7__csz:int 18> c7__fn:int 19> f1673_inbytes:int 20> imemleft:int 21> inunits:int 22> p__retres:int 23> pfrhd:int 24> pnxt:int 25> pprev:int]
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:nxt>=0
[mman] MV:constraints:prev>=0
[mman] MV:constraints:__retres>=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_15>=0
[mman] MSH:guard_one return constraint:sv_18>=0
[mman] MSH:guard_one return constraint:sv_22>=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_15>=0
[mman] MV:constraints returned from MSH:sv_18>=0
[mman] MV:constraints returned from MSH:sv_22>=0
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:pnxt -_i,0 0 >= 0
[mman] DW:const:pprev -_i,0 0 >= 0
[mman] DW:const:p__retres -_i,0 0 >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|]
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:47: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|]
[mman] DF:compute_fun_aux....
[mman] ==============
       DF:transfer_stmt_main: sid:47
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nunits
[mman] transform_assign: nunits:=__hole[(int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1)]
[mman] lval2exp: found nbytes
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: nunits:=((((nbytes + 8) - 1) / 8) + 1)
[mman] MV:do_assign: nunits:=((((nbytes + 8) - 1) / 8) + 1), peid:1
[mman] MV: nunits := ((((nbytes + 8) - 1) / 8) + 1)
[mman] MV: nunits := ((((nbytes + 8) - 1) / 8) + 1) (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:((((sv_14 + 8) - 1) / 8) + 1)
[mman] MV:do assginment on data, dw.eid:6...
[mman] MV:do assginment on data nunits := ((((sv_14 + 8) - 1) / 8) + 1) (DW)
[mman] DW:do_assign: inunits:=(f1673_inbytes +_i,0 8 -_i,0 1) /_i,0 8 +_i,0 1 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:48
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[(HEADER *)0]
[mman] build cast(4) of (4)
[mman] to: prev:=0
[mman] MV:do_assign: prev:=0, peid:1
[mman] MV: prev := 0
[mman] MV: prev := 0 (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:49
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[frhd]
[mman] lval2exp: found frhd
[mman] to: nxt:=frhd
[mman] MV:do_assign: nxt:=frhd, peid:1
[mman] MV: nxt := frhd
[mman] MV: nxt := frhd (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:50
[mman] ==============
       DF:transfer_stmt_main: sid:52
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
[mman] MSH:guard_one return constraint:sv_6=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:nxt!=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_6>0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_6>0
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c4__fn -_i,0 0 > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:54
[mman] ==============
       DF:transfer_stmt_main: sid:56
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
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:70
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[nxt]
[mman] lval2exp: found nxt
[mman] to: prev:=nxt
[mman] MV:do_assign: prev:=nxt, peid:1
[mman] MV: prev := nxt
[mman] MV: prev := nxt (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:71
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt->ptr]
[mman] replace_vinfo nxt/_heapstart in fn(_heapstart)
[mman] to: nxt:=fn(nxt)
[mman] MV:do_assign: nxt:=fn(nxt), peid:1
[mman] MV: nxt := fn(nxt)
[mman] MV: nxt := fn(nxt) (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c6__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] ==============
       DF:transfer_stmt_main: sid:50
[mman] ==============
       DF:transfer_stmt_main: sid:58
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
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:59
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[nxt->size - (unsigned int)nunits]
[mman] replace_vinfo nxt/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo nxt/_heapstart in 8
[mman] replace_vinfo nxt/_heapstart in csz(_heapstart)
[mman] lval2exp: found nunits
[mman] build cast(4) of (4)
[mman] to: csz(nxt):=(((csz(nxt) / 8) - nunits) * 8)
[mman] MV:do_assign: csz(nxt):=(((csz(nxt) / 8) - nunits) * 8), peid:1
[mman] MV: csz(nxt) := (((csz(nxt) / 8) - nunits) * 8)
[mman] MV: csz(nxt) := (((csz(nxt) / 8) - nunits) * 8) (DW)
[mman] MV:after evaL:csz(sv_6)
[mman] MV:after evalE:(((sv_30 / 8) - sv_21) * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign: c6__csz:=(c6__csz /_i,0 8 -_i,0 inunits) *_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65336>=0; -c6__csz+8imemleft-24>=0; -imemleft+8171>=0;
                pprev>=0; pnxt>=0; pfrhd>=0; p__retres>=0; imemleft-8168>=0;
                c6__csz-8imemleft+40>=0; c6__csz-65312>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:63
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
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:0 -_i,0 0 = 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:60
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt + nxt->size]
[mman] lval2exp: found nxt
[mman] replace_vinfo nxt/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo nxt/_heapstart in 8
[mman] replace_vinfo nxt/_heapstart in csz(_heapstart)
[mman] to: nxt:=(nxt + ((csz(nxt) / 8) * 8))
[mman] MV:do_assign: nxt:=(nxt + ((csz(nxt) / 8) * 8)), peid:1
[mman] MV: nxt := (nxt + ((csz(nxt) / 8) * 8))
[mman] MV: nxt := (nxt + ((csz(nxt) / 8) * 8)) (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:(sv_6 + ((sv_30 / 8) * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_6)*Blk(32)...
[mman] Atom:Chd(sv_6)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (33)__s33,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] ENV:get list of symbolic variables and program variables eid: 9,
[mman] DW:env2apron: 
        seid_9 -> [7]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> __s32:int 5> __s33:int 6> __s36:int 7> _heapend:int 8> _heapstart:int 9> c10__csz:int 10> c10__fn:int 11> c15__csz:int 12> c15__fn:int 13> c18__csz:int 14> c18__fn:int 15> c33__csz:int 16> c33__fn:int 17> c4__csz:int 18> c4__fn:int 19> c6__csz:int 20> c6__fn:int 21> c7__csz:int 22> c7__fn:int 23> f1673_inbytes:int 24> imemleft:int 25> inunits:int 26> p__retres:int 27> pfrhd:int 28> pnxt:int 29> pprev:int]
[mman] DW:emvironment changed
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65336>=0; -c6__csz+8imemleft-24>=0; -imemleft+8171>=0;
                pprev>=0; pnxt>=0; pfrhd>=0; p__retres>=0; imemleft-8168>=0;
                c6__csz-8imemleft+40>=0; c6__csz-65312>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:64
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[nxt->ptr]
[mman] replace_vinfo nxt/_heapstart in fn(_heapstart)
[mman] to: frhd:=fn(nxt)
[mman] MV:do_assign: frhd:=fn(nxt), peid:1
[mman] MV: frhd := fn(nxt)
[mman] MV: frhd := fn(nxt) (DW)
[mman] MV:after evaL:sv_10
[mman] MV:after evalE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c6__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:61
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[(unsigned int)nunits]
[mman] lval2exp: found nunits
[mman] build cast(4) of (4)
[mman] to: csz(nxt):=(nunits * 8)
[mman] MV:do_assign: csz(nxt):=(nunits * 8), peid:1
[mman] MV: csz(nxt) := (nunits * 8)
[mman] MV: csz(nxt) := (nunits * 8) (DW)
[mman] MV:after evaL:csz(sv_6)
[mman] MV:after evalE:(sv_21 * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign: c6__csz:=inunits *_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c6__csz-32=0;
                c4__csz=0; -imemleft+8171>=0; pprev>=0; pnxt>=0; pfrhd>=0;
                p__retres>=0; imemleft-8168>=0; __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] ==============
       DF:transfer_stmt_main: sid:66
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)((int)memleft - nunits)]
[mman] lval2exp: found memleft
[mman] build cast(4) of (4)
[mman] lval2exp: found nunits
[mman] build cast(2) of (2)
[mman] to: memleft:=(memleft - nunits)
[mman] MV:do_assign: memleft:=(memleft - nunits), peid:1
[mman] MV: memleft := (memleft - nunits)
[mman] MV: memleft := (memleft - nunits) (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:(sv_13 - sv_21)
[mman] MV:do assginment on data, dw.eid:6...
[mman] MV:do assginment on data memleft := (sv_13 - sv_21) (DW)
[mman] DW:do_assign: imemleft:=imemleft -_i,0 inunits (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:68
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: __retres
[mman] transform_assign: __retres:=__hole[(void *)(nxt + 1)]
[mman] lval2exp: found nxt
[mman] build cast(4) of (4)
[mman] to: __retres:=(nxt + (1 * 8))
[mman] MV:do_assign: __retres:=(nxt + (1 * 8)), peid:1
[mman] MV: __retres := (nxt + (1 * 8))
[mman] MV: __retres := (nxt + (1 * 8)) (DW)
[mman] MV:after evaL:sv_22
[mman] MV:after evalE:(sv_6 + (1 * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_6)*Blk(32)...
[mman] Atom:Chd(sv_6)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (33)__s33,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:97
[mman] ==============
       DF:transfer_stmt_main: sid:98
[mman] compute_fun_aux done 
       {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       ....
[mman] DF:ret_callee: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] DF:ret_call: laAlloc(...) 
        DF:{peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (14)pman |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_14((14)f1673_inbytes)/23 -> pvar_18
[mman] old pvar_15((15)pnxt)/23 -> pvar_19
[mman] old pvar_18((18)pprev)/23 -> pvar_20
[mman] old pvar_21((21)inunits)/23 -> pvar_21
[mman] old pvar_22((22)p__retres)/23 -> pvar_22
[mman] old lvar_16/23 -> lvar_23
[mman] old lvar_17/23 -> lvar_24
[mman] old lvar_19/23 -> lvar_25
[mman] old lvar_20/23 -> lvar_26
[mman] DF:eid_common 4
[mman] MV:forget vars ...
[mman] DW:forget memleft,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:assign callee __retres to unused _hole...
[mman] MV:do_assign: __hole:=__retres, peid:1
[mman] MV: __hole := __retres
[mman] MV: __hole := __retres (DW)
[mman] MV:after evaL:sv_1
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:6,peid:1)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:4)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] ASY:transform_lval2var: p1
[mman] transform_assign: p1:=__hole[__hole]
[mman] lval2exp: found __hole
[mman] to: p1:=__hole
[mman] MV:do_assign: p1:=__hole, peid:3
[mman] MV: p1 := __hole
[mman] MV: p1 := __hole (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:sv_1
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (1)__hole
[mman] MV:eshape mutate done, old esh.seid:4
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|] 
       )
[mman] MV:forget vars ...
[mman] DW:forget __hole,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] ==============
       DF:transfer_stmt_main: sid:86
[mman] DF:function called: laAlloc'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_14((14)f1673_inbytes)/23 -> pvar_18
[mman] old pvar_15((15)pnxt)/23 -> pvar_19
[mman] old pvar_18((18)pprev)/23 -> pvar_20
[mman] old pvar_21((21)inunits)/23 -> pvar_21
[mman] old pvar_22((22)p__retres)/23 -> pvar_22
[mman] old lvar_16/23 -> lvar_23
[mman] old lvar_17/23 -> lvar_24
[mman] old lvar_19/23 -> lvar_25
[mman] old lvar_20/23 -> lvar_26
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:do_assign: nbytes:=20, peid:4
[mman] MV: nbytes := 20
[mman] MV: nbytes := 20 (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:20
[mman] MV:do assginment on data, dw.eid:5...
[mman] MV:do assginment on data nbytes := 20 (DW)
[mman] DW:do_assign: f1673_inbytes:=20 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:4}
       eshape: stack:(seid:5,peid:4) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_5}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pfrhd>=0;
                c6__csz-8imemleft-32>=0; c6__csz-65352>=0; __hli-65361>=0|] 
       )
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:4)
[mman] MEV:senv_change_pe, new senv:(seid:6,peid:1)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:nxt>=0
[mman] MV:constraints:prev>=0
[mman] MV:constraints:__retres>=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_15>=0
[mman] MSH:guard_one return constraint:sv_18>=0
[mman] MSH:guard_one return constraint:sv_22>=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_15>=0
[mman] MV:constraints returned from MSH:sv_18>=0
[mman] MV:constraints returned from MSH:sv_22>=0
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:pnxt -_i,0 0 >= 0
[mman] DW:const:pprev -_i,0 0 >= 0
[mman] DW:const:p__retres -_i,0 0 >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:47: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] DF:compute_fun_aux....
[mman] ==============
       DF:transfer_stmt_main: sid:47
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nunits
[mman] transform_assign: nunits:=__hole[(int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1)]
[mman] to: nunits:=((((nbytes + 8) - 1) / 8) + 1)
[mman] MV:do_assign: nunits:=((((nbytes + 8) - 1) / 8) + 1), peid:1
[mman] MV: nunits := ((((nbytes + 8) - 1) / 8) + 1)
[mman] MV: nunits := ((((nbytes + 8) - 1) / 8) + 1) (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:((((sv_14 + 8) - 1) / 8) + 1)
[mman] MV:do assginment on data, dw.eid:6...
[mman] MV:do assginment on data nunits := ((((sv_14 + 8) - 1) / 8) + 1) (DW)
[mman] DW:do_assign: inunits:=(f1673_inbytes +_i,0 8 -_i,0 1) /_i,0 8 +_i,0 1 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:48
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[(HEADER *)0]
[mman] to: prev:=0
[mman] MV:do_assign: prev:=0, peid:1
[mman] MV: prev := 0
[mman] MV: prev := 0 (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:49
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[frhd]
[mman] to: nxt:=frhd
[mman] MV:do_assign: nxt:=frhd, peid:1
[mman] MV: nxt := frhd
[mman] MV: nxt := frhd (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:50
[mman] ==============
       DF:transfer_stmt_main: sid:52
[mman] s.skind: If
[mman] transform guard nxt
[mman] MV:meet_exp....
[mman] MV:constraints:nxt=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_6=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:nxt!=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_6>0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_6>0
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c4__fn -_i,0 0 > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:54
[mman] ==============
       DF:transfer_stmt_main: sid:56
[mman] s.skind: If
[mman] transform guard nxt->size >= (unsigned int)nunits
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:70
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[nxt]
[mman] to: prev:=nxt
[mman] MV:do_assign: prev:=nxt, peid:1
[mman] MV: prev := nxt
[mman] MV: prev := nxt (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:71
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt->ptr]
[mman] to: nxt:=fn(nxt)
[mman] MV:do_assign: nxt:=fn(nxt), peid:1
[mman] MV: nxt := fn(nxt)
[mman] MV: nxt := fn(nxt) (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c6__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] ==============
       DF:transfer_stmt_main: sid:50
[mman] ==============
       DF:transfer_stmt_main: sid:58
[mman] s.skind: If
[mman] transform guard nxt->size > (unsigned int)nunits
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:59
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[nxt->size - (unsigned int)nunits]
[mman] to: csz(nxt):=(((csz(nxt) / 8) - nunits) * 8)
[mman] MV:do_assign: csz(nxt):=(((csz(nxt) / 8) - nunits) * 8), peid:1
[mman] MV: csz(nxt) := (((csz(nxt) / 8) - nunits) * 8)
[mman] MV: csz(nxt) := (((csz(nxt) / 8) - nunits) * 8) (DW)
[mman] MV:after evaL:csz(sv_6)
[mman] MV:after evalE:(((sv_30 / 8) - sv_21) * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign: c6__csz:=(c6__csz /_i,0 8 -_i,0 inunits) *_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65336>=0; -c6__csz+8imemleft-24>=0; -imemleft+8171>=0;
                pprev>=0; pnxt>=0; pfrhd>=0; p__retres>=0; imemleft-8168>=0;
                c6__csz-8imemleft+40>=0; c6__csz-65312>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:63
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
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:0 -_i,0 0 = 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:60
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt + nxt->size]
[mman] to: nxt:=(nxt + ((csz(nxt) / 8) * 8))
[mman] MV:do_assign: nxt:=(nxt + ((csz(nxt) / 8) * 8)), peid:1
[mman] MV: nxt := (nxt + ((csz(nxt) / 8) * 8))
[mman] MV: nxt := (nxt + ((csz(nxt) / 8) * 8)) (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:(sv_6 + ((sv_30 / 8) * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_6)*Blk(32)...
[mman] Atom:Chd(sv_6)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (33)__s33,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65336>=0; -c6__csz+8imemleft-24>=0; -imemleft+8171>=0;
                pprev>=0; pnxt>=0; pfrhd>=0; p__retres>=0; imemleft-8168>=0;
                c6__csz-8imemleft+40>=0; c6__csz-65312>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:64
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[nxt->ptr]
[mman] to: frhd:=fn(nxt)
[mman] MV:do_assign: frhd:=fn(nxt), peid:1
[mman] MV: frhd := fn(nxt)
[mman] MV: frhd := fn(nxt) (DW)
[mman] MV:after evaL:sv_10
[mman] MV:after evalE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c6__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:61
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[(unsigned int)nunits]
[mman] to: csz(nxt):=(nunits * 8)
[mman] MV:do_assign: csz(nxt):=(nunits * 8), peid:1
[mman] MV: csz(nxt) := (nunits * 8)
[mman] MV: csz(nxt) := (nunits * 8) (DW)
[mman] MV:after evaL:csz(sv_6)
[mman] MV:after evalE:(sv_21 * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign: c6__csz:=inunits *_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c6__csz-32=0;
                c4__csz=0; -imemleft+8171>=0; pprev>=0; pnxt>=0; pfrhd>=0;
                p__retres>=0; imemleft-8168>=0; __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] ==============
       DF:transfer_stmt_main: sid:66
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)((int)memleft - nunits)]
[mman] to: memleft:=(memleft - nunits)
[mman] MV:do_assign: memleft:=(memleft - nunits), peid:1
[mman] MV: memleft := (memleft - nunits)
[mman] MV: memleft := (memleft - nunits) (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:(sv_13 - sv_21)
[mman] MV:do assginment on data, dw.eid:6...
[mman] MV:do assginment on data memleft := (sv_13 - sv_21) (DW)
[mman] DW:do_assign: imemleft:=imemleft -_i,0 inunits (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:68
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: __retres
[mman] transform_assign: __retres:=__hole[(void *)(nxt + 1)]
[mman] to: __retres:=(nxt + (1 * 8))
[mman] MV:do_assign: __retres:=(nxt + (1 * 8)), peid:1
[mman] MV: __retres := (nxt + (1 * 8))
[mman] MV: __retres := (nxt + (1 * 8)) (DW)
[mman] MV:after evaL:sv_22
[mman] MV:after evalE:(sv_6 + (1 * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_6)*Blk(32)...
[mman] Atom:Chd(sv_6)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (33)__s33,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:97
[mman] ==============
       DF:transfer_stmt_main: sid:98
[mman] compute_fun_aux done 
       {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       ....
[mman] DF:ret_callee: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] DF:ret_call: laAlloc(...) 
        DF:{peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_14((14)f1673_inbytes)/23 -> pvar_18
[mman] old pvar_15((15)pnxt)/23 -> pvar_19
[mman] old pvar_18((18)pprev)/23 -> pvar_20
[mman] old pvar_21((21)inunits)/23 -> pvar_21
[mman] old pvar_22((22)p__retres)/23 -> pvar_22
[mman] old lvar_16/23 -> lvar_23
[mman] old lvar_17/23 -> lvar_24
[mman] old lvar_19/23 -> lvar_25
[mman] old lvar_20/23 -> lvar_26
[mman] DF:eid_common 4
[mman] MV:forget vars ...
[mman] DW:forget memleft,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:forget callee only...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:6,peid:1)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:4)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] ==============
       DF:transfer_stmt_main: sid:87
[mman] DF:function called: laAlloc'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_14((14)f1673_inbytes)/23 -> pvar_18
[mman] old pvar_15((15)pnxt)/23 -> pvar_19
[mman] old pvar_18((18)pprev)/23 -> pvar_20
[mman] old pvar_21((21)inunits)/23 -> pvar_21
[mman] old pvar_22((22)p__retres)/23 -> pvar_22
[mman] old lvar_16/23 -> lvar_23
[mman] old lvar_17/23 -> lvar_24
[mman] old lvar_19/23 -> lvar_25
[mman] old lvar_20/23 -> lvar_26
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:do_assign: nbytes:=20, peid:4
[mman] MV: nbytes := 20
[mman] MV: nbytes := 20 (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:20
[mman] MV:do assginment on data, dw.eid:5...
[mman] MV:do assginment on data nbytes := 20 (DW)
[mman] DW:do_assign: f1673_inbytes:=20 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:4}
       eshape: stack:(seid:5,peid:4) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_5}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pfrhd>=0;
                c6__csz-8imemleft-32>=0; c6__csz-65352>=0; __hli-65361>=0|] 
       )
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:4)
[mman] MEV:senv_change_pe, new senv:(seid:6,peid:1)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:nxt>=0
[mman] MV:constraints:prev>=0
[mman] MV:constraints:__retres>=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_15>=0
[mman] MSH:guard_one return constraint:sv_18>=0
[mman] MSH:guard_one return constraint:sv_22>=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_15>=0
[mman] MV:constraints returned from MSH:sv_18>=0
[mman] MV:constraints returned from MSH:sv_22>=0
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:pnxt -_i,0 0 >= 0
[mman] DW:const:pprev -_i,0 0 >= 0
[mman] DW:const:p__retres -_i,0 0 >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:47: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] DF:compute_fun_aux....
[mman] failure: Incomparable heap graphs
[mman] ==============
       DF:transfer_stmt_main: sid:47
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nunits
[mman] transform_assign: nunits:=__hole[(int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1)]
[mman] to: nunits:=((((nbytes + 8) - 1) / 8) + 1)
[mman] MV:do_assign: nunits:=((((nbytes + 8) - 1) / 8) + 1), peid:1
[mman] MV: nunits := ((((nbytes + 8) - 1) / 8) + 1)
[mman] MV: nunits := ((((nbytes + 8) - 1) / 8) + 1) (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:((((sv_14 + 8) - 1) / 8) + 1)
[mman] MV:do assginment on data, dw.eid:6...
[mman] MV:do assginment on data nunits := ((((sv_14 + 8) - 1) / 8) + 1) (DW)
[mman] DW:do_assign: inunits:=(f1673_inbytes +_i,0 8 -_i,0 1) /_i,0 8 +_i,0 1 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:48
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[(HEADER *)0]
[mman] to: prev:=0
[mman] MV:do_assign: prev:=0, peid:1
[mman] MV: prev := 0
[mman] MV: prev := 0 (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:49
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[frhd]
[mman] to: nxt:=frhd
[mman] MV:do_assign: nxt:=frhd, peid:1
[mman] MV: nxt := frhd
[mman] MV: nxt := frhd (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:50
[mman] ==============
       DF:transfer_stmt_main: sid:52
[mman] s.skind: If
[mman] transform guard nxt
[mman] MV:meet_exp....
[mman] MV:constraints:nxt=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_6=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:nxt!=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_6>0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_6>0
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c4__fn -_i,0 0 > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:54
[mman] ==============
       DF:transfer_stmt_main: sid:56
[mman] s.skind: If
[mman] transform guard nxt->size >= (unsigned int)nunits
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:70
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[nxt]
[mman] to: prev:=nxt
[mman] MV:do_assign: prev:=nxt, peid:1
[mman] MV: prev := nxt
[mman] MV: prev := nxt (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:71
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt->ptr]
[mman] to: nxt:=fn(nxt)
[mman] MV:do_assign: nxt:=fn(nxt), peid:1
[mman] MV: nxt := fn(nxt)
[mman] MV: nxt := fn(nxt) (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c6__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] ==============
       DF:transfer_stmt_main: sid:50
[mman] ==============
       DF:transfer_stmt_main: sid:58
[mman] s.skind: If
[mman] transform guard nxt->size > (unsigned int)nunits
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:59
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[nxt->size - (unsigned int)nunits]
[mman] to: csz(nxt):=(((csz(nxt) / 8) - nunits) * 8)
[mman] MV:do_assign: csz(nxt):=(((csz(nxt) / 8) - nunits) * 8), peid:1
[mman] MV: csz(nxt) := (((csz(nxt) / 8) - nunits) * 8)
[mman] MV: csz(nxt) := (((csz(nxt) / 8) - nunits) * 8) (DW)
[mman] MV:after evaL:csz(sv_6)
[mman] MV:after evalE:(((sv_30 / 8) - sv_21) * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign: c6__csz:=(c6__csz /_i,0 8 -_i,0 inunits) *_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65336>=0; -c6__csz+8imemleft-24>=0; -imemleft+8171>=0;
                pprev>=0; pnxt>=0; pfrhd>=0; p__retres>=0; imemleft-8168>=0;
                c6__csz-8imemleft+40>=0; c6__csz-65312>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:63
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
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:0 -_i,0 0 = 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:60
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt + nxt->size]
[mman] to: nxt:=(nxt + ((csz(nxt) / 8) * 8))
[mman] MV:do_assign: nxt:=(nxt + ((csz(nxt) / 8) * 8)), peid:1
[mman] MV: nxt := (nxt + ((csz(nxt) / 8) * 8))
[mman] MV: nxt := (nxt + ((csz(nxt) / 8) * 8)) (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:(sv_6 + ((sv_30 / 8) * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_6)*Blk(32)...
[mman] Atom:Chd(sv_6)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (33)__s33,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65336>=0; -c6__csz+8imemleft-24>=0; -imemleft+8171>=0;
                pprev>=0; pnxt>=0; pfrhd>=0; p__retres>=0; imemleft-8168>=0;
                c6__csz-8imemleft+40>=0; c6__csz-65312>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:64
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[nxt->ptr]
[mman] to: frhd:=fn(nxt)
[mman] MV:do_assign: frhd:=fn(nxt), peid:1
[mman] MV: frhd := fn(nxt)
[mman] MV: frhd := fn(nxt) (DW)
[mman] MV:after evaL:sv_10
[mman] MV:after evalE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c6__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:61
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[(unsigned int)nunits]
[mman] to: csz(nxt):=(nunits * 8)
[mman] MV:do_assign: csz(nxt):=(nunits * 8), peid:1
[mman] MV: csz(nxt) := (nunits * 8)
[mman] MV: csz(nxt) := (nunits * 8) (DW)
[mman] MV:after evaL:csz(sv_6)
[mman] MV:after evalE:(sv_21 * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign: c6__csz:=inunits *_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c6__csz-32=0;
                c4__csz=0; -imemleft+8171>=0; pprev>=0; pnxt>=0; pfrhd>=0;
                p__retres>=0; imemleft-8168>=0; __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] ==============
       DF:transfer_stmt_main: sid:66
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)((int)memleft - nunits)]
[mman] to: memleft:=(memleft - nunits)
[mman] MV:do_assign: memleft:=(memleft - nunits), peid:1
[mman] MV: memleft := (memleft - nunits)
[mman] MV: memleft := (memleft - nunits) (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:(sv_13 - sv_21)
[mman] MV:do assginment on data, dw.eid:6...
[mman] MV:do assginment on data memleft := (sv_13 - sv_21) (DW)
[mman] DW:do_assign: imemleft:=imemleft -_i,0 inunits (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:68
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: __retres
[mman] transform_assign: __retres:=__hole[(void *)(nxt + 1)]
[mman] to: __retres:=(nxt + (1 * 8))
[mman] MV:do_assign: __retres:=(nxt + (1 * 8)), peid:1
[mman] MV: __retres := (nxt + (1 * 8))
[mman] MV: __retres := (nxt + (1 * 8)) (DW)
[mman] MV:after evaL:sv_22
[mman] MV:after evalE:(sv_6 + (1 * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_6)*Blk(32)...
[mman] Atom:Chd(sv_6)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (33)__s33,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:97
[mman] ==============
       DF:transfer_stmt_main: sid:98
[mman] compute_fun_aux done 
       {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       ....
[mman] DF:ret_callee: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] DF:ret_call: laAlloc(...) 
        DF:{peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_14((14)f1673_inbytes)/23 -> pvar_18
[mman] old pvar_15((15)pnxt)/23 -> pvar_19
[mman] old pvar_18((18)pprev)/23 -> pvar_20
[mman] old pvar_21((21)inunits)/23 -> pvar_21
[mman] old pvar_22((22)p__retres)/23 -> pvar_22
[mman] old lvar_16/23 -> lvar_23
[mman] old lvar_17/23 -> lvar_24
[mman] old lvar_19/23 -> lvar_25
[mman] old lvar_20/23 -> lvar_26
[mman] DF:eid_common 4
[mman] MV:forget vars ...
[mman] DW:forget memleft,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:assign callee __retres to unused _hole...
[mman] MV:do_assign: __hole:=__retres, peid:1
[mman] MV: __hole := __retres
[mman] MV: __hole := __retres (DW)
[mman] MV:after evaL:sv_1
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:6,peid:1)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:4)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] ASY:transform_lval2var: p2
[mman] transform_assign: p2:=__hole[__hole]
[mman] lval2exp: found __hole
[mman] to: p2:=__hole
[mman] MV:do_assign: p2:=__hole, peid:3
[mman] MV: p2 := __hole
[mman] MV: p2 := __hole (DW)
[mman] MV:after evaL:sv_16
[mman] MV:after evalE:sv_1
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (1)__hole
[mman] MV:eshape mutate done, old esh.seid:4
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|] 
       )
[mman] MV:forget vars ...
[mman] DW:forget __hole,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] ==============
       DF:transfer_stmt_main: sid:88
[mman] DF:function called: laAlloc'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_14((14)f1673_inbytes)/23 -> pvar_18
[mman] old pvar_15((15)pnxt)/23 -> pvar_19
[mman] old pvar_18((18)pprev)/23 -> pvar_20
[mman] old pvar_21((21)inunits)/23 -> pvar_21
[mman] old pvar_22((22)p__retres)/23 -> pvar_22
[mman] old lvar_16/23 -> lvar_23
[mman] old lvar_17/23 -> lvar_24
[mman] old lvar_19/23 -> lvar_25
[mman] old lvar_20/23 -> lvar_26
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:do_assign: nbytes:=20, peid:4
[mman] MV: nbytes := 20
[mman] MV: nbytes := 20 (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:20
[mman] MV:do assginment on data, dw.eid:5...
[mman] MV:do assginment on data nbytes := 20 (DW)
[mman] DW:do_assign: f1673_inbytes:=20 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:4}
       eshape: stack:(seid:5,peid:4) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_5}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pfrhd>=0;
                c6__csz-8imemleft-32>=0; c6__csz-65352>=0; __hli-65361>=0|] 
       )
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:4)
[mman] MEV:senv_change_pe, new senv:(seid:6,peid:1)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:nxt>=0
[mman] MV:constraints:prev>=0
[mman] MV:constraints:__retres>=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_15>=0
[mman] MSH:guard_one return constraint:sv_18>=0
[mman] MSH:guard_one return constraint:sv_22>=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_15>=0
[mman] MV:constraints returned from MSH:sv_18>=0
[mman] MV:constraints returned from MSH:sv_22>=0
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:pnxt -_i,0 0 >= 0
[mman] DW:const:pprev -_i,0 0 >= 0
[mman] DW:const:p__retres -_i,0 0 >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:47: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] DF:compute_fun_aux....
[mman] ==============
       DF:transfer_stmt_main: sid:47
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nunits
[mman] transform_assign: nunits:=__hole[(int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1)]
[mman] to: nunits:=((((nbytes + 8) - 1) / 8) + 1)
[mman] MV:do_assign: nunits:=((((nbytes + 8) - 1) / 8) + 1), peid:1
[mman] MV: nunits := ((((nbytes + 8) - 1) / 8) + 1)
[mman] MV: nunits := ((((nbytes + 8) - 1) / 8) + 1) (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:((((sv_14 + 8) - 1) / 8) + 1)
[mman] MV:do assginment on data, dw.eid:6...
[mman] MV:do assginment on data nunits := ((((sv_14 + 8) - 1) / 8) + 1) (DW)
[mman] DW:do_assign: inunits:=(f1673_inbytes +_i,0 8 -_i,0 1) /_i,0 8 +_i,0 1 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:48
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[(HEADER *)0]
[mman] to: prev:=0
[mman] MV:do_assign: prev:=0, peid:1
[mman] MV: prev := 0
[mman] MV: prev := 0 (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:49
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[frhd]
[mman] to: nxt:=frhd
[mman] MV:do_assign: nxt:=frhd, peid:1
[mman] MV: nxt := frhd
[mman] MV: nxt := frhd (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:50
[mman] ==============
       DF:transfer_stmt_main: sid:52
[mman] s.skind: If
[mman] transform guard nxt
[mman] MV:meet_exp....
[mman] MV:constraints:nxt=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_6=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:nxt!=0
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:sv_6>0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_6>0
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c4__fn -_i,0 0 > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:54
[mman] ==============
       DF:transfer_stmt_main: sid:56
[mman] s.skind: If
[mman] transform guard nxt->size >= (unsigned int)nunits
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:70
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[nxt]
[mman] to: prev:=nxt
[mman] MV:do_assign: prev:=nxt, peid:1
[mman] MV: prev := nxt
[mman] MV: prev := nxt (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:71
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt->ptr]
[mman] to: nxt:=fn(nxt)
[mman] MV:do_assign: nxt:=fn(nxt), peid:1
[mman] MV: nxt := fn(nxt)
[mman] MV: nxt := fn(nxt) (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c6__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] ==============
       DF:transfer_stmt_main: sid:50
[mman] ==============
       DF:transfer_stmt_main: sid:58
[mman] s.skind: If
[mman] transform guard nxt->size > (unsigned int)nunits
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>=sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>=sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits >= 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>nunits
[mman] MV:meet_exp_one, peid:6, esh.seid:6....
[mman] MSH:do guard, seid:6...
[mman] MSH:guard_one return constraint:(sv_30 / 8)>sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:(sv_30 / 8)>sv_21
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:c6__csz /_i,0 8 -_i,0 inunits > 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:59
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[nxt->size - (unsigned int)nunits]
[mman] to: csz(nxt):=(((csz(nxt) / 8) - nunits) * 8)
[mman] MV:do_assign: csz(nxt):=(((csz(nxt) / 8) - nunits) * 8), peid:1
[mman] MV: csz(nxt) := (((csz(nxt) / 8) - nunits) * 8)
[mman] MV: csz(nxt) := (((csz(nxt) / 8) - nunits) * 8) (DW)
[mman] MV:after evaL:csz(sv_6)
[mman] MV:after evalE:(((sv_30 / 8) - sv_21) * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign: c6__csz:=(c6__csz /_i,0 8 -_i,0 inunits) *_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65336>=0; -c6__csz+8imemleft-24>=0; -imemleft+8171>=0;
                pprev>=0; pnxt>=0; pfrhd>=0; p__retres>=0; imemleft-8168>=0;
                c6__csz-8imemleft+40>=0; c6__csz-65312>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:63
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
[mman] DW:meet_exp....(ei:6),d.eid:6
[mman] DW:const:0 -_i,0 0 = 0
[mman] after meep constraints:
       {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:60
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt + nxt->size]
[mman] to: nxt:=(nxt + ((csz(nxt) / 8) * 8))
[mman] MV:do_assign: nxt:=(nxt + ((csz(nxt) / 8) * 8)), peid:1
[mman] MV: nxt := (nxt + ((csz(nxt) / 8) * 8))
[mman] MV: nxt := (nxt + ((csz(nxt) / 8) * 8)) (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:(sv_6 + ((sv_30 / 8) * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_6)*Blk(32)...
[mman] Atom:Chd(sv_6)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (33)__s33,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65336>=0; -c6__csz+8imemleft-24>=0; -imemleft+8171>=0;
                pprev>=0; pnxt>=0; pfrhd>=0; p__retres>=0; imemleft-8168>=0;
                c6__csz-8imemleft+40>=0; c6__csz-65312>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:64
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[nxt->ptr]
[mman] to: frhd:=fn(nxt)
[mman] MV:do_assign: frhd:=fn(nxt), peid:1
[mman] MV: frhd := fn(nxt)
[mman] MV: frhd := fn(nxt) (DW)
[mman] MV:after evaL:sv_10
[mman] MV:after evalE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c6__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:6
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:61
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt->size
[mman] transform_assign: csz(nxt):=(__hole * 8)[(unsigned int)nunits]
[mman] to: csz(nxt):=(nunits * 8)
[mman] MV:do_assign: csz(nxt):=(nunits * 8), peid:1
[mman] MV: csz(nxt) := (nunits * 8)
[mman] MV: csz(nxt) := (nunits * 8) (DW)
[mman] MV:after evaL:csz(sv_6)
[mman] MV:after evalE:(sv_21 * 8)
[mman] MV:left is feature, do assign only on data
[mman] DW:do_assign: c6__csz:=inunits *_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c6__csz-32=0;
                c4__csz=0; -imemleft+8171>=0; pprev>=0; pnxt>=0; pfrhd>=0;
                p__retres>=0; imemleft-8168>=0; __hli-65361>=0|] 
       )
[mman] failure: Incomparable heap graphs
[mman] ==============
       DF:transfer_stmt_main: sid:66
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)((int)memleft - nunits)]
[mman] to: memleft:=(memleft - nunits)
[mman] MV:do_assign: memleft:=(memleft - nunits), peid:1
[mman] MV: memleft := (memleft - nunits)
[mman] MV: memleft := (memleft - nunits) (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:(sv_13 - sv_21)
[mman] MV:do assginment on data, dw.eid:6...
[mman] MV:do assginment on data memleft := (sv_13 - sv_21) (DW)
[mman] DW:do_assign: imemleft:=imemleft -_i,0 inunits (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:68
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: __retres
[mman] transform_assign: __retres:=__hole[(void *)(nxt + 1)]
[mman] to: __retres:=(nxt + (1 * 8))
[mman] MV:do_assign: __retres:=(nxt + (1 * 8)), peid:1
[mman] MV: __retres := (nxt + (1 * 8))
[mman] MV: __retres := (nxt + (1 * 8)) (DW)
[mman] MV:after evaL:sv_22
[mman] MV:after evalE:(sv_6 + (1 * 8))
[mman] MV:eshape mutate
[mman] Atom:Chd(sv_6)*Blk(32)...
[mman] Atom:Chd(sv_6)*...
[mman] new svar added vi.id33
[mman] MSH:Add feature 'csz' for 'id:33'
[mman] MSH:Add feature 'fn' for 'id:33'
[mman] new svar added vi.id36
[mman] New shape:stack:(seid:9,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (33)__s33,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::(33)__s33::(36)__s36::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(33)__s33) * 
       chd((33)__s33)[csz:(34)c33__csz,fn:(35)c33__fn,]  * 
       blk((36)__s36,(2)__hli) * 
       emp,
       ...
[mman] MV:eshape mutate done, old esh.seid:6
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:finish do_assign, new eshape value:
        ({peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:97
[mman] ==============
       DF:transfer_stmt_main: sid:98
[mman] compute_fun_aux done 
       {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|] 
       ....
[mman] DF:ret_callee: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] DF:ret_call: laAlloc(...) 
        DF:{peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_14((14)f1673_inbytes)/23 -> pvar_18
[mman] old pvar_15((15)pnxt)/23 -> pvar_19
[mman] old pvar_18((18)pprev)/23 -> pvar_20
[mman] old pvar_21((21)inunits)/23 -> pvar_21
[mman] old pvar_22((22)p__retres)/23 -> pvar_22
[mman] old lvar_16/23 -> lvar_23
[mman] old lvar_17/23 -> lvar_24
[mman] old lvar_19/23 -> lvar_25
[mman] old lvar_20/23 -> lvar_26
[mman] DF:eid_common 4
[mman] MV:forget vars ...
[mman] DW:forget memleft,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:forget callee only...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:6,peid:1)
[mman] MEV:senv_change_pe, new senv:(seid:5,peid:4)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:5,peid:4)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] ==============
       DF:transfer_stmt_main: sid:89
[mman] DF:function called: laFree'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] MEV:Unify penvs 3, 2
[mman] old pvar_14((14)f1667_pap)/24 -> pvar_18
[mman] old pvar_15((15)pnxt)/24 -> pvar_19
[mman] old pvar_18((18)pprev)/24 -> pvar_20
[mman] old pvar_21((21)pf)/24 -> pvar_21
[mman] old lvar_16/24 -> lvar_22
[mman] old lvar_17/24 -> lvar_23
[mman] old lvar_19/24 -> lvar_24
[mman] old lvar_20/24 -> lvar_25
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:10,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] ENV:get list of symbolic variables and program variables eid: 10,
[mman] DW:env2apron: 
        seid_10 -> [8]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> __s32:int 5> _heapend:int 6> _heapstart:int 7> c10__csz:int 8> c10__fn:int 9> c19__csz:int 10> c19__fn:int 11> c20__csz:int 12> c20__fn:int 13> c4__csz:int 14> c4__fn:int 15> c6__csz:int 16> c6__fn:int 17> c7__csz:int 18> c7__fn:int 19> f1667_pap:int 20> i__retres:int 21> imemleft:int 22> pf:int 23> pfrhd:int 24> pman:int 25> pnxt:int 26> pp1:int 27> pp2:int 28> pprev:int]
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] lval2exp: found p1
[mman] MV:do_assign: ap:=p1, peid:5
[mman] MV: ap := p1
[mman] MV: ap := p1 (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:10
[mman] MV:finish do_assign, new eshape value:
        ({peid:5}
       eshape: stack:(seid:10,peid:5) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        (18)f1667_pap |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_10}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                 c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                 -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                 c6__csz-65352>=0; __hli-65361>=0|] 
       )
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:10,peid:5)
[mman] MEV:senv_change_pe, new senv:(seid:11,peid:2)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] ENV:get list of symbolic variables and program variables eid: 11,
[mman] DW:env2apron: 
        seid_11 -> [9]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> __s32:int 5> _heapend:int 6> _heapstart:int 7> c10__csz:int 8> c10__fn:int 9> c15__csz:int 10> c15__fn:int 11> c18__csz:int 12> c18__fn:int 13> c21__csz:int 14> c21__fn:int 15> c4__csz:int 16> c4__fn:int 17> c6__csz:int 18> c6__fn:int 19> c7__csz:int 20> c7__fn:int 21> f1667_pap:int 22> imemleft:int 23> pf:int 24> pfrhd:int 25> pnxt:int 26> pprev:int]
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:nxt>=0
[mman] MV:constraints:prev>=0
[mman] MV:constraints:f>=0
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_15>=0
[mman] MSH:guard_one return constraint:sv_6>=0
[mman] MSH:guard_one return constraint:sv_21>=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_15>=0
[mman] MV:constraints returned from MSH:sv_6>=0
[mman] MV:constraints returned from MSH:sv_21>=0
[mman] DW:meet_exp....(ei:11),d.eid:11
[mman] DW:const:pnxt -_i,0 0 >= 0
[mman] DW:const:c4__fn -_i,0 0 >= 0
[mman] DW:const:pf -_i,0 0 >= 0
[mman] after meep constraints:
       {eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                 c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                 -c6__csz+8imemleft+40>=0; pnxt>=0; pfrhd>=0; pf>=0;
                 c6__csz-8imemleft-32>=0; c6__csz-65352>=0; __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:1: {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                 c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                 -c6__csz+8imemleft+40>=0; pnxt>=0; pfrhd>=0; pf>=0;
                 c6__csz-8imemleft-32>=0; c6__csz-65352>=0; __hli-65361>=0|]
[mman] DF:compute_fun_aux....
[mman] ==============
       DF:transfer_stmt_main: sid:1
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: f
[mman] transform_assign: f:=__hole[(HEADER *)ap - 1]
[mman] lval2exp: found ap
[mman] build cast(4) of (4)
[mman] to: f:=(ap - (1 * 8))
[mman] MV:do_assign: f:=(ap - (1 * 8)), peid:2
[mman] MV: f := (ap - (1 * 8))
[mman] MV: f := (ap - (1 * 8)) (DW)
[mman] MV:after evaL:sv_21
[mman] MV:after evalE:(sv_14 - (1 * 8))
[mman] MV:eshape mutate
[mman] MV:eshape mutate done, old esh.seid:11
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                 c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                 -c6__csz+8imemleft+40>=0; pnxt>=0; pfrhd>=0; pf>=0;
                 c6__csz-8imemleft-32>=0; c6__csz-65352>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:2
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)((unsigned int)memleft + f->size)]
[mman] lval2exp: found memleft
[mman] build cast(4) of (4)
[mman] replace_vinfo f/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo f/_heapstart in 8
[mman] replace_vinfo f/_heapstart in csz(_heapstart)
[mman] build cast(2) of (2)
[mman] to: memleft:=(memleft + (csz(f) / 8))
[mman] MV:do_assign: memleft:=(memleft + (csz(f) / 8)), peid:2
[mman] MV: memleft := (memleft + (csz(f) / 8))
[mman] MV: memleft := (memleft + (csz(f) / 8)) (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE if None
[mman] MV:do assginment on data, dw.eid:11...
[mman] DW:do_assign: imemleft:=imemleft +_i,0 c21__csz /_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                 c7__csz=0; c6__fn=0; c4__csz=0; -c21__csz-c6__csz+8imemleft+48>=0;
                 -c6__csz+65368>=0; pnxt>=0; pfrhd>=0; pf>=0; c6__csz-65352>=0;
                 c21__csz+c6__csz-8imemleft-24>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:4
[mman] s.skind: If
[mman] transform guard frhd > f
[mman] transform guard: (int) frhd (op) f
[mman] lval2exp: found frhd
[mman] lval2exp: found f
[mman] to: (true)frhd>f
       	  (false)frhd>=f
[mman] MV:meet_exp....
[mman] MV:constraints:frhd>=f
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_31>=sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_31>=sv_21
[mman] DW:meet_exp....(ei:11),d.eid:11
[mman] DW:const:c6__fn -_i,0 pf >= 0
[mman] after meep constraints:
       {eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0; 
                 pf=0; c7__csz=0; c6__fn=0; c4__csz=0;
                 -c21__csz-c6__csz+8imemleft+48>=0; -c6__csz+65368>=0; pnxt>=0;
                 pfrhd>=0; c6__csz-65352>=0; c21__csz+c6__csz-8imemleft-24>=0;
                 __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:frhd>f
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:false
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:15
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[(HEADER *)0]
[mman] build cast(4) of (4)
[mman] to: prev:=0
[mman] MV:do_assign: prev:=0, peid:2
[mman] MV: prev := 0
[mman] MV: prev := 0 (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:11
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0; 
                 pf=0; c7__csz=0; c6__fn=0; c4__csz=0;
                 -c21__csz-c6__csz+8imemleft+48>=0; -c6__csz+65368>=0; pnxt>=0;
                 pfrhd>=0; c6__csz-65352>=0; c21__csz+c6__csz-8imemleft-24>=0;
                 __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:16
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[frhd]
[mman] lval2exp: found frhd
[mman] to: nxt:=frhd
[mman] MV:do_assign: nxt:=frhd, peid:2
[mman] MV: nxt := frhd
[mman] MV: nxt := frhd (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c6__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:11
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0; 
                 pf=0; c7__csz=0; c6__fn=0; c4__csz=0;
                 -c21__csz-c6__csz+8imemleft+48>=0; -c6__csz+65368>=0; pnxt>=0;
                 pfrhd>=0; c6__csz-65352>=0; c21__csz+c6__csz-8imemleft-24>=0;
                 __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:17
[mman] ==============
       DF:transfer_stmt_main: sid:19
[mman] s.skind: If
[mman] transform guard nxt
[mman] transform guard: (HEADER *) nxt (op) 0
[mman] lval2exp: found nxt
[mman] to: (true)nxt!=0
       	  (false)nxt=0
[mman] MV:meet_exp....
[mman] MV:constraints:nxt=0
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_31=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:nxt!=0
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_31>0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_31>0
[mman] DW:meet_exp....(ei:11),d.eid:11
[mman] DW:const:c6__fn -_i,0 0 > 0
[mman] after meep constraints:
       {eid_11}bottom
[mman] MV:new dw is Bot...
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:21
[mman] s.skind: If
[mman] transform guard nxt < f
[mman] transform guard: (int) f (op) nxt
[mman] lval2exp: found f
[mman] lval2exp: found nxt
[mman] to: (true)f>nxt
       	  (false)f>=nxt
[mman] MV:meet_exp....
[mman] MV:constraints:f>=nxt
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_21>=sv_31
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_21>=sv_31
[mman] MV:new dw is Bot...
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:f>nxt
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:false
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:22
[mman] ==============
       DF:transfer_stmt_main: sid:38
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev->ptr
[mman] transform_assign: fn(prev):=__hole[f]
[mman] lval2exp: found f
[mman] to: fn(prev):=f
[mman] MV:do_assign: fn(prev):=f, peid:2
[mman] MV: fn(prev) := f
[mman] MV: fn(prev) := f (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:sv_21
[mman] MV:do assginment on data, dw.eid:-1...
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:39
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[f + f->size]
[mman] lval2exp: found f
[mman] replace_vinfo f/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo f/_heapstart in 8
[mman] replace_vinfo f/_heapstart in csz(_heapstart)
[mman] to: prev:=(f + ((csz(f) / 8) * 8))
[mman] MV:do_assign: prev:=(f + ((csz(f) / 8) * 8)), peid:2
[mman] MV: prev := (f + ((csz(f) / 8) * 8))
[mman] MV: prev := (f + ((csz(f) / 8) * 8)) (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE if None
[mman] MV:do assginment on data, dw.eid:-1...
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:41
[mman] s.skind: If
[mman] transform guard prev == nxt
[mman] transform guard: (int) prev (op) nxt
[mman] lval2exp: found prev
[mman] lval2exp: found nxt
[mman] to: (true)prev=nxt
       	  (false)prev!=nxt
[mman] MV:meet_exp....
[mman] MV:constraints:prev!=nxt
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_31>0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_31>0
[mman] MV:new dw is Bot...
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:prev=nxt
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:0=sv_31
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:44
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: f->ptr
[mman] transform_assign: fn(f):=__hole[nxt]
[mman] lval2exp: found nxt
[mman] to: fn(f):=nxt
[mman] MV:do_assign: fn(f):=nxt, peid:2
[mman] MV: fn(f) := nxt
[mman] MV: fn(f) := nxt (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:sv_31
[mman] MV:do assginment on data, dw.eid:-1...
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:95
[mman] compute_fun_aux done 
       {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom 
       ....
[mman] DF:ret_callee: {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] DF:ret_call: laFree(...) 
        DF:{peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] MEV:Unify penvs 3, 2
[mman] old pvar_14((14)f1667_pap)/24 -> pvar_18
[mman] old pvar_15((15)pnxt)/24 -> pvar_19
[mman] old pvar_18((18)pprev)/24 -> pvar_20
[mman] old pvar_21((21)pf)/24 -> pvar_21
[mman] old lvar_16/24 -> lvar_22
[mman] old lvar_17/24 -> lvar_23
[mman] old lvar_19/24 -> lvar_24
[mman] old lvar_20/24 -> lvar_25
[mman] DF:eid_common 5
[mman] MV:forget vars ...
[mman] DW:forget memleft,... in
        {eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:10,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:11,peid:2)
[mman] MEV:senv_change_pe, new senv:(seid:10,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:10,peid:5)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (31)c6__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}bottom
[mman] ==============
       DF:transfer_stmt_main: sid:90
[mman] DF:function called: laFree'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_4}bottom
[mman] MEV:Unify penvs 3, 2
[mman] old pvar_14((14)f1667_pap)/24 -> pvar_18
[mman] old pvar_15((15)pnxt)/24 -> pvar_19
[mman] old pvar_18((18)pprev)/24 -> pvar_20
[mman] old pvar_21((21)pf)/24 -> pvar_21
[mman] old lvar_16/24 -> lvar_22
[mman] old lvar_17/24 -> lvar_23
[mman] old lvar_19/24 -> lvar_24
[mman] old lvar_20/24 -> lvar_25
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:10,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] lval2exp: found p2
[mman] MV:do_assign: ap:=p2, peid:5
[mman] MV: ap := p2
[mman] MV: ap := p2 (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:sv_16
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (16)pp2
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:10
[mman] MV:finish do_assign, new eshape value:
        ({peid:5}
       eshape: stack:(seid:10,peid:5) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (31)c6__fn,
        (18)f1667_pap |-> (16)pp2,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_10}bottom 
       )
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:10,peid:5)
[mman] MEV:senv_change_pe, new senv:(seid:11,peid:2)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:nxt>=0
[mman] MV:constraints:prev>=0
[mman] MV:constraints:f>=0
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_15>=0
[mman] MSH:guard_one return constraint:sv_16>=0
[mman] MSH:guard_one return constraint:sv_21>=0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_15>=0
[mman] MV:constraints returned from MSH:sv_16>=0
[mman] MV:constraints returned from MSH:sv_21>=0
[mman] MV:new dw is Bot...
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:1: {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (16)c15__csz,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] DF:compute_fun_aux....
[mman] failure: Incomparable heap graphs
[mman] ==============
       DF:transfer_stmt_main: sid:1
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: f
[mman] transform_assign: f:=__hole[(HEADER *)ap - 1]
[mman] to: f:=(ap - (1 * 8))
[mman] MV:do_assign: f:=(ap - (1 * 8)), peid:2
[mman] MV: f := (ap - (1 * 8))
[mman] MV: f := (ap - (1 * 8)) (DW)
[mman] MV:after evaL:sv_21
[mman] MV:after evalE:(sv_14 - (1 * 8))
[mman] MV:eshape mutate
[mman] MV:eshape mutate done, old esh.seid:11
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                 c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                 -c6__csz+8imemleft+40>=0; pnxt>=0; pfrhd>=0; pf>=0;
                 c6__csz-8imemleft-32>=0; c6__csz-65352>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:2
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)((unsigned int)memleft + f->size)]
[mman] to: memleft:=(memleft + (csz(f) / 8))
[mman] MV:do_assign: memleft:=(memleft + (csz(f) / 8)), peid:2
[mman] MV: memleft := (memleft + (csz(f) / 8))
[mman] MV: memleft := (memleft + (csz(f) / 8)) (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE if None
[mman] MV:do assginment on data, dw.eid:11...
[mman] DW:do_assign: imemleft:=imemleft +_i,0 c21__csz /_i,0 8 (DW)
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                 c7__csz=0; c6__fn=0; c4__csz=0; -c21__csz-c6__csz+8imemleft+48>=0;
                 -c6__csz+65368>=0; pnxt>=0; pfrhd>=0; pf>=0; c6__csz-65352>=0;
                 c21__csz+c6__csz-8imemleft-24>=0; __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:4
[mman] s.skind: If
[mman] transform guard frhd > f
[mman] MV:meet_exp....
[mman] MV:constraints:frhd>=f
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_31>=sv_21
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_31>=sv_21
[mman] DW:meet_exp....(ei:11),d.eid:11
[mman] DW:const:c6__fn -_i,0 pf >= 0
[mman] after meep constraints:
       {eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0; 
                 pf=0; c7__csz=0; c6__fn=0; c4__csz=0;
                 -c21__csz-c6__csz+8imemleft+48>=0; -c6__csz+65368>=0; pnxt>=0;
                 pfrhd>=0; c6__csz-65352>=0; c21__csz+c6__csz-8imemleft-24>=0;
                 __hli-65361>=0|]
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:frhd>f
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:false
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:15
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[(HEADER *)0]
[mman] to: prev:=0
[mman] MV:do_assign: prev:=0, peid:2
[mman] MV: prev := 0
[mman] MV: prev := 0 (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE:0
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:11
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0; 
                 pf=0; c7__csz=0; c6__fn=0; c4__csz=0;
                 -c21__csz-c6__csz+8imemleft+48>=0; -c6__csz+65368>=0; pnxt>=0;
                 pfrhd>=0; c6__csz-65352>=0; c21__csz+c6__csz-8imemleft-24>=0;
                 __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:16
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[frhd]
[mman] to: nxt:=frhd
[mman] MV:do_assign: nxt:=frhd, peid:2
[mman] MV: nxt := frhd
[mman] MV: nxt := frhd (DW)
[mman] MV:after evaL:sv_15
[mman] MV:after evalE:sv_31
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH:location svR: (31)c6__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, old esh.seid:11
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0; 
                 pf=0; c7__csz=0; c6__fn=0; c4__csz=0;
                 -c21__csz-c6__csz+8imemleft+48>=0; -c6__csz+65368>=0; pnxt>=0;
                 pfrhd>=0; c6__csz-65352>=0; c21__csz+c6__csz-8imemleft-24>=0;
                 __hli-65361>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:17
[mman] ==============
       DF:transfer_stmt_main: sid:19
[mman] s.skind: If
[mman] transform guard nxt
[mman] MV:meet_exp....
[mman] MV:constraints:nxt=0
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_31=0
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:nxt!=0
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_31>0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_31>0
[mman] DW:meet_exp....(ei:11),d.eid:11
[mman] DW:const:c6__fn -_i,0 0 > 0
[mman] after meep constraints:
       {eid_11}bottom
[mman] MV:new dw is Bot...
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:21
[mman] s.skind: If
[mman] transform guard nxt < f
[mman] MV:meet_exp....
[mman] MV:constraints:f>=nxt
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_21>=sv_31
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_21>=sv_31
[mman] MV:new dw is Bot...
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:f>nxt
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:false
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:22
[mman] ==============
       DF:transfer_stmt_main: sid:38
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev->ptr
[mman] transform_assign: fn(prev):=__hole[f]
[mman] to: fn(prev):=f
[mman] MV:do_assign: fn(prev):=f, peid:2
[mman] MV: fn(prev) := f
[mman] MV: fn(prev) := f (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:sv_21
[mman] MV:do assginment on data, dw.eid:-1...
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:39
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[f + f->size]
[mman] to: prev:=(f + ((csz(f) / 8) * 8))
[mman] MV:do_assign: prev:=(f + ((csz(f) / 8) * 8)), peid:2
[mman] MV: prev := (f + ((csz(f) / 8) * 8))
[mman] MV: prev := (f + ((csz(f) / 8) * 8)) (DW)
[mman] MV:after evaL:sv_18
[mman] MV:after evalE if None
[mman] MV:do assginment on data, dw.eid:-1...
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:41
[mman] s.skind: If
[mman] transform guard prev == nxt
[mman] MV:meet_exp....
[mman] MV:constraints:prev!=nxt
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:sv_31>0
[mman] MV:MSH.guard done...
[mman] MV:constraints returned from MSH:sv_31>0
[mman] MV:new dw is Bot...
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:prev=nxt
[mman] MV:meet_exp_one, peid:11, esh.seid:11....
[mman] MSH:do guard, seid:11...
[mman] MSH:guard_one return constraint:0=sv_31
[mman] MSH:guard return is None...
[mman] MV:MSH.guard done...
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] ==============
       DF:transfer_stmt_main: sid:44
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: f->ptr
[mman] transform_assign: fn(f):=__hole[nxt]
[mman] to: fn(f):=nxt
[mman] MV:do_assign: fn(f):=nxt, peid:2
[mman] MV: fn(f) := nxt
[mman] MV: fn(f) := nxt (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:sv_31
[mman] MV:do assginment on data, dw.eid:-1...
[mman] MV:finish do_assign, new eshape value:
        ({peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:95
[mman] compute_fun_aux done 
       {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom 
       ....
[mman] DF:ret_callee: {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] DF:ret_call: laFree(...) 
        DF:{peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (31)c6__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}bottom
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:returned_state: {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] MEV:Unify penvs 3, 2
[mman] old pvar_14((14)f1667_pap)/24 -> pvar_18
[mman] old pvar_15((15)pnxt)/24 -> pvar_19
[mman] old pvar_18((18)pprev)/24 -> pvar_20
[mman] old pvar_21((21)pf)/24 -> pvar_21
[mman] old lvar_16/24 -> lvar_22
[mman] old lvar_17/24 -> lvar_23
[mman] old lvar_19/24 -> lvar_24
[mman] old lvar_20/24 -> lvar_25
[mman] DF:eid_common 5
[mman] MV:forget vars ...
[mman] DW:forget memleft,... in
        {eid_4}bottom
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:4,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:10,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:11,peid:2)
[mman] MEV:senv_change_pe, new senv:(seid:10,peid:5)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:10,peid:5)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:change_env...
[mman] DW:emvironment changed
[mman] DF:ret_call state: {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (31)c6__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}bottom
[mman] ==============
       DF:transfer_stmt_main: sid:91
[mman] DF:transfer_assign...
[mman] ASY:transform_lval2var: __retres
[mman] transform_assign: __retres:=__hole[0]
[mman] to: __retres:=0
[mman] MV:do_assign: __retres:=0, peid:3
[mman] MV: __retres := 0
[mman] MV: __retres := 0 (DW)
[mman] MV:after evaL, None
[mman] MV:after evalE:0
[mman] MV:do assginment on data, dw.eid:4...
[mman] MV:finish do_assign, new eshape value:
        ({peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (31)c6__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}bottom 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:102
[mman] (sid:64): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] (sid:1): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                 c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                 -c6__csz+8imemleft+40>=0; pnxt>=0; pfrhd>=0; pf>=0;
                 c6__csz-8imemleft-32>=0; c6__csz-65352>=0; __hli-65361>=0|]
[mman] (sid:65): {peid:-1}
       Bot
[mman] (sid:2): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                 c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                 -c6__csz+8imemleft+40>=0; pnxt>=0; pfrhd>=0; pf>=0;
                 c6__csz-8imemleft-32>=0; c6__csz-65352>=0; __hli-65361>=0|]
[mman] (sid:66): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] (sid:4): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                 c7__csz=0; c6__fn=0; c4__csz=0; -c21__csz-c6__csz+8imemleft+48>=0;
                 -c6__csz+65368>=0; pnxt>=0; pfrhd>=0; pf>=0; c6__csz-65352>=0;
                 c21__csz+c6__csz-8imemleft-24>=0; __hli-65361>=0|]
[mman] (sid:68): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] (sid:5): {peid:-1}
       Bot
[mman] (sid:6): {peid:-1}
       Bot
[mman] (sid:70): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] (sid:7): {peid:-1}
       Bot
[mman] (sid:71): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] (sid:72): {peid:-1}
       Bot
[mman] (sid:9): {peid:-1}
       Bot
[mman] (sid:73): {peid:-1}
       Bot
[mman] (sid:10): {peid:-1}
       Bot
[mman] (sid:11): {peid:-1}
       Bot
[mman] (sid:75): {peid:0}
       eshape: stack:(seid:1,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pfrhd>=0;
                __hli>=0|]
[mman] (sid:12): {peid:-1}
       Bot
[mman] (sid:76): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c4__fn+65360=0; -__hli+__hst+65360=0; c7__fn=0; c7__csz=0;
                c4__csz=0; pfrhd>=0; __hli-65360>=0|]
[mman] (sid:77): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c4__csz=0; pfrhd>=0; __hli-65360>=0|]
[mman] (sid:78): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c4__csz=0; pfrhd>=0; __hli-65360>=0|]
[mman] (sid:15): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0; 
                 pf=0; c7__csz=0; c6__fn=0; c4__csz=0;
                 -c21__csz-c6__csz+8imemleft+48>=0; -c6__csz+65368>=0; pnxt>=0;
                 pfrhd>=0; c6__csz-65352>=0; c21__csz+c6__csz-8imemleft-24>=0;
                 __hli-65361>=0|]
[mman] (sid:79): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; pfrhd>=0; __hli-65360>=0|]
[mman] (sid:16): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0; 
                 pf=0; c7__csz=0; c6__fn=0; c4__csz=0;
                 -c21__csz-c6__csz+8imemleft+48>=0; -c6__csz+65368>=0; pnxt>=0;
                 pfrhd>=0; c6__csz-65352>=0; c21__csz+c6__csz-8imemleft-24>=0;
                 __hli-65361>=0|]
[mman] (sid:80): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0; pfrhd>=0;
                c6__csz-65352>=0; __hli-65360>=0|]
[mman] (sid:17): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0; 
                 pf=0; c7__csz=0; c6__fn=0; c4__csz=0;
                 -c21__csz-c6__csz+8imemleft+48>=0; -c6__csz+65368>=0; pnxt>=0;
                 pfrhd>=0; c6__csz-65352>=0; c21__csz+c6__csz-8imemleft-24>=0;
                 __hli-65361>=0|]
[mman] (sid:83): {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pp2>=0;
                pp1>=0; pman>=0; pfrhd>=0; __hli>=0|]
[mman] (sid:19): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_11}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0; 
                 pf=0; c7__csz=0; c6__fn=0; c4__csz=0;
                 -c21__csz-c6__csz+8imemleft+48>=0; -c6__csz+65368>=0; pnxt>=0;
                 pfrhd>=0; c6__csz-65352>=0; c21__csz+c6__csz-8imemleft-24>=0;
                 __hli-65361>=0|]
[mman] (sid:84): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|]
[mman] (sid:85): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (14)pman |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|]
[mman] (sid:21): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] (sid:86): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] (sid:22): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] (sid:87): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] (sid:23): {peid:-1}
       Bot
[mman] (sid:88): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (1)__hole |-> (6)c4__fn,
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] (sid:24): {peid:-1}
       Bot
[mman] (sid:89): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+40>=0; pfrhd>=0; c6__csz-8imemleft-32>=0;
                c6__csz-65352>=0; __hli-65361>=0|]
[mman] (sid:90): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (31)c6__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}bottom
[mman] (sid:26): {peid:-1}
       Bot
[mman] (sid:91): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (31)c6__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}bottom
[mman] (sid:27): {peid:-1}
       Bot
[mman] (sid:28): {peid:-1}
       Bot
[mman] (sid:93): {peid:-1}
       Bot
[mman] (sid:94): {peid:-1}
       Bot
[mman] (sid:30): {peid:-1}
       Bot
[mman] (sid:95): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] (sid:31): {peid:-1}
       Bot
[mman] (sid:32): {peid:-1}
       Bot
[mman] (sid:97): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] (sid:98): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        (22)p__retres |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+40>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft-32>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] (sid:36): {peid:-1}
       Bot
[mman] (sid:100): {peid:0}
       eshape: stack:(seid:3,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                c7__csz=0; c6__fn=0; c4__csz=0; -c6__csz+65368>=0;
                -c6__csz+8imemleft+8>=0; pfrhd>=0; c6__csz-8imemleft>=0;
                c6__csz-65352>=0; __hli-65360>=0|]
[mman] (sid:37): {peid:-1}
       Bot
[mman] (sid:102): {peid:3}
       eshape: stack:(seid:4,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pp1 |-> (31)c6__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_4}bottom
[mman] (sid:38): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] (sid:39): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] (sid:41): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] (sid:42): {peid:-1}
       Bot
[mman] (sid:43): {peid:-1}
       Bot
[mman] (sid:44): {peid:2}
       eshape: stack:(seid:11,peid:2) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (31)c6__fn,
        (15)pnxt |-> (31)c6__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] (sid:47): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|]
[mman] (sid:48): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|]
[mman] (sid:49): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|]
[mman] (sid:50): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|]
[mman] (sid:52): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65360>=0|]
[mman] (sid:53): {peid:-1}
       Bot
[mman] (sid:54): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] (sid:56): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] (sid:58): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] (sid:59): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] (sid:60): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65336>=0; -c6__csz+8imemleft-24>=0; -imemleft+8171>=0;
                pprev>=0; pnxt>=0; pfrhd>=0; p__retres>=0; imemleft-8168>=0;
                c6__csz-8imemleft+40>=0; c6__csz-65312>=0; __hli-65361>=0|]
[mman] (sid:61): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65336>=0; -c6__csz+8imemleft-24>=0; -imemleft+8171>=0;
                pprev>=0; pnxt>=0; pfrhd>=0; p__retres>=0; imemleft-8168>=0;
                c6__csz-8imemleft+40>=0; c6__csz-65312>=0; __hli-65361>=0|]
[mman] (sid:63): {peid:1}
       eshape: stack:(seid:6,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)pfrhd |-> (6)c4__fn,
        (15)pnxt |-> (6)c4__fn,
        (18)pprev |-> (0)__null,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(32)__s32::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(30)c6__csz,fn:(31)c6__fn,]  * 
       blk((32)__s32,(2)__hli) * 
       emp,
        
        dwords:{eid_6}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                inunits-4=0; f1673_inbytes-20=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8imemleft+8>=0; pprev>=0; pnxt>=0;
                pfrhd>=0; p__retres>=0; c6__csz-8imemleft>=0; c6__csz-65352>=0;
                __hli-65361>=0|]
[mman] --------------------------------------------
[mman] Analysing 'minit'
[mman] --------------------------------------------
[mman] Analysing 'malloc'
[mman] --------------------------------------------
[mman] Analysing 'mfree'
[wp] Logging keys: .
