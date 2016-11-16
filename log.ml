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
[mman] DF:Initial_state_stmt (sid:85)
[mman] running init globals
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] replace_vinfo _heapend/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] replace_vinfo _heapend/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo _heapend/_heapstart in 8
[mman] replace_vinfo _heapend/_heapstart in csz(_heapstart)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] build cast(2) of (2)
[mman] Global inits: fn(_heapstart)csz(_heapstart)fn(_heapend)csz(_heapend)frhdmemleft := 000000
       meet sv_2>=0(sv_2 - sv_3)=0
[mman] initialization done
       --------------
[mman] DF:Computing global values
[mman] MV:init_globals
[mman] -------------------initialize shape-------------------
[mman] MV:penv: penv_3 = (2,[15] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       } )
[mman] MEV:initialise symbolic environment
[mman] MV:senv: senv_0 = @(0,penv_3,
       [0] 
       {} @)
[mman] new senv: senv_0 = @(0,penv_3,
       [0] 
       {} @)
[mman] old value  ({seid:3}Top)
[mman] DW:env2apron: 
        eid3 -> [1]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c4__csz:int 7> c4__fn:int 8> c7__csz:int 9> c7__fn:int 10> frhd:int 11> man:int 12> memleft:int 13> p1:int 14> p2:int]
[mman] new eshape value:
         ({seid:0}eshape: stack: 
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
[mman] MV:do_assign: fn(_heapstart):=0
[mman] MV:do_assign: csz(_heapstart):=0
[mman] MV:do_assign: fn(_heapend):=0
[mman] MV:do_assign: csz(_heapend):=0
[mman] MV:do_assign: frhd:=0
[mman] MV:do_assign: memleft:=0
[mman] MV:do_assign_one...
[mman] MV:penv: penv_3 = (2,[15] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       } )
[mman] MV:senv: senv_0 = @(0,penv_3,
       [0] 
       {} @)
[mman] MV:left and right of MDW: fn(_heapstart) := 0
[mman] MV:left and right of MDW: csz(_heapstart) := 0
[mman] MV:left and right of MDW: fn(_heapend) := 0
[mman] MV:left and right of MDW: csz(_heapend) := 0
[mman] MV:left and right of MDW: frhd := 0
[mman] MV:left and right of MDW: memleft := 0
[mman] MSH:evalL(fn(_heapstart)) .....
[mman] MSH:evalL afeat(fk, _heapstart)
[mman] MSH:evalL(_heapstart) .....
[mman] MSH:evalL(csz(_heapstart)) .....
[mman] MSH:evalL afeat(fk, _heapstart)
[mman] MSH:evalL(_heapstart) .....
[mman] MSH:evalL(fn(_heapend)) .....
[mman] MSH:evalL afeat(fk, _heapend)
[mman] MSH:evalL(_heapend) .....
[mman] MSH:evalL(csz(_heapend)) .....
[mman] MSH:evalL afeat(fk, _heapend)
[mman] MSH:evalL(_heapend) .....
[mman] MSH:evalL(frhd) .....
[mman] MSH:evalL(memleft) .....
[mman] MV:after mutate left and right: sv_11 := 0
[mman] MV:after mutate left and right: sv_10 := 0
[mman] MV:after mutate left and right: csz(sv_7) := 0
[mman] MV:after mutate left and right: fn(sv_7) := 0
[mman] MV:after mutate left and right: csz(sv_4) := 0
[mman] MV:after mutate left and right: fn(sv_4) := 0
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, Feature......
[mman] DW:do_assign: memleft:=0
[mman] DW:do_assign: frhd:=0
[mman] DW:do_assign: c7__csz:=0
[mman] DW:do_assign: c7__fn:=0
[mman] DW:do_assign: c4__csz:=0
[mman] DW:do_assign: c4__fn:=0
[mman] DW: after do_assign 
       ({eid_3}[|memleft=0; frhd=0; c7__fn=0; c7__csz=0;
                                      c4__fn=0; c4__csz=0|])
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, Feature......
[mman] DW:do_assign: memleft:=0
[mman] DW:do_assign: frhd:=0
[mman] DW:do_assign: c7__csz:=0
[mman] DW:do_assign: c7__fn:=0
[mman] DW:do_assign: c4__csz:=0
[mman] DW:do_assign: c4__fn:=0
[mman] DW: after do_assign 
       ({eid_3}[|memleft=0; frhd=0; c7__fn=0; c7__csz=0;
                                      c4__fn=0; c4__csz=0|])
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, Feature......
[mman] DW:do_assign: memleft:=0
[mman] DW:do_assign: frhd:=0
[mman] DW:do_assign: c7__csz:=0
[mman] DW:do_assign: c7__fn:=0
[mman] DW:do_assign: c4__csz:=0
[mman] DW:do_assign: c4__fn:=0
[mman] DW: after do_assign 
       ({eid_3}[|memleft=0; frhd=0; c7__fn=0; c7__csz=0;
                                      c4__fn=0; c4__csz=0|])
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, Feature......
[mman] DW:do_assign: memleft:=0
[mman] DW:do_assign: frhd:=0
[mman] DW:do_assign: c7__csz:=0
[mman] DW:do_assign: c7__fn:=0
[mman] DW:do_assign: c4__csz:=0
[mman] DW:do_assign: c4__fn:=0
[mman] DW: after do_assign 
       ({eid_3}[|memleft=0; frhd=0; c7__fn=0; c7__csz=0;
                                      c4__fn=0; c4__csz=0|])
