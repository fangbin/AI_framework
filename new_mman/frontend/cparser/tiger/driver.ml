let parse filename =
  let file = open_in filename in
  let lexbuf = Lexing.from_channel file in
  ErrorMsg.reset ();
  ErrorMsg.file_name := filename;

  (* 输出所有token *)
  let rec do_it () = 
    let result = TigerLexer.tokens lexbuf in
    print_endline result;
    if (String.length result) > 3 && (String.sub result 0 3) = "EOF" then ()
    else do_it ()
  in
  do_it ();
  close_in file ;;

let main () =
  if Array.length Sys.argv = 1 then (
    print_endline "usage: tigerlex.exe <source file>";
    exit 1
  );
  parse Sys.argv.(1) ;;

(* 非交互模式下执行main,在toplevel中不执行main,否则#load模块时就会异常 *)   
if not !Sys.interactive then
  main ()