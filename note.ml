  









  let iter_in_file_order f = 
    let treat_global = function
      | GVar(vi,init,_) -> f vi init
      | GVarDecl (_,vi,_) when not (Cil.isFunctionType vi.vtype) ->
        f vi { init = None }
      | GType _ | GCompTag _ | GCompTagDecl _ | GEnumTag _ | GEnumTagDecl _
      | GVarDecl _ | GFun _ | GAsm _ | GPragma _ | GText _ | GAnnot _ -> ()
    in
    List.iter treat_global (Ast.get ()).globals




    Mman_options.Self.debug ~level:2
         "Add '%a' of type %a (aka %a)@."
         Printer.pp_varinfo vinfo
         Printer.pp_typ vinfo.vtype
         Printer.pp_typ (Cil.unrollTypeDeep vinfo.vtype)






 # pretty.ml interface 

 (* initializing Cil_datatype's pretty printers *)
let () = Cil_datatype.Location.pretty_ref := pp_location
let () = Cil_datatype.Constant.pretty_ref := pp_constant
let () = Cil_datatype.Exp.pretty_ref := pp_exp
let () = Cil_datatype.Varinfo.pretty_ref := pp_varinfo
let () = Cil_datatype.Lval.pretty_ref := pp_lval
let () = Cil_datatype.Offset.pretty_ref := pp_offset
let () = Cil_datatype.pretty_typ_ref := pp_typ
let () = Cil_datatype.Attribute.pretty_ref := pp_attribute
let () = Cil_datatype.Stmt.pretty_ref := pp_stmt
let () = Cil_datatype.Block.pretty_ref := pp_block
let () = Cil_datatype.Instr.pretty_ref := pp_instr
let () = Cil_datatype.Logic_var.pretty_ref := pp_logic_var
let () = Cil_datatype.Model_info.pretty_ref := pp_model_info
let () = Cil_datatype.pretty_logic_type_ref := pp_logic_type
let () = Cil_datatype.Term.pretty_ref := pp_term
let () = Cil_datatype.Term_lval.pretty_ref := pp_term_lval
let () = Cil_datatype.Term_offset.pretty_ref := pp_term_offset
let () = Cil_datatype.Code_annotation.pretty_ref := pp_code_annotation
let () =
  Cil_datatype.Fieldinfo.pretty_ref := (fun fmt f -> pp_varname fmt f.fname)



# print int 

let _ = (Mman_options.Self.feedback "Unify penvs %d, %d@." ei ej) in


     let _ = Mman_options.Self.feedback "init global:Static, int @." in 
      let _ = Mman_options.Self.debug ~level:2
         "vinfo:'%a' type: %a @."
         Printer.pp_varinfo vi
         Printer.pp_typ vi.vtype 


         

 