[mman] MV:eshape mutate
[mman] MSH:mutate_stack
[mman] DW:do_assign: memleft:=0
[mman] DW:do_assign: frhd:=0
[mman] DW:do_assign: c7__csz:=0
[mman] DW:do_assign: c7__fn:=0
[mman] DW:do_assign: c4__csz:=0
[mman] DW:do_assign: c4__fn:=0
[mman] DW: after do_assign 
       ({eid_3}[|memleft=0; frhd=0; c7__fn=0; c7__csz=0;
                                      c4__fn=0; c4__csz=0|])
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, SVChunk, none ......
[mman] DW:do_assign: memleft:=0
[mman] DW:do_assign: frhd:=0
[mman] DW:do_assign: c7__csz:=0
[mman] DW:do_assign: c7__fn:=0
[mman] DW:do_assign: c4__csz:=0
[mman] DW:do_assign: c4__fn:=0
[mman] DW: after do_assign 
       ({eid_3}[|memleft=0; frhd=0; c7__fn=0; c7__csz=0;
                                      c4__fn=0; c4__csz=0|])
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({seid:0}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
       	 dwords:{eid_3}[|memleft=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0|] 
       )
[mman] MV:assign_done, new value: 
        ({seid:0}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
       	 dwords:{eid_3}[|memleft=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0|] 
       ) 
        ==========================================
[mman] MV:meet_exp....
[mman] MV:constraints:sv_2>=0
[mman] MV:constraints:(sv_2 - sv_3)=0
[mman] MSH:do guard...
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_2>=0
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:(sv_2 - sv_3)=0
[mman] MDW:meet_exp......
[mman] MV:finish meet_exp.
[mman] MV:new eshape value:
        ({seid:0}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
       	 dwords:{eid_3}[|-__hli+__hst=0; memleft=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; __hli>=0|] 
       )
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MV:constraints:man>=0
[mman] MV:constraints:p1>=0
[mman] MV:constraints:p2>=0
[mman] MSH:do guard...
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_12>=0
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_13>=0
[mman] MSH:do guard_one...
[mman] MSH:guard_one return constraint:sv_14>=0
[mman] MDW:meet_exp......
[mman] MV:finish meet_exp.
[mman] MV:new eshape value:
        ({seid:0}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
       	 dwords:{eid_3}[|-__hli+__hst=0; memleft=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; p2>=0; p1>=0; man>=0; __hli>=0|] 
       )
[mman] DF:initial_state 
        {seid:0}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
       	 dwords:{eid_3}[|-__hli+__hst=0; memleft=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; p2>=0; p1>=0; man>=0; __hli>=0|] 
        ===================
[mman] =========================
        DF:transfer_stmt_main stmt_id: 85
[mman] DF:function called: laInit'
[mman] DF:do_call: laInit(...)
[mman] forget __retres,... in {seid:0}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
       	 dwords:{eid_3}[|-__hli+__hst=0; memleft=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; p2>=0; p1>=0; man>=0; __hli>=0|]
