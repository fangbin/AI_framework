[mman] DW:env2apron: corresponding apron env not found @
[mman] DW:env2apron: 
        eid[-1] -> apei[0]
       []
[kernel] Parsing FRAMAC_SHARE/libc/__fc_builtin_for_normalization.i (no preprocessing)
[kernel] Converting CABS->CIL
[kernel] Parsing ../mem_bin/bench/la/lamain.c (with preprocessing)
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
[mman] Initialize penv for function 'laAlloc'
[mman] Add 'nbytes' of type int (aka int)
[mman] Add feature 'csz' for 'id:15'
[mman] Add feature 'fn' for 'id:15'
[mman] Add 'nxt' of type HEADER * (aka struct hdr *)
[mman] Add feature 'csz' for 'id:18'
[mman] Add feature 'fn' for 'id:18'
[mman] Add 'prev' of type HEADER * (aka struct hdr *)
[mman] Add 'nunits' of type int (aka int)
[mman] Add '__retres' of type void * (aka void *)
[mman] Initialize penv for function 'laFree'
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
[mman] Initialize penv for function 'laInit'
[mman] Initialize penv for function 'main'
[mman] Add 'man' of type void * (aka void *)
[mman] Add 'p1' of type void * (aka void *)
[mman] Add 'p2' of type void * (aka void *)
[mman] Add '__retres' of type int (aka int)
[mman] Initialize penv for function 'warm_boot'
[mman] Add 'str' of type char * (aka char *)
[mman] stmt2penvs:
       (1) s_1 (@line 33) -> e_4
       (1) s_4 (@line 48) -> e_2
       (1) s_5 (@line 49) -> e_2
       (1) s_7 (@line 52) -> e_2
       (1) s_8 (@line 55) -> e_2
       (1) s_9 (@line 56) -> e_2
       (1) s_10 (@line 57) -> e_2
       (1) s_12 (@line 59) -> e_2
       (1) s_13 (@line 61) -> e_2
       (1) s_14 (@line 62) -> e_2
       (1) s_15 (@line 65) -> e_2
       (1) s_18 (@line 74) -> e_2
       (1) s_19 (@line 74) -> e_2
       (1) s_20 (@line 74) -> e_2
       (1) s_22 (@line 74) -> e_2
       (1) s_24 (@line 74) -> e_2
       (1) s_25 (@line 74) -> e_2
       (1) s_26 (@line 74) -> e_2
       (1) s_27 (@line 76) -> e_2
       (1) s_29 (@line 76) -> e_2
       (1) s_30 (@line 78) -> e_2
       (1) s_31 (@line 79) -> e_2
       (1) s_33 (@line 80) -> e_2
       (1) s_34 (@line 88) -> e_2
       (1) s_35 (@line 89) -> e_2
       (1) s_39 (@line 74) -> e_2
       (1) s_40 (@line 74) -> e_2
       (1) s_41 (@line 102) -> e_2
       (1) s_42 (@line 104) -> e_2
       (1) s_44 (@line 105) -> e_2
       (1) s_45 (@line 107) -> e_2
       (1) s_46 (@line 108) -> e_2
       (1) s_47 (@line 111) -> e_2
       (1) s_50 (@line 120) -> e_1
       (1) s_51 (@line 132) -> e_1
       (1) s_52 (@line 132) -> e_1
       (1) s_53 (@line 132) -> e_1
       (1) s_55 (@line 132) -> e_1
       (1) s_56 (@line 132) -> e_1
       (1) s_57 (@line 134) -> e_1
       (1) s_59 (@line 134) -> e_1
       (1) s_61 (@line 136) -> e_1
       (1) s_62 (@line 138) -> e_1
       (1) s_63 (@line 139) -> e_1
       (1) s_64 (@line 140) -> e_1
       (1) s_66 (@line 144) -> e_1
       (1) s_67 (@line 145) -> e_1
       (1) s_68 (@line 147) -> e_1
       (1) s_69 (@line 149) -> e_1
       (1) s_70 (@line 153) -> e_1
       (1) s_72 (@line 154) -> e_1
       (1) s_74 (@line 132) -> e_1
       (1) s_75 (@line 132) -> e_1
       (1) s_76 (@line 163) -> e_1
       (1) s_77 (@line 164) -> e_1
       (1) s_79 (@line 173) -> e_0
       (1) s_80 (@line 174) -> e_0
       (1) s_81 (@line 177) -> e_0
       (1) s_82 (@line 178) -> e_0
       (1) s_83 (@line 180) -> e_0
       (1) s_84 (@line 181) -> e_0
       (1) s_87 (@line 8) -> e_3
       (1) s_88 (@line 8) -> e_3
       (1) s_89 (@line 10) -> e_3
       (1) s_90 (@line 11) -> e_3
       (1) s_91 (@line 12) -> e_3
       (1) s_92 (@line 13) -> e_3
       (1) s_93 (@line 15) -> e_3
       (1) s_94 (@line 16) -> e_3
       (1) s_95 (@line 17) -> e_3
       (1) s_99 (@line 34) -> e_4
       (1) s_101 (@line 66) -> e_2
       (1) s_102 (@line 66) -> e_2
       (1) s_103 (@line 91) -> e_2
       (1) s_104 (@line 91) -> e_2
       (1) s_105 (@line 112) -> e_2
       (1) s_107 (@line 154) -> e_1
       (1) s_108 (@line 154) -> e_1
       (1) s_109 (@line 164) -> e_1
       (1) s_111 (@line 182) -> e_0
       (1) s_113 (@line 17) -> e_3
