open Cil_types

let print_stmt out = function
  | Instr i -> Printer.pp_instr out i
  | Return _ -> Format.pp_print_string out "<return>"
  | Goto _ -> Format.pp_print_string out "<goto>"
  | Break _ -> Format.pp_print_string out "<break>"
  | Continue _ -> Format.pp_print_string out "<continue>"
  | If (e,_,_,_) -> Format.fprintf out "if %a" Printer.pp_exp e
  | Switch (e,_,_,_) -> Format.fprintf out "switch %a" Printer.pp_exp e
  | Loop _ -> Format.fprintf out "<loop>"
  | Block _ -> Format.fprintf out "<block>"
  | UnspecifiedSequence _ -> Format.fprintf out "<unspecified sequence>"
  | TryFinally _ | TryExcept _  -> Format.fprintf out "<try>"
  | _ ->()

class print_cfg out = object
  inherit Visitor.frama_c_inplace

  method vfile _ =
    Format.fprintf out "@[<hov 2>digraph cfg {@ ";
    Cil.DoChildrenPost (fun f -> Format.fprintf out "}@]@."; f)

  method vglob_aux g =
    match g with
    | GFun(f,_) ->
        Format.fprintf out "@[<hov 2>subgraph cluster_%a {@ \
                           @[<hv 2>graph@ [label=\"%a\"];@]@ "
          Printer.pp_varinfo f.svar
          Printer.pp_varinfo f.svar;
        Cil.DoChildrenPost(fun g -> Format.fprintf out "}@]@ "; g)
    | _ -> Cil.SkipChildren

  (*method vstmt_aux s =
    Format.fprintf out "@[<hov 2>s%d@[[label=\"%a\"]@];@ "
      s.sid print_stmt s.skind;
    List.iter
      (fun succ -> Format.fprintf out "@[s%d -> s%d;@]@ " s.sid succ.sid)
      s.succs;
    Format.fprintf out "@]";
    Cil.DoChildren*)

(* node in color *)
  method vstmt_aux s =
    let color =
        if Db.Value.is_computed () then
          let state = Db.Value.get_stmt_state s in
          let reachable = Db.Value.is_reachable state in
          if reachable then "fillcolor=\"#ccffcc\" style=filled"
          else "fillcolor=pink style=filled"
        else ""
    in
    Format.fprintf out "@[s%d@ [label=%S %s]@];@ "
      s.sid (Pretty_utils.to_string print_stmt s.skind) color;
    List.iter
      (fun succ -> Format.fprintf out "@[s%d -> s%d;@]@ " s.sid succ.sid)
      s.succs;
    Cil.DoChildren
end

let run () =
  let chan = open_out "cfg.out" in
  let fmt = Format.formatter_of_out_channel chan in
  Visitor.visitFramacFileSameGlobals (new print_cfg fmt) (Ast.get ());
  close_out chan

let () = Db.Main.extend run