[mman] MEV:Unify penvs 3, 0
[mman] Unified envs eid:3: penv_3 = (3,[15] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       } )
[mman] MV:change_env...
[mman] MV:eid:0, eiold:3, einew: 3
[mman] After formal args assign: {seid:0}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
       	 dwords:{eid_3}[|-__hli+__hst=0; memleft=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; p2>=0; p1>=0; man>=0; __hli>=0|]
[mman] MV:change_env...
[mman] MV:eid:0, eiold:3, einew: 0
[mman] DF:set_fun_locals....
[mman] MV:meet_exp....
[mman] MSH:do guard...
[mman] MDW:meet_exp......
[mman] MV:finish meet_exp.
[mman] MV:new eshape value:
        ({seid:0}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
       	 dwords:{eid_3}[|-__hli+__hst=0; memleft=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; p2>=0; p1>=0; man>=0; __hli>=0|] 
       )
[mman] DF:compute_fun_aux....
[mman] =========================
        DF:transfer_stmt_main stmt_id: 77
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:77 */
                         _heapstart.ptr = (struct hdr *)sbrk(65360);
[mman] ASY:transform_lval2var: _heapstart.ptr
[mman] ASY:transform_sbrk: fn(_heapstart):=__hole[sbrk(65360)]
[mman] to: fn(_heapstart):=sbrk(65360)
[mman] ASY:transform_lval2var: _heapstart.ptr
[mman] ASY:transform_sbrk: fn(_heapstart):=__hole[sbrk(65360)] (MDW)
[mman] to: fn(_heapstart):=__hli
[mman] to: __hli:=(__hli + 65360)
[mman] MV:do_assign: fn(_heapstart):=sbrk(65360)
[mman] MV:do_assign_one...
[mman] MV:penv: penv_3 = (3,[15] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       } )
[mman] MV:senv: senv_0 = @(0,penv_3,
       [0] 
       {} @)
[mman] MV:left and right of MDW: fn(_heapstart) := __hli
[mman] MV:left and right of MDW: __hli := (__hli + 65360)
[mman] MSH:evalL(fn(_heapstart)) .....
[mman] MSH:evalL afeat(fk, _heapstart)
[mman] MSH:evalL(_heapstart) .....
[mman] MV:after mutate left and right: fn(sv_4) := sbrk(65360)
[mman] MV:eshape mutate
[mman] MSH:Add feature 'csz' for 'id:6'
[mman] MSH:Add feature 'fn' for 'id:6'
[mman] MSH:penv1: penv_3 = (3,[15] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       } )
[mman] MSH:senv2: senv_2 = @(0,penv_3,
       [3] 
       {	(15)__s15;	(16)c6__csz;	(17)c6__fn;} @)
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 5
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW:env2apron: 
        eid5 -> [2]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> __s15:int 5> _heapend:int 6> _heapstart:int 7> c4__csz:int 8> c4__fn:int 9> c6__csz:int 10> c6__fn:int 11> c7__csz:int 12> c7__fn:int 13> frhd:int 14> man:int 15> memleft:int 16> p1:int 17> p2:int]
[mman] DW: emvironment changed
[mman] DW:do_assign: c4__fn:=__hli
[mman] DW:do_assign: __hli:=__hli +_i,0 65360
[mman] DW: after do_assign 
       ({eid_5}[|-__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                                      memleft=0; frhd=0; c7__fn=0; c7__csz=0;
                                      c4__csz=0; p2>=0; p1>=0; man>=0;
                                      __hli-65360>=0|])
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({seid:2}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(15)__s15::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(16)c6__csz,fn:(17)c6__fn,]  * 
       blk((15)__s15,(2)__hli) * 
       emp,
        
       	 dwords:{eid_5}[|-__hli+c4__fn+65360=0; -__hli+__hst+65360=0; memleft=0; frhd=0;
                c7__fn=0; c7__csz=0; c4__csz=0; p2>=0; p1>=0; man>=0; __hli-65360>=0|] 
       )
[mman] =========================
        DF:transfer_stmt_main stmt_id: 78
