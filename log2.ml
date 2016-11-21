[mman] DW:env2apron: 
        eid-1 -> [0]
       []
[kernel] Parsing FRAMAC_SHARE/libc/__fc_builtin_for_normalization.i (no preprocessing)
[kernel] Converting CABS->CIL
[kernel] Parsing ../mem copy/bench/la/lamain.c (with preprocessing)
[kernel] Converting CABS->CIL
[mman] Welcome to the Mman plugin
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
[mman] Add feature 'csz' for 'id:4'
[mman] Add feature 'fn' for 'id:4'
[mman] Add '_heapstart' of type HEADER (aka struct hdr)
[mman] Add feature 'csz' for 'id:7'
[mman] Add feature 'fn' for 'id:7'
[mman] Add '_heapend' of type HEADER (aka struct hdr)
[mman] Add 'frhd' of type HEADER * (aka struct hdr *)
[mman] Add 'memleft' of type short (aka short)
[mman] Initialize penv for 'laAlloc'
[mman] Add 'nbytes' of type int (aka int)
[mman] Add 'nxt' of type HEADER * (aka struct hdr *)
[mman] Add 'prev' of type HEADER * (aka struct hdr *)
[mman] Add 'nunits' of type int (aka int)
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
[mman] Initialize penv for 'warm_boot'
[mman] Add 'str' of type char * (aka char *)
[mman] stmt2penvs:
       (1) s_1 (@line 35) -> e_4
       (1) s_4 (@line 66) -> e_2
       (1) s_5 (@line 67) -> e_2
       (1) s_7 (@line 71) -> e_2
       (1) s_8 (@line 75) -> e_2
       (1) s_9 (@line 76) -> e_2
       (1) s_10 (@line 77) -> e_2
       (1) s_12 (@line 80) -> e_2
       (1) s_13 (@line 81) -> e_2
       (1) s_14 (@line 82) -> e_2
       (1) s_15 (@line 84) -> e_2
       (1) s_18 (@line 93) -> e_2
       (1) s_19 (@line 93) -> e_2
       (1) s_20 (@line 93) -> e_2
       (1) s_22 (@line 93) -> e_2
       (1) s_24 (@line 93) -> e_2
       (1) s_25 (@line 93) -> e_2
       (1) s_26 (@line 93) -> e_2
       (1) s_27 (@line 94) -> e_2
       (1) s_29 (@line 94) -> e_2
       (1) s_30 (@line 95) -> e_2
       (1) s_31 (@line 96) -> e_2
       (1) s_33 (@line 97) -> e_2
       (1) s_34 (@line 106) -> e_2
       (1) s_35 (@line 107) -> e_2
       (1) s_39 (@line 93) -> e_2
       (1) s_40 (@line 93) -> e_2
       (1) s_41 (@line 120) -> e_2
       (1) s_42 (@line 121) -> e_2
       (1) s_44 (@line 122) -> e_2
       (1) s_45 (@line 123) -> e_2
       (1) s_46 (@line 124) -> e_2
       (1) s_47 (@line 126) -> e_2
       (1) s_50 (@line 140) -> e_1
       (1) s_51 (@line 152) -> e_1
       (1) s_52 (@line 152) -> e_1
       (1) s_53 (@line 152) -> e_1
       (1) s_55 (@line 152) -> e_1
       (1) s_56 (@line 152) -> e_1
       (1) s_57 (@line 153) -> e_1
       (1) s_59 (@line 153) -> e_1
       (1) s_61 (@line 154) -> e_1
       (1) s_62 (@line 155) -> e_1
       (1) s_63 (@line 156) -> e_1
       (1) s_64 (@line 157) -> e_1
       (1) s_66 (@line 159) -> e_1
       (1) s_67 (@line 160) -> e_1
       (1) s_68 (@line 162) -> e_1
       (1) s_69 (@line 164) -> e_1
       (1) s_71 (@line 168) -> e_1
       (1) s_73 (@line 152) -> e_1
       (1) s_74 (@line 152) -> e_1
       (1) s_75 (@line 178) -> e_1
       (1) s_77 (@line 187) -> e_0
       (1) s_78 (@line 188) -> e_0
       (1) s_79 (@line 192) -> e_0
       (1) s_80 (@line 194) -> e_0
       (1) s_81 (@line 196) -> e_0
       (1) s_82 (@line 197) -> e_0
       (1) s_85 (@line 8) -> e_3
       (1) s_86 (@line 8) -> e_3
       (1) s_87 (@line 9) -> e_3
       (1) s_88 (@line 10) -> e_3
       (1) s_89 (@line 11) -> e_3
       (1) s_90 (@line 12) -> e_3
       (1) s_91 (@line 13) -> e_3
       (1) s_92 (@line 14) -> e_3
       (1) s_93 (@line 15) -> e_3
       (1) s_95 (@line 36) -> e_4
       (1) s_97 (@line 85) -> e_2
       (1) s_98 (@line 109) -> e_2
       (1) s_99 (@line 130) -> e_2
       (1) s_101 (@line 168) -> e_1
       (1) s_102 (@line 178) -> e_1
       (1) s_104 (@line 202) -> e_0
       (1) s_106 (@line 15) -> e_3
