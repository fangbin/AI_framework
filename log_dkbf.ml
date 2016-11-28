[mman] DW:env2apron: 
        seid_-1 -> [0]
       []
[kernel] Parsing FRAMAC_SHARE/libc/__fc_builtin_for_normalization.i (no preprocessing)
[kernel] Converting CABS->CIL
[kernel] Parsing ../mem copy/bench/dkbf/dkbfmain.c (with preprocessing)
/Users/yuezhuang/Documents/projects/mem copy/bench/dkbf/dksl_refine.h:2:[kernel] user error: unexpected token '*'
[kernel] Current source was: FRAMAC_SHARE/libc/__fc_builtin_for_normalization.i:37
         The full backtrace is:
         Raised at file "src/kernel_internals/typing/frontc.ml", line 69, characters 10-29
         Called from file "src/kernel_internals/typing/frontc.ml", line 76, characters 13-32
         Called from file "src/kernel_services/ast_queries/file.ml", line 500, characters 27-46
         Called from file "src/kernel_services/ast_queries/file.ml", line 515, characters 14-26
         Re-raised at file "src/kernel_services/ast_queries/file.ml", line 521, characters 43-46
         Called from file "src/kernel_services/ast_queries/file.ml", line 701, characters 46-59
         Called from file "list.ml", line 84, characters 24-34
         Called from file "src/kernel_services/ast_queries/file.ml", line 701, characters 17-76
         Called from file "src/kernel_services/ast_queries/file.ml", line 1578, characters 24-47
         Called from file "src/kernel_services/ast_queries/file.ml", line 1666, characters 4-27
         Called from file "src/kernel_services/ast_data/ast.ml", line 111, characters 2-28
         Called from file "src/kernel_services/ast_data/ast.ml", line 123, characters 53-71
         Called from file "src/kernel_internals/runtime/boot.ml", line 29, characters 6-20
         Called from file "src/kernel_services/cmdline_parameters/cmdline.ml", line 787, characters 2-9
         Called from file "src/kernel_services/cmdline_parameters/cmdline.ml", line 817, characters 18-64
         Called from file "src/kernel_services/cmdline_parameters/cmdline.ml", line 228, characters 4-8
         
         Unexpected error (Parsing.Parse_error).
         Please report as 'crash' at http://bts.frama-c.com/.
         Your Frama-C version is Aluminium-20160502.
         Note that a version and a backtrace alone often do not contain enough
         information to understand the bug. Guidelines for reporting bugs are at:
         http://bts.frama-c.com/dokuwiki/doku.php?id=mantis:frama-c:bug_reporting_guidelines