[mman] penvs:
       penv_0 = (2,[14],
       {(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)pfrhd;	(11)c10__csz;	(12)c10__fn;	(13)imemleft;	})
        
       penv_1 = (2,[23],
       {(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)pfrhd;	(11)c10__csz;	(12)c10__fn;	(13)imemleft;	(14)f1613_inbytes;
       	(15)pnxt;	(16)c15__csz;	(17)c15__fn;	(18)pprev;	(19)c18__csz;
       	(20)c18__fn;	(21)inunits;	(22)p__retres;	})
        
       penv_2 = (2,[24],
       {(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)pfrhd;	(11)c10__csz;	(12)c10__fn;	(13)imemleft;	(14)f1607_pap;
       	(15)pnxt;	(16)c15__csz;	(17)c15__fn;	(18)pprev;	(19)c18__csz;
       	(20)c18__fn;	(21)pf;	(22)c21__csz;	(23)c21__fn;	})
        
       penv_3 = (2,[18],
       {(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)pfrhd;	(11)c10__csz;	(12)c10__fn;	(13)imemleft;	(14)pman;
       	(15)pp1;	(16)pp2;	(17)i__retres;	})
        
       penv_4 = (2,[15],
       {(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)pfrhd;	(11)c10__csz;	(12)c10__fn;	(13)imemleft;	(14)f1604_pstr;
       	})
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] DF:Computing initial state
[mman] DF:Initial_state_stmt (sid:87,/* sid:87 */
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
[mman] DW:top_of eid 0
[mman] DW:env2apron: corresponding apron env not found @
[mman] DW:env2apron get symbolic variables list @
[mman] DW:env_vars , peid:0
[mman] DW:env2apron: 
        eid[0] -> apei[1]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c10__csz:int 7> c10__fn:int 8> c4__csz:int 9> c4__fn:int 10> c7__csz:int 11> c7__fn:int 12> imemleft:int 13> pfrhd:int]
[mman] DW:do_assign:
[mman] fn(_heapstart):=0
[mman] csz(_heapstart):=0
[mman] fn(_heapend):=0
[mman] csz(_heapend):=0
[mman] DW:on value  
        ({eid_0}top)