[mman] envs:
       penv_0 = (2,[12] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;} )
       penv_1 = (2,[16] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)f1677_nbytes;	(13)nxt;	(14)prev;
       	(15)nunits;} )
       penv_2 = (2,[16] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)f1671_ap;	(13)nxt;	(14)prev;
       	(15)f;} )
       penv_3 = (2,[15] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       } )
       penv_4 = (2,[13] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)f1666_str;} )
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] DF:Computing initial state
[mman] DF:Initial_state_stmt (sid:85, peid:3)
[mman] running init globals
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
[mman] -------------------initialize shape-------------------
[mman] MEV:initialise symbolic environment, seid:0
[mman] MV:new senv: senv_0 = @(0,penv_3,
       [0] 
       {} @)
[mman] MV:old value  ({peid:3}
       Top)
[mman] DW:env2apron: 
        eid3 -> [1]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c4__csz:int 7> c4__fn:int 8> c7__csz:int 9> c7__fn:int 10> frhd:int 11> man:int 12> memleft:int 13> p1:int 14> p2:int]
[mman] new eshape value:
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
        
        dwords:{eid_3}top 
       ) 
        -------------------shape initialized-------------------
[mman] MV:do_assign: fn(_heapstart):=0, on dw, peid:3
[mman] MV:do_assign: csz(_heapstart):=0, on dw, peid:3
[mman] MV:do_assign: fn(_heapend):=0, on dw, peid:3
[mman] MV:do_assign: csz(_heapend):=0, on dw, peid:3
[mman] MV:do_assign: memleft:=0, on dw, peid:3
[mman] on ({peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}top 
       )
[mman] DW:do_assign: c4__fn:=0
[mman] DW:do_assign: c4__csz:=0
[mman] DW:do_assign: c7__fn:=0
[mman] DW:do_assign: c7__csz:=0
[mman] DW:do_assign: memleft:=0
[mman] DW: after do_assign 
       ({eid_3}[|memleft=0; c7__fn=0; c7__csz=0; c4__fn=0;
                                      c4__csz=0|])
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
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
        
        dwords:{eid_3}[|memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0|] 
       )
[mman] MV:assign_done,vinit.eid:3 
       , new value: 
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
        
        dwords:{eid_3}[|memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0|] 
       ) 
        ==========================================
[mman] MV:meet_exp....
[mman] MV:constraints:frhd>=0
[mman] MV:constraints:sv_2>=0
[mman] MV:constraints:(sv_2 - sv_3)=0
[mman] MV:meet_exp_one....
[mman] MSH:do guard, seid:0...
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_10>=0
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_2>=0
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:(sv_2 - sv_3)=0
[mman] MDW:meet_exp, sei:3, dw.eid:3 on 
        ({eid_3}[|memleft=0; c7__fn=0; c7__csz=0;
                                                    c4__fn=0; c4__csz=0|]) ......
[mman] MDW:to_texpr, seid:3
[mman] MDW:to_texpr, seid:3
[mman] Mman_asyn.ASVar(sid:2), sei:3
[mman] MDW:to_texpr, seid:3
[mman] Mman_asyn.ASVar(sid:2), sei:3
[mman] MDW:to_texpr, seid:3
[mman] Mman_asyn.ASVar(sid:3), sei:3
[mman] DW: after meet_exp 
       ({eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0;
                                     c4__fn=0; c4__csz=0; frhd>=0; __hli>=0|])
[mman] MV:finish meet_exp.
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:man>=0
[mman] MV:constraints:p1>=0
[mman] MV:constraints:p2>=0
[mman] MV:meet_exp_one....
[mman] MSH:do guard, seid:0...
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_12>=0
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_13>=0
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_14>=0
[mman] MDW:meet_exp, sei:3, dw.eid:3 on 
        ({eid_3}[|-__hli+__hst=0; memleft=0;
                                                    c7__fn=0; c7__csz=0; c4__fn=0;
                                                    c4__csz=0; frhd>=0; __hli>=0|]) ......
