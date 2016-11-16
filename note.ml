  









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


if (not !r) && (not !l) then 
          match List.nth llv 1, List.hd lexp  with
          | AVar vi1, ALval(AVar vi2) ->             
                if ((String.compare (vi1.vname ) "__hli" == 0) && 
                    (String.compare (vi2.vname) "__hli" == 0))
                then 

                let _ = Mman_options.Self.debug ~level:1 " initilise shape value@."  in 
                let nm = ref (ModelMap.empty) in
                   Some (!nm)
                else 
                  None
      
                else 


let _ = (Mman_options.Self.debug ~level:1 " program env %a@."
                          MEV.penv_print (MEV.penv_get eid)) in



 match esh.mem with
      | Top -> 
          (* Initially, while eshape value is Top and __hli is 
           * assigned (when sbrk is called), the initial eshape 
           * value will be created.
           *)

         let _ = (Mman_options.Self.debug ~level:1 " program env %a@."
                          MEV.penv_print (MEV.penv_get eid)) 
         in
         let _ = Mman_options.Self.debug ~level:1 " initilise shape value@."  
         in 
         if (not !r) && (not !l) then 
          match List.nth llv 1, List.hd lexp  with
          | AVar vi1, ALval(AVar vi2) ->             
                begin 
                    if ((String.compare (vi1.vname ) "__hli" == 0) && 
                        (String.compare (vi2.vname) "__hli" == 0))
                    then  
                       None 
                    else 
                      None
                end 
          | _ -> None 
          else  None

      | _ -> 


 

 let _ = (Mman_options.Self.debug ~level:1 " program env %a@."
                          MEV.penv_print (MEV.penv_get eid)) 
         in





 match ii  with
            | None  -> ()
            | Some (iii) ->  
                  begin 
                  match vi.vstorage, iii.init with
                  | Cil_types.Static, Some(Cil_types.CompoundInit(ty,ls)) ->  
                      begin 
                        (
                        List.iter 
                          (fun (ofs,ci) -> 
                               match ci with
                                | Cil_types.SingleInit(ei) ->            
                                     begin
                                      match ofs with
                                      | Field(fi,_) -> 
                                                (* get feature list *)
                                          let featlst = Mman_dabs.get_field_feature fi in
                                          List.iter 
                                            (fun fn -> 
                                              let fk = (Mman_dabs.int2featurekind feat) in
                                              ()
                                            )     
                                          featlst
                                                 


                                                 
                                      | _ -> ()
                                            end
                                | _ -> ()
                         )
                         ls
                         )
                      end

                  |_-> () 
                end 





  let _ = (Mman_options.Self.debug ~level:1 "new senv: %a @."
                 MEV.senv_print (MEV.senv_get sei)) 
      in




let _ = (Mman_options.Self.debug ~level:1 "DW:senv: %a @."
                  Mman_env.senv_print (Mman_env.senv_get eid)) 
          in

    let _ = (Mman_options.Self.debug ~level:1 "DW:penv: %a @."
                  Mman_env.penv_print (Mman_env.penv_get eid)) 
          in



let _ = Mman_options.Self.debug ~level:1 "MV:do_assign_set, exsh:%a @." 
                       MSH.pretty exsh
                in  
            let _ = Mman_options.Self.debug ~level:1 "MV:do_assign_set, dw value:%a @."    
                  MDW.pretty dw
                in









  (* *)

  let _ = (Mman_options.Self.debug ~level:2 "MSH:senv0: %a \n MSH:senv1: %a@."
          MEV.senv_print (MEV.senv_get sei0)  
          MEV.senv_print (MEV.senv_get sei1)  ) 
      in

  let _ = 
   MEV.VidMap.iter
       (fun vi ai ->
          begin  
          MEV.pretty_senvs;           
          let vinfo = MEV.penv_getvinfo sei0 vi in
          let ainfo = MEV.senv_getvinfo sei0 ai in
          Mman_options.Self.debug ~level:2 "\n %a |-> %a, "
            Mman_svar.Svar.pretty vinfo
            Mman_svar.Svar.pretty ainfo
          end 
       )
       g0.stack
     in 

  let _ = 
   MEV.VidMap.iter
       (fun vi ai ->
          begin  
          MEV.pretty_senvs;           
          let vinfo = MEV.penv_getvinfo sei1 vi in
          let ainfo = MEV.senv_getvinfo sei1 ai in
          Mman_options.Self.debug ~level:2 "\n %a |-> %a, "
            Mman_svar.Svar.pretty vinfo
            Mman_svar.Svar.pretty ainfo
          end 
       )
       g1.stack
     in 
    









DF:ret_call: laInit(...)
[mman] DF:combine callee and caller state
[mman] DF:compute_fun_ret:  caller state:({eid_3}[|-__hli+__hst=0; memleft=0;
                                                   frhd=0; c7__fn=0; c7__csz=0;
                                                   c4__fn=0; c4__csz=0; p2>=0;
                                                   p1>=0; man>=0; __hli>=0|])
[mman] DF:caller_eid 3, callee_eid 0
[mman] MEV:Unify penvs 3, 0
[mman] DF:eid_common 3
[mman] DW:forget _heapstart,... in
        {eid_3}[|-__hli+__hst=0; memleft=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0;
                c4__csz=0; p2>=0; p1>=0; man>=0; __hli>=0|]
[mman] DF:state_caller_noglobs:
        {eid_3}[|-__hli+__hst=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; __hli>=0|]
[mman] DW:change_env...
[mman] DW:eid:3, eiold:3, einew: 3
[mman] DW: emvironment changed
[mman] DF:state_caller_extended:
        {eid_3}[|-__hli+__hst=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; __hli>=0|]
[mman] DF:state_callee_ret_update: {eid_0}[|-__hli+frhd+65360=0; -__hli+c7__fn=0; -__hli+c4__fn+65360=0;
                -__hli+__hst+65360=0; c7__csz=0; c4__csz=0; -__hole+65368>=0;
                -__hole+8memleft+8>=0; __hole-8memleft>=0; __hole-65352>=0;
                __hli-65360>=0|]
[mman] DW:change_env...
[mman] DW:eid:0, eiold:0, einew: 3
[mman] DW:assertion value eid 0 = old eid 0
[mman] DW: emvironment changed
[mman] DF:intersect the two extended values
[mman] DF:caller state extended: {eid_3}[|-__hli+__hst=0; frhd=0; c7__fn=0; c7__csz=0; c4__fn=0; c4__csz=0;
                p2>=0; p1>=0; man>=0; __hli>=0|] 
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



