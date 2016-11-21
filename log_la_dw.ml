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
[mman] Entry_point: main
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
[mman] DF:init_global_assigns: fn(_heapstart) := 0
[mman] DF:init_global_assigns: csz(_heapstart) := 0
[mman] DF:init_global_assigns: fn(_heapend) := 0
[mman] DF:init_global_assigns: csz(_heapend) := 0
[mman] DF:init_global_assigns: memleft := 0
[mman] DF: constraint: frhd>=0
[mman] DF: constraint: sv_2>=0
[mman] DF: constraint: (sv_2 - sv_3)=0
[mman] DW:MV-init_globals
[mman] DW:env2apron: 
        eid3 -> [1]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c4__csz:int 7> c4__fn:int 8> c7__csz:int 9> c7__fn:int 10> frhd:int 11> man:int 12> memleft:int 13> p1:int 14> p2:int]
[mman] DW:do_assign: c4__fn:=0
[mman] DW:do_assign: c4__csz:=0
[mman] DW:do_assign: c7__fn:=0
[mman] DW:do_assign: c7__csz:=0
[mman] DW:do_assign: memleft:=0
[mman] DW: after do_assign 
       ({eid_3}[|memleft=0; c7__fn=0; c7__csz=0; c4__fn=0;
                                      c4__csz=0|])
[mman] DW: do assign done
[mman] DW: do meet exp
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
[mman] DW: after meep 
        ({eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0;
                                  c4__fn=0; c4__csz=0; frhd>=0; __hli>=0|])
[mman] DW: init_globals finished
[mman] DF:global state: ({eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0;
                                  c4__fn=0; c4__csz=0; frhd>=0; __hli>=0|])
[mman] DF: initial_state_stmt (/* sid:85 */
                               laInit();)