[mman] MDW:to_texpr, seid:3
[mman] MDW:to_texpr, seid:3
[mman] MDW:to_texpr, seid:3
[mman] DW: after meet_exp 
       ({eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0;
                                     c4__fn=0; c4__csz=0; p2>=0; p1>=0; man>=0;
                                     frhd>=0; __hli>=0|])
[mman] MV:finish meet_exp.
[mman] DF:Initial state (sid:85): {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:initial_state eid:3 
        {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|] 
        ===================
[mman] DF:transfer_stmt_main: sid:85
          on {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:function called: laInit'
[mman] DF:transfer_call...
[mman] DF:do_call: laInit(...)
[mman] DF:compute_fun_init...
[mman] DF:caller_penv:3, callee_penv:0, state.eid:3...
[mman] forget __retres,... in 
        {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:call_state_forgot_retres:eid:3 
       {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] MEV:Unify penvs 3, 0
[mman] DF:Unified env eid_common:3, 
        penv_3 = (3,[15] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       } )
[mman] MV:change_env...
[mman] MV:eid:3, eiold:3, einew: 3
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 3
[mman] DW: emvironment changed
[mman] MEV:senv_change_pe, old senv:senv_0 = @(0,penv_3,
       [0] 
       {} @)
[mman] MEV:senv_change_pe, new senv:senv_0 = @(0,penv_3,
       [0] 
       {} @)
[mman] After formal args assign: {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] MV:change_env...
[mman] MV:eid:3, eiold:3, einew: 0
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 0
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW:env2apron: 
        eid0 -> [2]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c4__csz:int 7> c4__fn:int 8> c7__csz:int 9> c7__fn:int 10> frhd:int 11> memleft:int]
[mman] DW: emvironment changed
[mman] MEV:senv_change_pe, old senv:senv_0 = @(0,penv_3,
       [0] 
       {} @)
[mman] MEV:senv_change_pe, new senv:senv_0 = @(0,penv_0,
       [0] 
       {} @)
[mman] After project out caller locals: {peid:0}
       eshape: stack:(seid:0,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:meet_exp_one....
[mman] MSH:do guard, seid:0...
[mman] MDW:meet_exp, sei:0, dw.eid:0 on 
        ({eid_0}[|-__hli+__hst=0; memleft=0;
                                                    c7__fn=0; c7__csz=0; c4__fn=0;
                                                    c4__csz=0; frhd>=0; __hli>=0|]) ......
[mman] DW: after meet_exp 
       ({eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0;
                                     c4__fn=0; c4__csz=0; frhd>=0; __hli>=0|])
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:77: {peid:0}
       eshape: stack:(seid:0,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
[mman] DF:compute_fun_aux....
[mman] DF:transfer_stmt_main: sid:77
          on {peid:0}
       eshape: stack:(seid:0,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
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
[mman] MV:do_assign: fn(_heapstart):=sbrk(65360), peid:0
[mman] MV:do_assign_one...eid:0, esh.seid:0, dw.eid:0
[mman] MSH:evalL afeat(fk, _heapstart)
[mman] ASY:to_senv_lval, vi:_heapstart, svi:(4)_heapstart.....
[mman] MSH:evalL,AVar, lv:sv_4...
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo......
[mman] MSH:Add feature 'csz' for 'id:6'
[mman] MSH:Add feature 'fn' for 'id:6'
[mman] MSH:new senv: senv_2 = @(0,penv_0,
       [3] 
       {	(30)__s30;	(31)c6__csz;	(32)c6__fn;} @)
[mman] MV:eshape mutate done, esh.seid:0
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:78
          on {peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
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
[mman] MV:do_assign: fn(_heapend):=sbrk(0), peid:0
[mman] MV:do_assign_one...eid:0, esh.seid:2, dw.eid:0
[mman] MSH:evalL afeat(fk, _heapend)
[mman] ASY:to_senv_lval, vi:_heapend, svi:(7)_heapend.....
[mman] MSH:evalL,AVar, lv:sv_7...
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo......
[mman] MV:eshape mutate done, esh.seid:2
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:79
          on {peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[_heapstart.ptr]
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] to: frhd:=fn(_heapstart)
[mman] MV:do_assign: frhd:=fn(_heapstart), peid:0
[mman] MV:do_assign_one...eid:0, esh.seid:2, dw.eid:0
[mman] ASY:to_senv_lval, vi:frhd, svi:(10)frhd.....
[mman] MSH:evalL,AVar, lv:sv_10...
[mman] MSH:evalE_feat...
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo......
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH: svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:2
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:80
          on {peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: frhd->ptr
[mman] transform_assign: fn(frhd):=__hole[(struct hdr *)0]
[mman] build cast(4) of (4)
[mman] to: fn(frhd):=0
[mman] MV:do_assign: fn(frhd):=0, peid:0
[mman] MV:do_assign_one...eid:0, esh.seid:2, dw.eid:0
[mman] MSH:evalL afeat(fk, frhd)
[mman] ASY:to_senv_lval, vi:frhd, svi:(10)frhd.....
[mman] MSH:evalL,AVar, lv:sv_10...
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo......
[mman] MSH:mutate_meminfo, ACst......
[mman] MSH:mutate_meminfo, Feature......
[mman] MV:eshape mutate done, esh.seid:2
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:81
          on {peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: frhd->size
[mman] transform_assign: csz(frhd):=(__hole * 8)[(unsigned int)((char *)_heapend.ptr - (char *)_heapstart.ptr) / sizeof(HEADER)]
[mman] replace_vinfo _heapend/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: csz(frhd):=(((fn(_heapend) - fn(_heapstart)) / 8) * 8)
[mman] MV:do_assign: csz(frhd):=(((fn(_heapend) - fn(_heapstart)) / 8) * 8), peid:0
[mman] MV:do_assign_one...eid:0, esh.seid:2, dw.eid:0
[mman] MSH:evalL afeat(fk, frhd)
[mman] MSH:evalE_feat...
[mman] MSH:evalE_feat...
[mman] DW:do_one_assign: csz(frhd):=(((fn(_heapend) - fn(_heapstart)) / 8) * 8),...
[mman] DW:on ({eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0;
                       c4__csz=0; frhd>=0; __hli>=0|])
[mman] MDW:to_texpr, seid:0
[mman] MDW:to_texpr, seid:0
[mman] DW:to [|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
               __hole=0; frhd>=0; __hli>=0|]
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                __hole=0; frhd>=0; __hli>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:82
          on {peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                __hole=0; frhd>=0; __hli>=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)frhd->size]
[mman] replace_vinfo frhd/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo frhd/_heapstart in 8
[mman] replace_vinfo frhd/_heapstart in csz(_heapstart)
[mman] build cast(2) of (2)
[mman] to: memleft:=(csz(frhd) / 8)
[mman] MV:do_assign: memleft:=(csz(frhd) / 8), peid:0
[mman] MV:do_assign_one...eid:0, esh.seid:2, dw.eid:0
[mman] MSH:evalE_feat...
[mman] DW:do_one_assign: memleft:=(csz(frhd) / 8),...
[mman] DW:on ({eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0;
                       c4__csz=0; __hole=0; frhd>=0; __hli>=0|])
[mman] MDW:to_texpr, seid:0
[mman] DW:to [|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
               __hole=0; frhd>=0; __hli>=0|]
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                __hole=0; frhd>=0; __hli>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:104
          on {peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                __hole=0; frhd>=0; __hli>=0|]
[mman] compute_fun_aux done....
[mman] DF:ret_callee: {peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                __hole=0; frhd>=0; __hli>=0|]
[mman] DF:ret_call: laInit(...)
[mman] DF:Combine the callee return state vret with the caller state ...
[mman] DF:vcall: {peid:3}
       eshape: stack:(seid:0,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:returned_state: {peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                __hole=0; frhd>=0; __hli>=0|]
[mman] MEV:Unify penvs 3, 0
[mman] DF:eid_common 3
[mman] forget _heapstart,... in 
        {peid:3}
       eshape: stack:(seid:0,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:state_caller_noglobs:
        {peid:3}
       eshape: stack:(seid:0,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] MV:change_env...
[mman] MV:eid:3, eiold:3, einew: 3
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 3
[mman] DW: emvironment changed
[mman] MEV:senv_change_pe, old senv:senv_0 = @(0,penv_0,
       [0] 
       {} @)
[mman] MEV:senv_change_pe, new senv:senv_0 = @(0,penv_3,
       [0] 
       {} @)
[mman] DF:state_caller_extended:
        {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] return state: {peid:0}
       eshape: stack:(seid:2,peid:0) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                __hole=0; frhd>=0; __hli>=0|]
[mman] MV:change_env...
[mman] MV:eid:0, eiold:0, einew: 3
[mman] DW:change_env...
[mman] DW:eid:0, eiold:0, einew: 3
[mman] DW:assertion value eid 0 = old eid 0
[mman] DW: emvironment changed
[mman] MEV:senv_change_pe, old senv:senv_2 = @(0,penv_0,
       [3] 
       {	(30)__s30;	(31)c6__csz;	(32)c6__fn;} @)
[mman] MEV:senv_change_pe, new senv:senv_2 = @(0,penv_3,
       [3] 
       {	(30)__s30;	(31)c6__csz;	(32)c6__fn;} @)
[mman] DF:caller state extended: {peid:3}
       eshape: stack:(seid:0,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|] 
        
        callee state: {peid:3}
       eshape: stack:(seid:2,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                __hole=0; frhd>=0; __hli>=0|]
[mman] MV:change_env...
[mman] MV:eid:3, eiold:3, einew: 3
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 3
[mman] DW: emvironment changed
[mman] MEV:senv_change_pe, old senv:senv_2 = @(0,penv_3,
       [3] 
       {	(30)__s30;	(31)c6__csz;	(32)c6__fn;} @)
[mman] MEV:senv_change_pe, new senv:senv_2 = @(0,penv_3,
       [3] 
       {	(30)__s30;	(31)c6__csz;	(32)c6__fn;} @)
[mman] DF:transfer_stmt_main: sid:86
          on {peid:3}
       eshape: stack:(seid:2,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                __hole=0; frhd>=0; __hli>=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: man
[mman] transform_assign: man:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: man:=0
[mman] MV:do_assign: man:=0, peid:3
[mman] MV:do_assign_one...eid:3, esh.seid:2, dw.eid:3
[mman] DW:do_one_assign: man:=0,...
[mman] DW:on ({eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0;
                       c4__csz=0; __hole=0; frhd>=0; __hli>=0|])
[mman] DW:to [|-__hli+__hst=0; memleft=0; man=0; c7__fn=0; c7__csz=0; c4__fn=0;
               c4__csz=0; __hole=0; frhd>=0; __hli>=0|]
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:3}
       eshape: stack:(seid:2,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; man=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; __hole=0; frhd>=0; __hli>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:87
          on {peid:3}
       eshape: stack:(seid:2,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; man=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; __hole=0; frhd>=0; __hli>=0|]
[mman] DF:function called: laAlloc'
[mman] DF:transfer_call...
[mman] DF:do_call: laAlloc(...)
[mman] DF:compute_fun_init...
[mman] DF:caller_penv:3, callee_penv:1, state.eid:3...
[mman] forget __retres,... in 
        {peid:3}
       eshape: stack:(seid:2,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; man=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; __hole=0; frhd>=0; __hli>=0|]
[mman] DF:call_state_forgot_retres:eid:3 
       {peid:3}
       eshape: stack:(seid:2,peid:3) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_3}[|-__hli+__hst=0; memleft=0; man=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; __hole=0; frhd>=0; __hli>=0|]
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:Unified env eid_common:5, 
        penv_5 = (1,[19] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)f1677_nbytes;	(16)nxt;	(17)prev;	(18)nunits;} )
[mman] MV:change_env...
[mman] MV:eid:3, eiold:3, einew: 5
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 5
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW:env2apron: 
        eid5 -> [3]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c4__csz:int 7> c4__fn:int 8> c7__csz:int 9> c7__fn:int 10> f1677_nbytes:int 11> frhd:int 12> man:int 13> memleft:int 14> nunits:int 15> nxt:int 16> p1:int 17> p2:int 18> prev:int]
[mman] DW: emvironment changed
[mman] MEV:senv_change_pe, old senv:senv_2 = @(0,penv_3,
       [3] 
       {	(30)__s30;	(31)c6__csz;	(32)c6__fn;} @)
[mman] MEV:senv_change_pe, new senv:senv_2 = @(0,penv_5,
       [3] 
       {	(30)__s30;	(31)c6__csz;	(32)c6__fn;} @)
[mman] MV:do_assign: nbytes:=20, peid:5
[mman] MV:do_assign_one...eid:5, esh.seid:2, dw.eid:5
[mman] DW:do_one_assign: nbytes:=20,...
[mman] DW:on ({eid_5}[|-__hli+__hst=0; memleft=0; man=0; c7__fn=0; c7__csz=0;
                       c4__fn=0; c4__csz=0; __hole=0; frhd>=0; __hli>=0|])
[mman] DW:to [|-__hli+__hst=0; memleft=0; man=0; f1677_nbytes-20=0; c7__fn=0;
               c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; frhd>=0; __hli>=0|]
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:5}
       eshape: stack:(seid:2,peid:5) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_5}[|-__hli+__hst=0; memleft=0; man=0; f1677_nbytes-20=0; c7__fn=0;
                c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; frhd>=0; __hli>=0|] 
       )
[mman] After formal args assign: {peid:5}
       eshape: stack:(seid:2,peid:5) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_5}[|-__hli+__hst=0; memleft=0; man=0; f1677_nbytes-20=0; c7__fn=0;
                c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; frhd>=0; __hli>=0|]