[mman] DF:function called: sbrk'
[mman] DF:transfer_sbrk: /* sid:78 */
                         _heapend.ptr = (struct hdr *)sbrk(0);
[mman] ASY:transform_lval2var: _heapend.ptr
[mman] ASY:transform_sbrk: fn(_heapend):=__hole[sbrk(0)]
[mman] to: fn(_heapend):=sbrk(0)
[mman] ASY:transform_lval2var: _heapend.ptr
[mman] ASY:transform_sbrk: fn(_heapend):=__hole[sbrk(0)] (MDW)
[mman] to: fn(_heapend):=__hli
[mman] to: __hli:=(__hli + 0)
[mman] MV:do_assign: fn(_heapend):=sbrk(0)
[mman] MV:do_assign_one...
[mman] MV:penv: penv_5 = (4,[18] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)__s15;	(16)c6__csz;	(17)c6__fn;} )
[mman] MV:senv: senv_2 = @(0,penv_3,
       [3] 
       {	(15)__s15;	(16)c6__csz;	(17)c6__fn;} @)
[mman] MV:left and right of MDW: fn(_heapend) := __hli
[mman] MV:left and right of MDW: __hli := (__hli + 0)
[mman] MSH:evalL(fn(_heapend)) .....
[mman] MSH:evalL afeat(fk, _heapend)
[mman] MSH:evalL(_heapend) .....
[mman] MV:after mutate left and right: fn(sv_7) := sbrk(0)
[mman] MV:eshape mutate
[mman] DW:do_assign: c7__fn:=__hli
[mman] DW:do_assign: __hli:=__hli +_i,0 0
[mman] DW: after do_assign 
       ({eid_5}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                                      -__hli+__hst+65360=0; memleft=0; frhd=0;
                                      c7__csz=0; c4__csz=0; p2>=0; p1>=0; man>=0;
                                      __hli-65360>=0|])
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({seid:2}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(15)__s15::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(16)c6__csz,fn:(17)c6__fn,]  * 
       blk((15)__s15,(2)__hli) * 
       emp,
        
       	 dwords:{eid_5}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                memleft=0; frhd=0; c7__csz=0; c4__csz=0; p2>=0; p1>=0; man>=0;
                __hli-65360>=0|] 
       )
[mman] =========================
        DF:transfer_stmt_main stmt_id: 79
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[_heapstart.ptr]
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] to: frhd:=fn(_heapstart)
[mman] MV:do_assign: frhd:=fn(_heapstart)
[mman] MV:do_assign_one...
[mman] MV:penv: penv_5 = (4,[18] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)__s15;	(16)c6__csz;	(17)c6__fn;} )
[mman] MV:senv: senv_2 = @(0,penv_3,
       [3] 
       {	(15)__s15;	(16)c6__csz;	(17)c6__fn;} @)
[mman] MV:left and right of MDW: frhd := fn(_heapstart)
[mman] MSH:evalL(frhd) .....
[mman] MV:after mutate left and right: sv_10 := sv_6
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, location in stack...
[mman] MSH: svR: (6)c4__fn
[mman] MSH:mutate_stack
[mman] DW:do_assign: frhd:=c4__fn
[mman] DW: after do_assign 
       ({eid_5}[|-__hli+frhd+65360=0; -__hli+c7__fn=0;
                                      -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                                      memleft=0; c7__csz=0; c4__csz=0; p2>=0; 
                                      p1>=0; man>=0; __hli-65360>=0|])
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({seid:2}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(15)__s15::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(16)c6__csz,fn:(17)c6__fn,]  * 
       blk((15)__s15,(2)__hli) * 
       emp,
        
       	 dwords:{eid_5}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; memleft=0; c7__csz=0; c4__csz=0; p2>=0; 
                p1>=0; man>=0; __hli-65360>=0|] 
       )
[mman] =========================
        DF:transfer_stmt_main stmt_id: 80
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: frhd->ptr
[mman] transform_assign: fn(frhd):=__hole[(struct hdr *)0]
[mman] build cast(4) of (4)
[mman] to: fn(frhd):=0
[mman] MV:do_assign: fn(frhd):=0
[mman] MV:do_assign_one...
[mman] MV:penv: penv_5 = (4,[18] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)__s15;	(16)c6__csz;	(17)c6__fn;} )
[mman] MV:senv: senv_2 = @(0,penv_3,
       [3] 
       {	(15)__s15;	(16)c6__csz;	(17)c6__fn;} @)