[mman] DF: set_fun_locals...
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
[mman] DF:initial state (/* sid:85 */
                         laInit();): {eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:Start general analysis
[mman] =====================================
       DF:transfer_stmt_main: sid:85
        stmt:/* sid:85 */
             laInit();
          on {eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:transfer_call
[mman] ------------
        DF:do_call: laInit(...)
[mman] DF:compute_call_state
[mman] DF:compute_fun_init: 
        caller state:({eid_3}[|-__hli+__hst=0; memleft=0;
                                                     c7__fn=0; c7__csz=0; c4__fn=0;
                                                     c4__csz=0; p2>=0; p1>=0;
                                                     man>=0; frhd>=0; __hli>=0|])
[mman] DF:eid_caller:3; 
        eid_callee:0
[mman] DF:caller doesn't return void
[mman] DW:forget __retres,... in
        {eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:call_state_forgot_retres: 
        {eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] MEV:Unify penvs 3, 0
[mman] DF:unified envs 
        eid_common:3: penv_3 = (3,[15] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       } )
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 3
[mman] DW: emvironment changed
[mman] DF:extended caller value:
        {eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF: after formal args assign: 
        {eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 0
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW:env2apron: 
        eid0 -> [2]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c4__csz:int 7> c4__fn:int 8> c7__csz:int 9> c7__fn:int 10> frhd:int 11> memleft:int]
[mman] DW: emvironment changed
[mman] DF:After project out caller locals: 
        {eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
[mman] DF: set_fun_locals...
[mman] MDW:meet_exp, sei:0, dw.eid:0 on 
        ({eid_0}[|-__hli+__hst=0; memleft=0;
                                                    c7__fn=0; c7__csz=0; c4__fn=0;
                                                    c4__csz=0; frhd>=0; __hli>=0|]) ......
[mman] DW: after meet_exp 
       ({eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0;
                                     c4__fn=0; c4__csz=0; frhd>=0; __hli>=0|])
[mman] DF:State at first stmt (/* sid:77 */
                               _heapstart.ptr = (struct hdr *)sbrk(65360);): {eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
        _______________
[mman] DF:init_callee_state: ({eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0;
                                       c7__csz=0; c4__fn=0; c4__csz=0; frhd>=0;
                                       __hli>=0|])
[mman] DF:compute_return_state
[mman] DF:compute_fun_aux....
[mman] DW:stmt_init:/* sid:77 */
                    _heapstart.ptr = (struct hdr *)sbrk(65360);
[mman] DW:env of eid_init eid_0: penv_0 = (2,[12] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;} )
[mman] =====================================
       DF:transfer_stmt_main: sid:77
        stmt:/* sid:77 */
             _heapstart.ptr = (struct hdr *)sbrk(65360);
          on {eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
[mman] transfer_sbrk: /* sid:77 */
                      _heapstart.ptr = (struct hdr *)sbrk(65360);
       on {eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
[mman] ASY:transform_lval2var: _heapstart.ptr
[mman] ASY:transform_sbrk: fn(_heapstart):=__hole[sbrk(65360)] (DW)
[mman] to: fn(_heapstart):=__hli (DW)
[mman] to: __hli:=(__hli + 65360) (DW)
[mman] MDW:to_texpr, seid:0
[mman] MDW:to_texpr, seid:0
[mman] DW:do_assign: c4__fn:=__hli
[mman] DW:do_assign: __hli:=__hli +_i,0 65360
[mman] DW: after do_assign 
       ({eid_0}[|-__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                                      memleft=0; c7__fn=0; c7__csz=0; c4__csz=0;
                                      frhd>=0; __hli-65360>=0|])
[mman] =====================================
       DF:transfer_stmt_main: sid:78
        stmt:/* sid:78 */
             _heapend.ptr = (struct hdr *)sbrk(0);
          on {eid_0}[|-__hli+c4__fn+65360=0; -__hli+__hst+65360=0; memleft=0; c7__fn=0;
                c7__csz=0; c4__csz=0; frhd>=0; __hli-65360>=0|]
[mman] transfer_sbrk: /* sid:78 */
                      _heapend.ptr = (struct hdr *)sbrk(0);
       on {eid_0}[|-__hli+c4__fn+65360=0; -__hli+__hst+65360=0; memleft=0; c7__fn=0;
                c7__csz=0; c4__csz=0; frhd>=0; __hli-65360>=0|]
[mman] ASY:transform_lval2var: _heapend.ptr
[mman] ASY:transform_sbrk: fn(_heapend):=__hole[sbrk(0)] (DW)
[mman] to: fn(_heapend):=__hli (DW)
[mman] to: __hli:=(__hli + 0) (DW)
[mman] MDW:to_texpr, seid:0
[mman] MDW:to_texpr, seid:0
[mman] DW:do_assign: c7__fn:=__hli
[mman] DW:do_assign: __hli:=__hli +_i,0 0
[mman] DW: after do_assign 
       ({eid_0}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                                      -__hli+__hst+65360=0; memleft=0; c7__csz=0;
                                      c4__csz=0; frhd>=0; __hli-65360>=0|])
[mman] =====================================
       DF:transfer_stmt_main: sid:79
        stmt:/* sid:79 */
             frhd = _heapstart.ptr;
          on {eid_0}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                memleft=0; c7__csz=0; c4__csz=0; frhd>=0; __hli-65360>=0|]
[mman] ASY:transform_lval2var: frhd
[mman] transform_assign: frhd:=__hole[_heapstart.ptr]
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] to: frhd:=fn(_heapstart)
[mman] MDW:to_texpr, seid:0
[mman] DW:do_assign: frhd:=c4__fn
[mman] DW: after do_assign 
       ({eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0;
                                      -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                                      memleft=0; c7__csz=0; c4__csz=0;
                                      __hli-65360>=0|])
[mman] =====================================
       DF:transfer_stmt_main: sid:80
        stmt:/* sid:80 */
             frhd->ptr = (struct hdr *)0;
          on {eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; memleft=0; c7__csz=0; c4__csz=0;
                __hli-65360>=0|]
[mman] ASY:transform_lval2var: frhd->ptr
[mman] transform_assign: fn(frhd):=__hole[(struct hdr *)0]
[mman] build cast(4) of (4)
[mman] to: fn(frhd):=0
[mman] DW:do_assign: __hole:=0
[mman] DW: after do_assign 
       ({eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0;
                                      -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                                      memleft=0; c7__csz=0; c4__csz=0; __hole=0;
                                      __hli-65360>=0|])
[mman] =====================================
       DF:transfer_stmt_main: sid:81
        stmt:/* sid:81 */
             frhd->size = (unsigned int)((char *)_heapend.ptr - (char *)_heapstart.ptr) / sizeof(HEADER);
          on {eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; memleft=0; c7__csz=0; c4__csz=0; __hole=0;
                __hli-65360>=0|]
[mman] ASY:transform_lval2var: frhd->size
[mman] transform_assign: csz(frhd):=(__hole * 8)[(unsigned int)((char *)_heapend.ptr - (char *)_heapstart.ptr) / sizeof(HEADER)]
[mman] replace_vinfo _heapend/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] replace_vinfo _heapstart/_heapstart in fn(_heapstart)
[mman] build cast(4) of (4)
[mman] build cast(4) of (4)
[mman] to: csz(frhd):=(((fn(_heapend) - fn(_heapstart)) / 8) * 8)
[mman] MDW:to_texpr, seid:0
[mman] MDW:to_texpr, seid:0
[mman] DW:do_assign: __hole:=(c7__fn -_i,0 c4__fn) /_i,0 8 *_i,0 8
[mman] DW: after do_assign 
       ({eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0;
                                      -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                                      memleft=0; c7__csz=0; c4__csz=0;
                                      -__hole+65368>=0; __hole-65352>=0;
                                      __hli-65360>=0|])
[mman] =====================================
       DF:transfer_stmt_main: sid:82
        stmt:/* sid:82 */
             memleft = (short)frhd->size;
          on {eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; memleft=0; c7__csz=0; c4__csz=0;
                -__hole+65368>=0; __hole-65352>=0; __hli-65360>=0|]
[mman] ASY:transform_lval2var: memleft
[mman] transform_assign: memleft:=__hole[(short)frhd->size]
[mman] replace_vinfo frhd/_heapstart in (csz(_heapstart) / 8)
[mman] replace_vinfo frhd/_heapstart in 8
[mman] replace_vinfo frhd/_heapstart in csz(_heapstart)
[mman] build cast(2) of (2)
[mman] to: memleft:=(csz(frhd) / 8)
[mman] MDW:to_texpr, seid:0
[mman] DW:do_assign: memleft:=__hole /_i,0 8
[mman] DW: after do_assign 
       ({eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0;
                                      -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                                      c7__csz=0; c4__csz=0; -__hole+65368>=0;
                                      -__hole+8memleft+8>=0; __hole-8memleft>=0;
                                      __hole-65352>=0; __hli-65360>=0|])
[mman] =====================================
       DF:transfer_stmt_main: sid:104
        stmt:/* sid:104 */
             return;
          on {eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; c7__csz=0; c4__csz=0; -__hole+65368>=0;
                -__hole+8memleft+8>=0; __hole-8memleft>=0; __hole-65352>=0;
                __hli-65360>=0|]
[mman] transfer_return: {eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; c7__csz=0; c4__csz=0; -__hole+65368>=0;
                -__hole+8memleft+8>=0; __hole-8memleft>=0; __hole-65352>=0;
                __hli-65360>=0|]
[mman] ------------
        DF:ret_call: laInit(...)
[mman] DF:combine callee and caller state
[mman] DF:caller state:
        ({eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0;
                                   c4__fn=0; c4__csz=0; p2>=0; p1>=0; man>=0;
                                   frhd>=0; __hli>=0|])
[mman] DF:caller_eid 3, callee_eid 0
[mman] MEV:Unify penvs 3, 0
[mman] DF:eid_common 3
[mman] DW:forget _heapstart,... in
        {eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:state_caller_noglobs:
        {eid_3}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; p2>=0;
                p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 3
[mman] DW: emvironment changed
[mman] DF:state_caller_extended:
        {eid_3}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; p2>=0;
                p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] DF:state_callee_ret_update: {eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; c7__csz=0; c4__csz=0; -__hole+65368>=0;
                -__hole+8memleft+8>=0; __hole-8memleft>=0; __hole-65352>=0;
                __hli-65360>=0|]
[mman] DW:change_env...
[mman] DW:eid:0, eiold:0, einew: 3
[mman] DW:assertion value eid 0 = old eid 0
[mman] DW: emvironment changed
[mman] DF:intersect the two extended values
[mman] DF:caller state extended: {eid_3}[|-__hli+__hst=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0; p2>=0;
                p1>=0; man>=0; frhd>=0; __hli>=0|] 
        callee state: {eid_3}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; c7__csz=0; c4__csz=0; -__hole+65368>=0;
                -__hole+8memleft+8>=0; __hole-8memleft>=0; __hole-65352>=0;
                __hli-65360>=0|]
[mman] DW:intersects...
[mman] DW:after meet:
        ({eid_3}bottom)
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 3
[mman] DW: emvironment changed
[mman] =====================================
       DF:transfer_stmt_main: sid:86
        stmt:/* sid:86 */
             man = (void *)0;
          on {eid_3}bottom
[mman] ASY:transform_lval2var: man
[mman] transform_assign: man:=__hole[(void *)0]
[mman] build cast(4) of (4)
[mman] to: man:=0
[mman] DW:do_assign: man:=0
[mman] DW: after do_assign 
       ({eid_3}bottom)
[mman] =====================================
       DF:transfer_stmt_main: sid:87
        stmt:/* sid:87 */
             p1 = laAlloc(20);
          on {eid_3}bottom
[mman] DF:transfer_call
[mman] ------------
        DF:do_call: laAlloc(...)
[mman] DF:compute_call_state
[mman] DF:compute_fun_init: 
        caller state:({eid_3}bottom)
[mman] DF:eid_caller:3; 
        eid_callee:1
[mman] DF:caller doesn't return void
[mman] DW:forget __retres,... in
        {eid_3}bottom
[mman] DF:call_state_forgot_retres: 
        {eid_3}bottom
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:unified envs 
        eid_common:5: penv_5 = (1,[19] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)f1677_nbytes;	(16)nxt;	(17)prev;	(18)nunits;} )
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 5
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW:env2apron: 
        eid5 -> [3]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c4__csz:int 7> c4__fn:int 8> c7__csz:int 9> c7__fn:int 10> f1677_nbytes:int 11> frhd:int 12> man:int 13> memleft:int 14> nunits:int 15> nxt:int 16> p1:int 17> p2:int 18> prev:int]