[mman] MV:change_env...
[mman] MV:eid:5, eiold:5, einew: 1
[mman] DW:change_env...
[mman] DW:eid:5, eiold:5, einew: 1
[mman] DW:assertion value eid 5 = old eid 5
[mman] DW:env2apron: 
        eid1 -> [4]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c4__csz:int 7> c4__fn:int 8> c7__csz:int 9> c7__fn:int 10> f1677_nbytes:int 11> frhd:int 12> memleft:int 13> nunits:int 14> nxt:int 15> prev:int]
[mman] DW: emvironment changed
[mman] MEV:senv_change_pe, old senv:senv_2 = @(0,penv_5,
       [3] 
       {	(30)__s30;	(31)c6__csz;	(32)c6__fn;} @)
[mman] MEV:senv_change_pe, new senv:senv_2 = @(0,penv_1,
       [3] 
       {	(30)__s30;	(31)c6__csz;	(32)c6__fn;} @)
[mman] After project out caller locals: {peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; memleft=0; f1677_nbytes-20=0; c7__fn=0; c7__csz=0;
                c4__fn=0; c4__csz=0; __hole=0; frhd>=0; __hli>=0|]
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:nxt>=0
[mman] MV:constraints:prev>=0
[mman] MV:constraints:__retres>=0
[mman] MV:meet_exp_one....
[mman] MSH:do guard, seid:2...
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_13>=0
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_14>=0
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_1>=0
[mman] MDW:meet_exp, sei:1, dw.eid:1 on 
        ({eid_1}[|-__hli+__hst=0; memleft=0;
                                                    f1677_nbytes-20=0; c7__fn=0;
                                                    c7__csz=0; c4__fn=0; c4__csz=0;
                                                    __hole=0; frhd>=0; __hli>=0|]) ......
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] DW: after meet_exp 
       ({eid_1}[|-__hli+__hst=0; memleft=0; f1677_nbytes-20=0;
                                     c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                                     __hole=0; prev>=0; nxt>=0; frhd>=0; __hli>=0|])