[mman] MV:left and right of MDW: fn(frhd) := 0
[mman] MSH:evalL(fn(frhd)) .....
[mman] MSH:evalL afeat(fk, frhd)
[mman] MSH:evalL(frhd) .....
[mman] MV:after mutate left and right: fn(sv_6) := 0
[mman] MV:eshape mutate
[mman] MSH:mutate_meminfo, Feature......
[mman] DW:do_assign: c6__fn:=0
[mman] DW: after do_assign 
       ({eid_5}[|-__hli+frhd+65360=0; -__hli+c7__fn=0;
                                      -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                                      memleft=0; c7__csz=0; c6__fn=0; c4__csz=0;
                                      p2>=0; p1>=0; man>=0; __hli-65360>=0|])
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({seid:2}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(15)__s15::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(16)c6__csz,fn:(17)c6__fn,]  * 
       blk((15)__s15,(2)__hli) * 
       emp,
        
       	 dwords:{eid_5}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; memleft=0; c7__csz=0; c6__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; __hli-65360>=0|] 
       )
[mman] =========================
        DF:transfer_stmt_main stmt_id: 81
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: frhd->size
[mman] transform_assign: csz(frhd):=(__hole * 8)[(unsigned int)((char *)_heapend.ptr - (char *)_heapstart.ptr) / sizeof(HEADER)]
[mman] replace_vinfo _heapend/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: csz(frhd):=(((fn(_heapend) - fn(_heapstart)) / 8) * 8)
[mman] MV:do_assign: csz(frhd):=(((fn(_heapend) - fn(_heapstart)) / 8) * 8)
[mman] MV:do_assign_one...
[mman] MV:penv: penv_5 = (4,[18] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)__s15;	(16)c6__csz;	(17)c6__fn;} )
[mman] MV:senv: senv_2 = @(0,penv_3,
       [3] 
       {	(15)__s15;	(16)c6__csz;	(17)c6__fn;} @)
[mman] MV:left and right of MDW: csz(frhd) := (((fn(_heapend) - fn(_heapstart)) / 8) * 8)
[mman] MSH:evalL(csz(frhd)) .....
[mman] MSH:evalL afeat(fk, frhd)
[mman] MSH:evalL(frhd) .....
[mman] MV:after mutate left and right: csz(sv_6) := (((sv_9 - sv_6) / 8) * 8)
[mman] MV:eshape mutate
[mman] failure: Unsupported assign
[mman] DW:do_assign: c6__csz:=(c7__fn -_i,0 c4__fn) /_i,0 8 *_i,0 8
[mman] DW: after do_assign 
       ({eid_5}[|-__hli+frhd+65360=0; -__hli+c7__fn=0;
                                      -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                                      memleft=0; c7__csz=0; c6__fn=0; c4__csz=0;
                                      -c6__csz+65368>=0; p2>=0; p1>=0; man>=0;
                                      c6__csz-65352>=0; __hli-65360>=0|])
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({seid:2}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(15)__s15::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(16)c6__csz,fn:(17)c6__fn,]  * 
       blk((15)__s15,(2)__hli) * 
       emp,
        
       	 dwords:{eid_5}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; memleft=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; p2>=0; p1>=0; man>=0; c6__csz-65352>=0;
                __hli-65360>=0|] 
       )
[mman] =========================
        DF:transfer_stmt_main stmt_id: 82
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)frhd->size]
[mman] replace_vinfo frhd/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo frhd/_heapstart in 8
[mman] replace_vinfo frhd/_heapstart in csz(_heapstart)
[mman] build cast(2) of (2)
[mman] to: memleft:=(csz(frhd) / 8)
[mman] MV:do_assign: memleft:=(csz(frhd) / 8)
[mman] MV:do_assign_one...
[mman] MV:penv: penv_5 = (4,[18] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)__s15;	(16)c6__csz;	(17)c6__fn;} )
[mman] MV:senv: senv_2 = @(0,penv_3,
       [3] 
       {	(15)__s15;	(16)c6__csz;	(17)c6__fn;} @)
