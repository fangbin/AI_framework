[mman] DW:env2apron: 
        seid_-1 -> [0]
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
       (1) s_97 (@line 31) -> e_4
       (1) s_99 (@line 69) -> e_2
       (1) s_100 (@line 69) -> e_2
       (1) s_101 (@line 93) -> e_2
       (1) s_102 (@line 93) -> e_2
       (1) s_103 (@line 112) -> e_2
       (1) s_105 (@line 151) -> e_1
       (1) s_106 (@line 151) -> e_1
       (1) s_107 (@line 161) -> e_1
       (1) s_109 (@line 180) -> e_0
       (1) s_111 (@line 15) -> e_3
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
       	(10)pfrhd;	(11)c10__csz;	(12)c10__fn;	(13)imemleft;	(14)f1602_pstr;
       	})
[mman] --------------------------------------------
[mman] Analysing the application starting at 'MAIN'
[mman] DF:Entry_point: main
[mman] DF:get_init_state...
[mman] DF:init globals...
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
[mman] DF:init_globals done
       --------------------------------------------
[mman] DF:initial_state_stmt (/* sid:86 */
                              laInit();), peid:3
[mman] DW:MV-init_globals, eid:3
[mman] DW:global state: ({eid_-1}top)
[mman] DW:global state is top, then do assign
[mman] DW:top_of eid 3
[mman] ENV:get list of symbolic variables and program variables eid: 3,
[mman] failure: Unexpected exception.
                Please submit bug report (Ref. "Not_found").
[kernel] Current source was: /Users/fangbin/Documents/github/mem_bin/bench/la/lamain.c:7
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