[mman] MV:finish meet_exp.
[mman] DF:compute_fun_init done. 
        State at first stmt sid:50: {peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; memleft=0; f1677_nbytes-20=0; c7__fn=0; c7__csz=0;
                c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0; __hli>=0|]
[mman] DF:compute_fun_aux....
[mman] DF:transfer_stmt_main: sid:50
          on {peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; memleft=0; f1677_nbytes-20=0; c7__fn=0; c7__csz=0;
                c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0; __hli>=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: nunits
[mman] transform_assign: nunits:=__hole[(int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1)]
[mman] lval2exp: found nbytes
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: nunits:=((((nbytes + 8) - 1) / 8) + 1)
[mman] MV:do_assign: nunits:=((((nbytes + 8) - 1) / 8) + 1), peid:1
[mman] MV:do_assign_one...eid:1, esh.seid:2, dw.eid:1
[mman] DW:do_one_assign: nunits:=((((nbytes + 8) - 1) / 8) + 1),...
[mman] DW:on ({eid_1}[|-__hli+__hst=0; memleft=0; f1677_nbytes-20=0; c7__fn=0;
                       c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0;
                       frhd>=0; __hli>=0|])
[mman] MDW:to_texpr, seid:1
[mman] DW:to [|-__hli+__hst=0; nunits-4=0; memleft=0; f1677_nbytes-20=0; c7__fn=0;
               c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0;
               __hli>=0|]
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; nunits-4=0; memleft=0; f1677_nbytes-20=0; c7__fn=0;
                c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0;
                __hli>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:51
          on {peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; nunits-4=0; memleft=0; f1677_nbytes-20=0; c7__fn=0;
                c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0;
                __hli>=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[(HEADER *)0]
[mman] build cast(4) of (4)
[mman] to: prev:=0
[mman] MV:do_assign: prev:=0, peid:1
[mman] MV:do_assign_one...eid:1, esh.seid:2, dw.eid:1
[mman] ASY:to_senv_lval, vi:prev, svi:(14)prev.....
[mman] MSH:evalL,AVar, lv:sv_14...
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo......
[mman] MV:eshape mutate done, esh.seid:2
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; nunits-4=0; memleft=0; f1677_nbytes-20=0; c7__fn=0;
                c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0;
                __hli>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:52
          on {peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; nunits-4=0; memleft=0; f1677_nbytes-20=0; c7__fn=0;
                c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0;
                __hli>=0|]
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[frhd]
[mman] lval2exp: found frhd
[mman] to: nxt:=frhd
[mman] MV:do_assign: nxt:=frhd, peid:1
[mman] MV:do_assign_one...eid:1, esh.seid:2, dw.eid:1
[mman] ASY:to_senv_lval, vi:nxt, svi:(13)nxt.....
[mman] MSH:evalL,AVar, lv:sv_13...
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo......
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH: svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:2
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        (13)nxt |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; nunits-4=0; memleft=0; f1677_nbytes-20=0; c7__fn=0;
                c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0;
                __hli>=0|] 
       )