[mman] MV:left and right of MDW: memleft := (csz(frhd) / 8)
[mman] MSH:evalL(memleft) .....
[mman] MV:after mutate left and right: sv_11 := (sv_16 / 8)
[mman] MV:eshape mutate
[mman] failure: Unsupported assign
[mman] DW:do_assign: memleft:=c6__csz /_i,0 8
[mman] DW: after do_assign 
       ({eid_5}[|-__hli+frhd+65360=0; -__hli+c7__fn=0;
                                      -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                                      c7__csz=0; c6__fn=0; c4__csz=0;
                                      -c6__csz+65368>=0; -c6__csz+8memleft+8>=0;
                                      p2>=0; p1>=0; man>=0; c6__csz-8memleft>=0;
                                      c6__csz-65352>=0; __hli-65360>=0|])
[mman] MV:finish do_assign.
[mman] MV:new eshape value:
        ({seid:2}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(15)__s15::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(16)c6__csz,fn:(17)c6__fn,]  * 
       blk((15)__s15,(2)__hli) * 
       emp,
        
       	 dwords:{eid_5}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8memleft+8>=0; p2>=0; p1>=0; man>=0;
                c6__csz-8memleft>=0; c6__csz-65352>=0; __hli-65360>=0|] 
       )
[mman] =========================
        DF:transfer_stmt_main stmt_id: 104
[mman] compute_fun_aux done....
[mman] DF:ret_callee: {seid:2}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(15)__s15::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(16)c6__csz,fn:(17)c6__fn,]  * 
       blk((15)__s15,(2)__hli) * 
       emp,
        
       	 dwords:{eid_5}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8memleft+8>=0; p2>=0; p1>=0; man>=0;
                c6__csz-8memleft>=0; c6__csz-65352>=0; __hli-65360>=0|]
[mman] DF:ret_call: laInit(...)
[mman] MEV:Unify penvs 3, 2
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] forget _heapstart,... in {seid:0}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (7)_heapend |-> (7)_heapend,
        
       heap list 
       [(4)_heapstart::(7)_heapend::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       emp,
        
       	 dwords:{eid_3}[|-__hli+__hst=0; memleft=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; p2>=0; p1>=0; man>=0; __hli>=0|]
[mman] MV:change_env...
[mman] MV:eid:0, eiold:3, einew: 6
[mman] return state: {seid:2}eshape: stack: 
        (4)_heapstart |-> (4)_heapstart,
        (6)c4__fn |-> (6)c4__fn,
        (7)_heapend |-> (7)_heapend,
        (10)frhd |-> (6)c4__fn,
        
       heap list 
       [(4)_heapstart::(7)_heapend::(6)c4__fn::(15)__s15::]
       atoms:
       chd((4)_heapstart)[csz:(5)c4__csz,fn:(6)c4__fn,]  * 
       chd((7)_heapend)[csz:(8)c7__csz,fn:(9)c7__fn,]  * 
       chd((6)c4__fn)[csz:(16)c6__csz,fn:(17)c6__fn,]  * 
       blk((15)__s15,(2)__hli) * 
       emp,
        
       	 dwords:{eid_5}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; c7__csz=0; c6__fn=0; c4__csz=0;
                -c6__csz+65368>=0; -c6__csz+8memleft+8>=0; p2>=0; p1>=0; man>=0;
                c6__csz-8memleft>=0; c6__csz-65352>=0; __hli-65360>=0|]
[mman] MV:change_env...
[mman] MV:eid:2, eiold:2, einew: 6
[mman] MV:change_env...
[mman] MV:eid:6, eiold:6, einew: 3
[mman] =========================
        DF:transfer_stmt_main stmt_id: 86
[mman] s.skind: Instr1
[mman] ASY:transform_lval2var: man
[mman] transform_assign: man:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: man:=0
[mman] MV:do_assign: man:=0
[mman] MV:do_assign_one...
[mman] MV:penv: penv_5 = (4,[18] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)__s15;	(16)c6__csz;	(17)c6__fn;} )
[mman] failure: Unexpected exception.
                Please submit bug report (Ref. "Not_found").
[kernel] Current source was: /Users/yuezhuang/Documents/projects/mem copy/bench/la/lamain.c:8
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