[mman] DW: emvironment changed
[mman] DF:extended caller value:
        {eid_5}bottom
[mman] DW:do_assign: f1677_nbytes:=20
[mman] DW: after do_assign 
       ({eid_5}bottom)
[mman] DF: after formal args assign: 
        {eid_5}bottom
[mman] DW:change_env...
[mman] DW:eid:5, eiold:5, einew: 1
[mman] DW:assertion value eid 5 = old eid 5
[mman] DW:env2apron: 
        eid1 -> [4]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c4__csz:int 7> c4__fn:int 8> c7__csz:int 9> c7__fn:int 10> f1677_nbytes:int 11> frhd:int 12> memleft:int 13> nunits:int 14> nxt:int 15> prev:int]
[mman] DW: emvironment changed
[mman] DF:After project out caller locals: 
        {eid_1}bottom
[mman] DF: set_fun_locals...
[mman] MDW:meet_exp, sei:1, dw.eid:1 on 
        ({eid_1}bottom) ......
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] DW: after meet_exp 
       ({eid_1}bottom)
[mman] DF:State at first stmt (/* sid:50 */
                               nunits = (int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1);): {eid_1}bottom
        _______________
[mman] DF:init_callee_state: ({eid_1}bottom)
[mman] DF:compute_return_state
[mman] DF:compute_fun_aux....
[mman] DW:stmt_init:/* sid:50 */
                    nunits = (int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1);