[mman] DF:transfer_stmt_main: sid:53
          on {peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        (13)nxt |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; nunits-4=0; memleft=0; f1677_nbytes-20=0; c7__fn=0;
                c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0;
                __hli>=0|]
[mman] DF:transfer_stmt_main: sid:55
          on {peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        (13)nxt |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; nunits-4=0; memleft=0; f1677_nbytes-20=0; c7__fn=0;
                c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0;
                __hli>=0|]
[mman] s.skind: If
[mman] transform guard nxt
[mman] transform guard: (HEADER *) nxt (op) 0
[mman] lval2exp: found nxt
[mman] to: (true)nxt!=0
       	  (false)nxt=0
[mman] MV:meet_exp....
[mman] MV:constraints:nxt=0
[mman] MV:meet_exp_one....
[mman] MSH:do guard, seid:2...
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_6=0
[mman] MSH:guard return is None...
[mman] MDW:meet_exp, sei:1, dw.eid:1 on 
        ({eid_1}[|-__hli+__hst=0; nunits-4=0;
                                                    memleft=0; f1677_nbytes-20=0;
                                                    c7__fn=0; c7__csz=0; c4__fn=0;
                                                    c4__csz=0; __hole=0; prev>=0;
                                                    nxt>=0; frhd>=0; __hli>=0|]) ......
