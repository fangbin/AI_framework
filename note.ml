  let iter_in_file_order f = 
    let treat_global = function
      | GVar(vi,init,_) -> f vi init
      | GVarDecl (_,vi,_) when not (Cil.isFunctionType vi.vtype) ->
        f vi { init = None }
      | GType _ | GCompTag _ | GCompTagDecl _ | GEnumTag _ | GEnumTagDecl _
      | GVarDecl _ | GFun _ | GAsm _ | GPragma _ | GText _ | GAnnot _ -> ()
    in
    List.iter treat_global (Ast.get ()).globals