[mman] DW:env of eid_init eid_1: penv_1 = (2,[16] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)f1677_nbytes;	(13)nxt;	(14)prev;
       	(15)nunits;} )
[mman] ------------
        DF:ret_call: laAlloc(...)
[mman] DF:combine callee and caller state
[mman] DF:caller state:
        ({eid_3}bottom)
[mman] DF:caller_eid 3, callee_eid 1
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:eid_common 5
[mman] DW:forget _heapstart,... in
        {eid_3}bottom
[mman] DF:state_caller_noglobs:
        {eid_3}bottom
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 5
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW: emvironment changed
[mman] DF:state_caller_extended:
        {eid_5}bottom
[mman] MDW:to_texpr, seid:1
[mman] DW:do_assign: __hole:=__hole
[mman] DW: after do_assign 
       ({eid_1}bottom)
[mman] DW:forget __retres,... in
        {eid_1}bottom
[mman] DF:state_callee_ret_update: {eid_1}bottom
[mman] DW:change_env...
[mman] DW:eid:1, eiold:1, einew: 5
[mman] DW:assertion value eid 1 = old eid 1
[mman] DW: emvironment changed
[mman] DF:intersect the two extended values
[mman] DF:caller state extended: {eid_5}bottom 
        callee state: {eid_5}bottom
[mman] DW:intersects...
[mman] DW:after meet:
        ({eid_5}bottom)
[mman] DW:change_env...
[mman] DW:eid:5, eiold:5, einew: 3
[mman] DW:assertion value eid 5 = old eid 5
[mman] DW: emvironment changed
[mman] ASY:transform_lval2var: p1
[mman] transform_assign: p1:=__hole[__hole]
[mman] lval2exp: found __hole
[mman] to: p1:=__hole
[mman] MDW:to_texpr, seid:3
[mman] DW:do_assign: p1:=__hole
[mman] DW: after do_assign 
       ({eid_3}bottom)
[mman] DW:forget __hole,... in
        {eid_3}bottom
[mman] =====================================
       DF:transfer_stmt_main: sid:88
        stmt:/* sid:88 */
             laAlloc(20);
          on {eid_3}bottom
[mman] DF:transfer_call
[mman] ------------
        DF:do_call: laAlloc(...)
[mman] DF:compute_call_state
[mman] DF:compute_fun_init: 
        caller state:({eid_3}bottom)
[mman] DF:eid_caller:3; 
        eid_callee:1
[mman] DF:caller doesn't return void
[mman] DW:forget __retres,... in
        {eid_3}bottom
[mman] DF:call_state_forgot_retres: 
        {eid_3}bottom
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:unified envs 
        eid_common:5: penv_5 = (3,[19] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)f1677_nbytes;	(16)nxt;	(17)prev;	(18)nunits;} )
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 5
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW: emvironment changed
[mman] DF:extended caller value:
        {eid_5}bottom
[mman] DW:do_assign: f1677_nbytes:=20
[mman] DW: after do_assign 
       ({eid_5}bottom)
[mman] DF: after formal args assign: 
        {eid_5}bottom
[mman] DW:change_env...
[mman] DW:eid:5, eiold:5, einew: 1
[mman] DW:assertion value eid 5 = old eid 5
[mman] DW: emvironment changed
[mman] DF:After project out caller locals: 
        {eid_1}bottom
[mman] DF: set_fun_locals...
[mman] MDW:meet_exp, sei:1, dw.eid:1 on 
        ({eid_1}bottom) ......
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] DW: after meet_exp 
       ({eid_1}bottom)
[mman] DF:State at first stmt (/* sid:50 */
                               nunits = (int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1);): {eid_1}bottom
        _______________
[mman] DF:init_callee_state: ({eid_1}bottom)
[mman] DF:compute_return_state
[mman] DF:compute_fun_aux....
[mman] DW:stmt_init:/* sid:50 */
                    nunits = (int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1);