[mman] ...............
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(_heapstart))
[mman] DW:to_var, vi (4)_heapstart
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(_heapstart))
[mman] DW:to_var, vi (4)_heapstart
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(_heapend))
[mman] DW:to_var, vi (7)_heapend
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(_heapend))
[mman] DW:to_var, vi (7)_heapend
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
[mman] Mman_asyn.ASVar(sid:10), pei:0
[mman] DW:env_getvinfo from penv
[mman] DW:const:pfrhd -_i,0 0 >= 0
[mman] Mman_asyn.ASVar(sid:2), pei:0
[mman] DW:env_getvinfo from penv
[mman] DW:const:__hli -_i,0 0 >= 0
[mman] Mman_asyn.ASVar(sid:2), pei:0
[mman] DW:env_getvinfo from penv
[mman] Mman_asyn.ASVar(sid:3), pei:0
[mman] DW:env_getvinfo from penv
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
[mman] Mman_asyn.ASVar(sid:14), pei:0
[mman] DW:env_getvinfo from penv
[mman] DW:const:__hole -_i,0 0 >= 0
[mman] Mman_asyn.ASVar(sid:15), pei:0
[mman] DW:env_getvinfo from penv
[mman] DW:const:__hole -_i,0 0 >= 0
[mman] Mman_asyn.ASVar(sid:16), pei:0
[mman] DW:env_getvinfo from penv
[mman] DW:const:__hole -_i,0 0 >= 0
[mman] after meep constraints:
       {eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pfrhd>=0;
                __hole>=0; __hli>=0|]
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
        
        dwords:{eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pfrhd>=0;
                __hole>=0; __hli>=0|]
[mman] ==============
       DF:transfer_stmt_main: sid:87
[mman] DF:function called: laInit'
[mman] DF:transfer_call...
[mman] DF:compute_fun_init...
[mman] MV:forget vars ...
[mman] DW:forget __retres,... in
        {eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pfrhd>=0;
                __hole>=0; __hli>=0|]
[mman] DW:to_var, Mman_asyn.AVar(__retres)
[mman] MEV:Unify penvs 3, 0
[mman] MV:change_env...
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:0,peid:3)
[mman] MEV:senv_change_pe, new senv:(seid:1,peid:0)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:env2apron: corresponding apron env not found @
[mman] DW:env2apron get symbolic variables list @
[mman] DW:env_vars , peid:1
[mman] DW:env2apron: 
        eid[1] -> apei[2]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c10__csz:int 7> c10__fn:int 8> c15__csz:int 9> c15__fn:int 10> c18__csz:int 11> c18__fn:int 12> c4__csz:int 13> c4__fn:int 14> c7__csz:int 15> c7__fn:int 16> f1613_inbytes:int 17> imemleft:int 18> inunits:int 19> p__retres:int 20> pfrhd:int 21> pnxt:int 22> pprev:int]
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
        State at first stmt sid:79: {peid:0}
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
       DF:transfer_stmt_main: sid:79
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:79 */
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
[mman] DW:do_assign:
[mman] fn(_heapstart):=__hli
[mman] __hli:=(__hli + 65360)
[mman] DW:on value  
        ({eid_1}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0;
                                c4__csz=0; pfrhd>=0; __hli>=0|])