[mman] MDW:to_texpr, seid:1
[mman] DW: after meet_exp 
       ({eid_1}[|-__hli+__hst=0; nxt=0; nunits-4=0; memleft=0;
                                     f1677_nbytes-20=0; c7__fn=0; c7__csz=0;
                                     c4__fn=0; c4__csz=0; __hole=0; prev>=0;
                                     frhd>=0; __hli>=0|])
[mman] MV:after guard is NONE.
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:nxt!=0
[mman] MV:meet_exp_one....
[mman] MSH:do guard, seid:2...
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_6>0
[mman] MDW:meet_exp, sei:1, dw.eid:1 on 
        ({eid_1}[|-__hli+__hst=0; nunits-4=0;
                                                    memleft=0; f1677_nbytes-20=0;
                                                    c7__fn=0; c7__csz=0; c4__fn=0;
                                                    c4__csz=0; __hole=0; prev>=0;
                                                    nxt>=0; frhd>=0; __hli>=0|]) ......
[mman] MDW:to_texpr, seid:1
[mman] DW: after meet_exp 
       ({eid_1}[|-__hli+__hst=0; nunits-4=0; memleft=0;
                                     f1677_nbytes-20=0; c7__fn=0; c7__csz=0;
                                     c4__fn=0; c4__csz=0; __hole=0; prev>=0; 
                                     nxt>=0; frhd>=0; __hli>=0|])
[mman] MV:finish meet_exp.
[mman] DF:transfer_stmt_main: sid:57
          on {peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        (13)nxt |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; nunits-4=0; memleft=0; f1677_nbytes-20=0; c7__fn=0;
                c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0;
                __hli>=0|]