[mman] DW:env of eid_init eid_1: penv_1 = (2,[16] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)f1677_nbytes;	(13)nxt;	(14)prev;
       	(15)nunits;} )
[mman] ------------
        DF:ret_call: laAlloc(...)
[mman] DF:combine callee and caller state
[mman] DF:caller state:
        ({eid_3}bottom)
[mman] DF:caller_eid 3, callee_eid 1
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:eid_common 5
[mman] DW:forget _heapstart,... in
        {eid_3}bottom
[mman] DF:state_caller_noglobs:
        {eid_3}bottom
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 5
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW: emvironment changed
[mman] DF:state_caller_extended:
        {eid_5}bottom
[mman] DW:forget __retres,... in
        {eid_1}bottom
[mman] DF:state_callee_ret_update: {eid_1}bottom
[mman] DW:change_env...
[mman] DW:eid:1, eiold:1, einew: 5
[mman] DW:assertion value eid 1 = old eid 1
[mman] DW: emvironment changed
[mman] DF:intersect the two extended values
[mman] DF:caller state extended: {eid_5}bottom 
        callee state: {eid_5}bottom
[mman] DW:intersects...
[mman] DW:after meet:
        ({eid_5}bottom)
[mman] DW:change_env...
[mman] DW:eid:5, eiold:5, einew: 3
[mman] DW:assertion value eid 5 = old eid 5
[mman] DW: emvironment changed
[mman] =====================================
       DF:transfer_stmt_main: sid:89
        stmt:/* sid:89 */
             p2 = laAlloc(20);
          on {eid_3}bottom
[mman] DF:transfer_call
[mman] ------------
        DF:do_call: laAlloc(...)
[mman] DF:compute_call_state
[mman] DF:compute_fun_init: 
        caller state:({eid_3}bottom)
[mman] DF:eid_caller:3; 
        eid_callee:1
[mman] DF:caller doesn't return void
[mman] DW:forget __retres,... in
        {eid_3}bottom
[mman] DF:call_state_forgot_retres: 
        {eid_3}bottom
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:unified envs 
        eid_common:5: penv_5 = (5,[19] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)f1677_nbytes;	(16)nxt;	(17)prev;	(18)nunits;} )
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 5
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW: emvironment changed
[mman] DF:extended caller value:
        {eid_5}bottom
[mman] DW:do_assign: f1677_nbytes:=20
[mman] DW: after do_assign 
       ({eid_5}bottom)
[mman] DF: after formal args assign: 
        {eid_5}bottom
[mman] DW:change_env...
[mman] DW:eid:5, eiold:5, einew: 1
[mman] DW:assertion value eid 5 = old eid 5
[mman] DW: emvironment changed
[mman] DF:After project out caller locals: 
        {eid_1}bottom
[mman] DF: set_fun_locals...
[mman] MDW:meet_exp, sei:1, dw.eid:1 on 
        ({eid_1}bottom) ......
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] DW: after meet_exp 
       ({eid_1}bottom)
[mman] DF:State at first stmt (/* sid:50 */
                               nunits = (int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1);): {eid_1}bottom
        _______________
[mman] DF:init_callee_state: ({eid_1}bottom)
[mman] DF:compute_return_state
[mman] DF:compute_fun_aux....
[mman] DW:stmt_init:/* sid:50 */
                    nunits = (int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1);
[mman] DW:env of eid_init eid_1: penv_1 = (2,[16] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)f1677_nbytes;	(13)nxt;	(14)prev;
       	(15)nunits;} )
[mman] ------------
        DF:ret_call: laAlloc(...)
[mman] DF:combine callee and caller state
[mman] DF:caller state:
        ({eid_3}bottom)
[mman] DF:caller_eid 3, callee_eid 1
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:eid_common 5
[mman] DW:forget _heapstart,... in
        {eid_3}bottom
[mman] DF:state_caller_noglobs:
        {eid_3}bottom
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 5
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW: emvironment changed
[mman] DF:state_caller_extended:
        {eid_5}bottom
[mman] MDW:to_texpr, seid:1
[mman] DW:do_assign: __hole:=__hole
[mman] DW: after do_assign 
       ({eid_1}bottom)
[mman] DW:forget __retres,... in
        {eid_1}bottom
[mman] DF:state_callee_ret_update: {eid_1}bottom
[mman] DW:change_env...
[mman] DW:eid:1, eiold:1, einew: 5
[mman] DW:assertion value eid 1 = old eid 1
[mman] DW: emvironment changed
[mman] DF:intersect the two extended values
[mman] DF:caller state extended: {eid_5}bottom 
        callee state: {eid_5}bottom
[mman] DW:intersects...
[mman] DW:after meet:
        ({eid_5}bottom)
[mman] DW:change_env...
[mman] DW:eid:5, eiold:5, einew: 3
[mman] DW:assertion value eid 5 = old eid 5
[mman] DW: emvironment changed
[mman] ASY:transform_lval2var: p2
[mman] transform_assign: p2:=__hole[__hole]
[mman] lval2exp: found __hole
[mman] to: p2:=__hole
[mman] MDW:to_texpr, seid:3
[mman] DW:do_assign: p2:=__hole
[mman] DW: after do_assign 
       ({eid_3}bottom)