[mman] ...............
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(_heapstart))
[mman] DW:to_var, vi (4)_heapstart
[mman] DW:to_var, Mman_asyn.AVar(__hli)
[mman] DW:to_var, Mman_asyn.AVar(__hli)
[mman] DW:to_var, Mman_asyn.AVar(__hli)
[mman] DW:do_assign: c4__fn:=__hli (DW)
[mman] DW:do_assign: __hli:=__hli +_i,0 65360 (DW)
[mman] MV:do_assign: fn(sv_4):=sbrk(65360) (SHAPE)
[mman] MV:eshape mutate
[mman] MSH:Add feature 'csz' for 'id:6'
[mman] MSH:Add feature 'fn' for 'id:6'
[mman] new svar added vi.id32
[mman] ENV:its feature (6,csz)
[mman] ENV:its feature (6,fn)
[mman] MV:eshape mutate done, old esh.seid:1
[mman] DW:change_env...
[mman] DW:env2apron: corresponding apron env not found @
[mman] DW:env2apron get symbolic variables list @
[mman] DW:env_vars , peid:3
[mman] DW:env2apron: 
        eid[3] -> apei[3]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c10__csz:int 7> c10__fn:int 8> c4__csz:int 9> c4__fn:int 10> c7__csz:int 11> c7__fn:int 12> i__retres:int 13> imemleft:int 14> pfrhd:int 15> pman:int 16> pp1:int 17> pp2:int]
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
       DF:transfer_stmt_main: sid:80
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:80 */
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
[mman] DW:do_assign:
[mman] fn(_heapend):=__hli
[mman] __hli:=(__hli + 0)
[mman] DW:on value  
        ({eid_3}[|-__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                                c7__fn=0; c7__csz=0; c4__csz=0; pfrhd>=0;
                                __hli-65360>=0|])
[mman] ...............
[mman] DW:to_var, Mman_asyn.AFeat(fk, Mman_asyn.AVar(_heapend))
[mman] DW:to_var, vi (7)_heapend
[mman] DW:to_var, Mman_asyn.AVar(__hli)
[mman] DW:to_var, Mman_asyn.AVar(__hli)
[mman] DW:to_var, Mman_asyn.AVar(__hli)
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
       DF:transfer_stmt_main: sid:81
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
       DF:transfer_stmt_main: sid:82
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
[mman] DW:do_assign:
[mman] fn(sv_6):=0
[mman] DW:on value  
        ({eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                                -__hli+__hst+65360=0; c7__csz=0; c4__csz=0;
                                pfrhd>=0; __hli-65360>=0|])
[mman] ...............
[mman] DW:Mman_asyn.AFeat(fk, Mman_asyn.ASVar(6)), peid:3
[mman] DW:env_getvinfo from penv
[mman] MDW:(6)c4__fn
[mman] DW:do_assign: __hole:=0 (DW)
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
                c7__csz=0; c4__csz=0; __hole=0; pfrhd>=0; __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:83
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
[mman] DW:do_assign:
[mman] csz(sv_6):=(((sv_9 - sv_6) / 8) * 8)
[mman] DW:on value  
        ({eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                                -__hli+__hst+65360=0; c7__csz=0; c4__csz=0;
                                __hole=0; pfrhd>=0; __hli-65360>=0|])
[mman] ...............
[mman] DW:Mman_asyn.AFeat(fk, Mman_asyn.ASVar(6)), peid:3
[mman] DW:env_getvinfo from penv
[mman] MDW:(6)c4__fn
[mman] Mman_asyn.ASVar(sid:9), pei:3
[mman] DW:env_getvinfo from penv
[mman] Mman_asyn.ASVar(sid:6), pei:3
[mman] DW:env_getvinfo from penv
[mman] DW:do_assign: __hole:=(c7__fn -_i,0 c4__fn) /_i,0 8 *_i,0 8 (DW)
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
                c7__csz=0; c4__csz=0; -__hole+65368>=0; pfrhd>=0; __hole-65352>=0;
                __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:84
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
[mman] DW:do_assign:
[mman] memleft:=(sv_30 / 8)
[mman] DW:on value  
        ({eid_3}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                                -__hli+__hst+65360=0; c7__csz=0; c4__csz=0;
                                -__hole+65368>=0; pfrhd>=0; __hole-65352>=0;
                                __hli-65360>=0|])
[mman] ...............
[mman] DW:to_var, Mman_asyn.AVar(memleft)
[mman] Mman_asyn.ASVar(sid:30), pei:3
[mman] DW:env_getvinfo from penv
[mman] DW:do_assign: imemleft:=__hole /_i,0 8 (DW)
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
                c7__csz=0; c4__csz=0; -__hole+65368>=0; -__hole+8imemleft+8>=0;
                pfrhd>=0; __hole-8imemleft>=0; __hole-65352>=0; __hli-65360>=0|] 
       )