[mman] DF:transfer_stmt_main: sid:59
          on {peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        (13)nxt |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_1}[|-__hli+__hst=0; nunits-4=0; memleft=0; f1677_nbytes-20=0; c7__fn=0;
                c7__csz=0; c4__fn=0; c4__csz=0; __hole=0; prev>=0; nxt>=0; frhd>=0;
                __hli>=0|]
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
[mman] MV:meet_exp_one....
[mman] MSH:do guard, seid:2...
[mman] MSH:do guard_one...
[mman] MSH:evalE_feat...
[mman] MSH:guard_one return constraint:(sv_31 / 8)>sv_15
[mman] MDW:meet_exp, sei:1, dw.eid:1 on 
        ({eid_1}[|-__hli+__hst=0; nunits-4=0;
                                                    memleft=0; f1677_nbytes-20=0;
                                                    c7__fn=0; c7__csz=0; c4__fn=0;
                                                    c4__csz=0; __hole=0; prev>=0;
                                                    nxt>=0; frhd>=0; __hli>=0|]) ......
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] DW: after meet_exp 
       ({eid_1}bottom)
[mman] MV:dw is Bot...
[mman] MV:finish meet_exp.
[mman] MV:meet_exp....
[mman] MV:constraints:(csz(nxt) / 8)>=nunits
[mman] MV:meet_exp_one....
[mman] MSH:do guard, seid:2...
[mman] MSH:do guard_one...
[mman] MSH:evalE_feat...
[mman] MSH:guard_one return constraint:(sv_31 / 8)>=sv_15
[mman] MDW:meet_exp, sei:1, dw.eid:1 on 
        ({eid_1}[|-__hli+__hst=0; nunits-4=0;
                                                    memleft=0; f1677_nbytes-20=0;
                                                    c7__fn=0; c7__csz=0; c4__fn=0;
                                                    c4__csz=0; __hole=0; prev>=0;
                                                    nxt>=0; frhd>=0; __hli>=0|]) ......
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] DW: after meet_exp 
       ({eid_1}bottom)
[mman] MV:dw is Bot...
[mman] MV:finish meet_exp.
[mman] DF:transfer_stmt_main: sid:73
          on {peid:1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        (13)nxt |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: prev
[mman] transform_assign: prev:=__hole[nxt]
[mman] lval2exp: found nxt
[mman] to: prev:=nxt
[mman] MV:do_assign: prev:=nxt, peid:1
[mman] MV:do_assign_one...eid:1, esh.seid:2, dw.eid:-1
[mman] ASY:to_senv_lval, vi:prev, svi:(14)prev.....
[mman] MSH:evalL,AVar, lv:sv_14...
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo......
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH: svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:2
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:-1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        (13)nxt |-> (6)c4__fn,
        (14)prev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom 
       )
[mman] DF:transfer_stmt_main: sid:74
          on {peid:-1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        (13)nxt |-> (6)c4__fn,
        (14)prev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: nxt
[mman] transform_assign: nxt:=__hole[nxt->ptr]
[mman] replace_vinfo nxt/_heapstart in fn(_heapstart)
[mman] to: nxt:=fn(nxt)
[mman] MV:do_assign: nxt:=fn(nxt), peid:-1
[mman] MV:do_assign_one...eid:-1, esh.seid:2, dw.eid:-1
[mman] ASY:to_senv_lval, vi:nxt, svi:(13)nxt.....
[mman] MSH:evalL,AVar, lv:sv_13...
[mman] MSH:evalE_feat...
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo......
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH: svR: (32)c6__fn
[mman] MSH:mutate_stack
[mman] MV:eshape mutate done, esh.seid:2
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({peid:-1}
       eshape: stack:(seid:2,peid:1) 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (9)c7__fn |-> (2)__hli,
        (10)frhd |-> (6)c4__fn,
        (13)nxt |-> (32)c6__fn,
        (14)prev |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(30)__s30::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(31)c6__csz,fn:(32)c6__fn,]  * 
       blk((30)__s30,(2)__hli) * 
       emp,
        
        dwords:{eid_-1}bottom 
       )
[mman] DF:transfer_stmt_main: sid:53
          on {peid:-1}
       Top
[mman] DF:transfer_stmt_main: sid:55
          on {peid:-1}
       Top
[mman] s.skind: If
[mman] transform guard nxt
[mman] MV:meet_exp....
[mman] MV:constraints:nxt=0
[mman] MV:meet_exp_one....
[mman] MSH:do guard, seid:-1...
[mman] failure: Unexpected exception.
                Please submit bug report (Ref. "Not_found").
[kernel] Current source was: /Users/yuezhuang/Documents/projects/mem copy/bench/la/lamalloc.c:152
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