[mman] DW:forget __hole,... in
        {eid_3}bottom
[mman] =====================================
       DF:transfer_stmt_main: sid:90
        stmt:/* sid:90 */
             laAlloc(20);
          on {eid_3}bottom
[mman] DF:transfer_call
[mman] ------------
        DF:do_call: laAlloc(...)
[mman] DF:compute_call_state
[mman] DF:compute_fun_init: 
        caller state:({eid_3}bottom)
[mman] DF:eid_caller:3; 
        eid_callee:1
[mman] DF:caller doesn't return void
[mman] DW:forget __retres,... in
        {eid_3}bottom
[mman] DF:call_state_forgot_retres: 
        {eid_3}bottom
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:unified envs 
        eid_common:5: penv_5 = (7,[19] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)f1677_nbytes;	(16)nxt;	(17)prev;	(18)nunits;} )
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 5
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW: emvironment changed
[mman] DF:extended caller value:
        {eid_5}bottom
[mman] DW:do_assign: f1677_nbytes:=20
[mman] DW: after do_assign 
       ({eid_5}bottom)
[mman] DF: after formal args assign: 
        {eid_5}bottom
[mman] DW:change_env...
[mman] DW:eid:5, eiold:5, einew: 1
[mman] DW:assertion value eid 5 = old eid 5
[mman] DW: emvironment changed
[mman] DF:After project out caller locals: 
        {eid_1}bottom
[mman] DF: set_fun_locals...
[mman] MDW:meet_exp, sei:1, dw.eid:1 on 
        ({eid_1}bottom) ......
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] MDW:to_texpr, seid:1
[mman] DW: after meet_exp 
       ({eid_1}bottom)
[mman] DF:State at first stmt (/* sid:50 */
                               nunits = (int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1);): {eid_1}bottom
        _______________
[mman] DF:init_callee_state: ({eid_1}bottom)
[mman] DF:compute_return_state
[mman] DF:compute_fun_aux....
[mman] DW:stmt_init:/* sid:50 */
                    nunits = (int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1);
[mman] DW:env of eid_init eid_1: penv_1 = (2,[16] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)f1677_nbytes;	(13)nxt;	(14)prev;
       	(15)nunits;} )
[mman] ------------
        DF:ret_call: laAlloc(...)
[mman] DF:combine callee and caller state
[mman] DF:caller state:
        ({eid_3}bottom)
[mman] DF:caller_eid 3, callee_eid 1
[mman] MEV:Unify penvs 3, 1
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:eid_common 5
[mman] DW:forget _heapstart,... in
        {eid_3}bottom
[mman] DF:state_caller_noglobs:
        {eid_3}bottom
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 5
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW: emvironment changed
[mman] DF:state_caller_extended:
        {eid_5}bottom
[mman] DW:forget __retres,... in
        {eid_1}bottom
[mman] DF:state_callee_ret_update: {eid_1}bottom
[mman] DW:change_env...
[mman] DW:eid:1, eiold:1, einew: 5
[mman] DW:assertion value eid 1 = old eid 1
[mman] DW: emvironment changed
[mman] DF:intersect the two extended values
[mman] DF:caller state extended: {eid_5}bottom 
        callee state: {eid_5}bottom
[mman] DW:intersects...
[mman] DW:after meet:
        ({eid_5}bottom)
[mman] DW:change_env...
[mman] DW:eid:5, eiold:5, einew: 3
[mman] DW:assertion value eid 5 = old eid 5
[mman] DW: emvironment changed
[mman] =====================================
       DF:transfer_stmt_main: sid:91
        stmt:/* sid:91 */
             laFree(p1);
          on {eid_3}bottom
[mman] DF:transfer_call
[mman] ------------
        DF:do_call: laFree(...)
[mman] DF:compute_call_state
[mman] DF:compute_fun_init: 
        caller state:({eid_3}bottom)
[mman] DF:eid_caller:3; 
        eid_callee:2
[mman] DF:caller doesn't return void
[mman] DW:forget __retres,... in
        {eid_3}bottom
[mman] DF:call_state_forgot_retres: 
        {eid_3}bottom
[mman] MEV:Unify penvs 3, 2
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:unified envs 
        eid_common:6: penv_6 = (1,[19] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)f1671_ap;	(16)nxt;	(17)prev;	(18)f;} )
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 6
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW:env2apron: 
        eid6 -> [5]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c4__csz:int 7> c4__fn:int 8> c7__csz:int 9> c7__fn:int 10> f:int 11> f1671_ap:int 12> frhd:int 13> man:int 14> memleft:int 15> nxt:int 16> p1:int 17> p2:int 18> prev:int]
[mman] DW: emvironment changed
[mman] DF:extended caller value:
        {eid_6}bottom