[mman] ==============
       DF:transfer_stmt_main: sid:111
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
                c7__csz=0; c4__csz=0; -__hole+65368>=0; -__hole+8imemleft+8>=0;
                pfrhd>=0; __hole-8imemleft>=0; __hole-65352>=0; __hli-65360>=0|] 
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
                c7__csz=0; c4__csz=0; -__hole+65368>=0; -__hole+8imemleft+8>=0;
                pfrhd>=0; __hole-8imemleft>=0; __hole-65352>=0; __hli-65360>=0|]
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
        
        dwords:{eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pfrhd>=0;
                __hole>=0; __hli>=0|]
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
                c7__csz=0; c4__csz=0; -__hole+65368>=0; -__hole+8imemleft+8>=0;
                pfrhd>=0; __hole-8imemleft>=0; __hole-65352>=0; __hli-65360>=0|]
[mman] MEV:Unify penvs 3, 0
[mman] DF:eid_common 3
[mman] MV:forget vars ...
[mman] DW:forget memleft,... in
        {eid_0}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; pfrhd>=0;
                __hole>=0; __hli>=0|]
[mman] DW:to_var, Mman_asyn.AVar(memleft)
[mman] MV:change_env...
[mman] MV:change_env...
[mman] MEV:senv_change_pe, old senv:(seid:3,peid:0)
[mman] MEV:senv_change_pe, new senv:(seid:4,peid:3)
[mman] MSH:change_env, project out vars ...
[mman] MSH:change_env done  ...
[mman] DW:env2apron: corresponding apron env not found @
[mman] DW:env2apron get symbolic variables list @
[mman] DW:env_vars , peid:4
[mman] DW:env2apron: 
        eid[4] -> apei[4]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c10__csz:int 7> c10__fn:int 8> c4__csz:int 9> c4__fn:int 10> c7__csz:int 11> c7__fn:int 12> f1604_pstr:int 13> imemleft:int 14> pfrhd:int]
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
                c7__csz=0; c4__csz=0; -__hole+65368>=0; -__hole+8imemleft+8>=0;
                pfrhd>=0; __hole-8imemleft>=0; __hole-65352>=0; __hli-65360>=0|]
[mman] ==============
       DF:transfer_stmt_main: sid:88
[mman] s.skind: Instr3
[mman] failure: Unexpected exception.
                Please submit bug report (Ref. "Log.FeatureRequest("mman", "Instruction")").
[kernel] Current source was: /Users/fangbin/Documents/github/mem_bin/bench/la/lamain.c:8
         The full backtrace is:
         Raised at file "src/kernel_services/plugin_entry_points/log.ml" (inlined), line 568, characters 24-31
         Called from file "src/kernel_services/plugin_entry_points/log.ml", line 939, characters 6-44
         Called from file "src/kernel_services/plugin_entry_points/log.ml", line 562, characters 9-16
         Re-raised at file "src/kernel_services/plugin_entry_points/log.ml", line 565, characters 9-16
         Called from file "queue.ml", line 105, characters 6-15
         Called from file "src/kernel_internals/runtime/boot.ml", line 37, characters 4-20
         Called from file "src/kernel_services/cmdline_parameters/cmdline.ml", line 789, characters 2-9
         Called from file "src/kernel_services/cmdline_parameters/cmdline.ml", line 819, characters 18-64
         Called from file "src/kernel_services/cmdline_parameters/cmdline.ml", line 228, characters 4-8
         
         Plug-in mman aborted: internal error.
         Please report as 'crash' at http://bts.frama-c.com/.
         Your Frama-C version is Phosphorus-20170501.
         Note that a version and a backtrace alone often do not contain enough
         information to understand the bug. Guidelines for reporting bugs are at:
         http://bts.frama-c.com/dokuwiki/doku.php?id=mantis:frama-c:bug_reporting_guidelines