[mman] lval2exp: found p1
[mman] MDW:to_texpr, seid:6
[mman] DW:do_assign: f1671_ap:=p1
[mman] DW: after do_assign 
       ({eid_6}bottom)
[mman] DF: after formal args assign: 
        {eid_6}bottom
[mman] DW:change_env...
[mman] DW:eid:6, eiold:6, einew: 2
[mman] DW:assertion value eid 6 = old eid 6
[mman] DW:env2apron: 
        eid2 -> [6]
       [0> __hli:int 1> __hole:int 2> __hst:int 3> __null:int 4> _heapend:int 5> _heapstart:int 6> c4__csz:int 7> c4__fn:int 8> c7__csz:int 9> c7__fn:int 10> f:int 11> f1671_ap:int 12> frhd:int 13> memleft:int 14> nxt:int 15> prev:int]
[mman] DW: emvironment changed
[mman] DF:After project out caller locals: 
        {eid_2}bottom
[mman] DF: set_fun_locals...
[mman] MDW:meet_exp, sei:2, dw.eid:2 on 
        ({eid_2}bottom) ......
[mman] MDW:to_texpr, seid:2
[mman] MDW:to_texpr, seid:2
[mman] MDW:to_texpr, seid:2
[mman] DW: after meet_exp 
       ({eid_2}bottom)
[mman] DF:State at first stmt (/* sid:4 */
                               f = (HEADER *)ap - 1;): {eid_2}bottom
        _______________
[mman] DF:init_callee_state: ({eid_2}bottom)
[mman] DF:compute_return_state
[mman] DF:compute_fun_aux....
[mman] DW:stmt_init:/* sid:4 */
                    f = (HEADER *)ap - 1;
[mman] DW:env of eid_init eid_2: penv_2 = (2,[16] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)f1671_ap;	(13)nxt;	(14)prev;
       	(15)f;} )
[mman] ------------
        DF:ret_call: laFree(...)
[mman] DF:combine callee and caller state
[mman] DF:caller state:
        ({eid_3}bottom)
[mman] DF:caller_eid 3, callee_eid 2
[mman] MEV:Unify penvs 3, 2
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:eid_common 6
[mman] DW:forget _heapstart,... in
        {eid_3}bottom
[mman] DF:state_caller_noglobs:
        {eid_3}bottom
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 6
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW: emvironment changed
[mman] DF:state_caller_extended:
        {eid_6}bottom
[mman] DF:state_callee_ret_update: {eid_2}bottom
[mman] DW:change_env...
[mman] DW:eid:2, eiold:2, einew: 6
[mman] DW:assertion value eid 2 = old eid 2
[mman] DW: emvironment changed
[mman] DF:intersect the two extended values
[mman] DF:caller state extended: {eid_6}bottom 
        callee state: {eid_6}bottom
[mman] DW:intersects...
[mman] DW:after meet:
        ({eid_6}bottom)
[mman] DW:change_env...
[mman] DW:eid:6, eiold:6, einew: 3
[mman] DW:assertion value eid 6 = old eid 6
[mman] DW: emvironment changed
[mman] =====================================
       DF:transfer_stmt_main: sid:92
        stmt:/* sid:92 */
             laFree(p2);
          on {eid_3}bottom
[mman] DF:transfer_call
[mman] ------------
        DF:do_call: laFree(...)
[mman] DF:compute_call_state
[mman] DF:compute_fun_init: 
        caller state:({eid_3}bottom)
[mman] DF:eid_caller:3; 
        eid_callee:2
[mman] DF:caller doesn't return void
[mman] DW:forget __retres,... in
        {eid_3}bottom
[mman] DF:call_state_forgot_retres: 
        {eid_3}bottom
[mman] MEV:Unify penvs 3, 2
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:unified envs 
        eid_common:6: penv_6 = (3,[19] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)man;	(13)p1;	(14)p2;
       	(15)f1671_ap;	(16)nxt;	(17)prev;	(18)f;} )
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 6
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW: emvironment changed
[mman] DF:extended caller value:
        {eid_6}bottom
[mman] lval2exp: found p2
[mman] MDW:to_texpr, seid:6
[mman] DW:do_assign: f1671_ap:=p2
[mman] DW: after do_assign 
       ({eid_6}bottom)
[mman] DF: after formal args assign: 
        {eid_6}bottom
[mman] DW:change_env...
[mman] DW:eid:6, eiold:6, einew: 2
[mman] DW:assertion value eid 6 = old eid 6
[mman] DW: emvironment changed
[mman] DF:After project out caller locals: 
        {eid_2}bottom
[mman] DF: set_fun_locals...
[mman] MDW:meet_exp, sei:2, dw.eid:2 on 
        ({eid_2}bottom) ......
[mman] MDW:to_texpr, seid:2
[mman] MDW:to_texpr, seid:2
[mman] MDW:to_texpr, seid:2
[mman] DW: after meet_exp 
       ({eid_2}bottom)
[mman] DF:State at first stmt (/* sid:4 */
                               f = (HEADER *)ap - 1;): {eid_2}bottom
        _______________
[mman] DF:init_callee_state: ({eid_2}bottom)
[mman] DF:compute_return_state
[mman] DF:compute_fun_aux....
[mman] DW:stmt_init:/* sid:4 */
                    f = (HEADER *)ap - 1;
[mman] DW:env of eid_init eid_2: penv_2 = (2,[16] 
       {	(0)__null;	(1)__hole;	(2)__hli;	(3)__hst;	(4)_heapstart;
       	(5)c4__csz;	(6)c4__fn;	(7)_heapend;	(8)c7__csz;	(9)c7__fn;
       	(10)frhd;	(11)memleft;	(12)f1671_ap;	(13)nxt;	(14)prev;
       	(15)f;} )
[mman] ------------
        DF:ret_call: laFree(...)
[mman] DF:combine callee and caller state
[mman] DF:caller state:
        ({eid_3}bottom)
[mman] DF:caller_eid 3, callee_eid 2
[mman] MEV:Unify penvs 3, 2
[mman] old pvar_12/16 -> pvar_15
[mman] old pvar_13/16 -> pvar_16
[mman] old pvar_14/16 -> pvar_17
[mman] old pvar_15/16 -> pvar_18
[mman] DF:eid_common 6
[mman] DW:forget _heapstart,... in
        {eid_3}bottom
[mman] DF:state_caller_noglobs:
        {eid_3}bottom
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 6
[mman] DW:assertion value eid 3 = old eid 3
[mman] DW: emvironment changed
[mman] DF:state_caller_extended:
        {eid_6}bottom
[mman] DF:state_callee_ret_update: {eid_2}bottom
[mman] DW:change_env...
[mman] DW:eid:2, eiold:2, einew: 6
[mman] DW:assertion value eid 2 = old eid 2
[mman] DW: emvironment changed
[mman] DF:intersect the two extended values
[mman] DF:caller state extended: {eid_6}bottom 
        callee state: {eid_6}bottom
[mman] DW:intersects...
[mman] DW:after meet:
        ({eid_6}bottom)
[mman] DW:change_env...
[mman] DW:eid:6, eiold:6, einew: 3
[mman] DW:assertion value eid 6 = old eid 6
[mman] DW: emvironment changed
[mman] =====================================
       DF:transfer_stmt_main: sid:93
        stmt:/* sid:93 */
             __retres = 0;
          on {eid_3}bottom
[mman] ASY:transform_lval2var: __retres
[mman] transform_assign: __retres:=__hole[0]
[mman] to: __retres:=0
[mman] DW:do_assign: __hole:=0
[mman] DW: after do_assign 
       ({eid_3}bottom)
[mman] =====================================
       DF:transfer_stmt_main: sid:106
        stmt:/* sid:106 */
             return __retres;
          on {eid_3}bottom
[mman] transfer_return: {eid_3}bottom
[mman] End general analysis
[mman] (sid:80): {eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; memleft=0; c7__csz=0; c4__csz=0;
                __hli-65360>=0|]
[mman] (sid:81): {eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; memleft=0; c7__csz=0; c4__csz=0; __hole=0;
                __hli-65360>=0|]
[mman] (sid:82): {eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; memleft=0; c7__csz=0; c4__csz=0;
                -__hole+65368>=0; __hole-65352>=0; __hli-65360>=0|]
[mman] (sid:85): {eid_3}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; frhd>=0; __hli>=0|]
[mman] (sid:86): {eid_3}bottom
[mman] (sid:87): {eid_3}bottom
[mman] (sid:88): {eid_3}bottom
[mman] (sid:104): {eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; c7__csz=0; c4__csz=0; -__hole+65368>=0;
                -__hole+8memleft+8>=0; __hole-8memleft>=0; __hole-65352>=0;
                __hli-65360>=0|]
[mman] (sid:89): {eid_3}bottom
[mman] (sid:106): {eid_3}bottom
[mman] (sid:90): {eid_3}bottom
[mman] (sid:91): {eid_3}bottom
[mman] (sid:92): {eid_3}bottom
[mman] (sid:93): {eid_3}bottom
[mman] (sid:77): {eid_0}[|-__hli+__hst=0; memleft=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                frhd>=0; __hli>=0|]
[mman] (sid:78): {eid_0}[|-__hli+c4__fn+65360=0; -__hli+__hst+65360=0; memleft=0; c7__fn=0;
                c7__csz=0; c4__csz=0; frhd>=0; __hli-65360>=0|]
[mman] (sid:79): {eid_0}[|-__hli+c7__fn=0; -__hli+c4__fn+65360=0; -__hli+__hst+65360=0;
                memleft=0; c7__csz=0; c4__csz=0; frhd>=0; __hli-65360>=0|]
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] --------------------------------------------
[mman] Analysing 'minit'
[mman] --------------------------------------------
[mman] Analysing 'malloc'
[mman] --------------------------------------------
[mman] Analysing 'mfree'
[wp] Logging keys: .
