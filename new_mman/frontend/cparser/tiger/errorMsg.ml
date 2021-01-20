let any_errors = ref false
let file_name = ref ""
let line_num = ref 1
let line_pos = ref [1] (* 保存每行的结束位置,相对于文件开始的位置 *)
let source_stream = ref stdin

let reset () =
  any_errors := false;
  file_name := "";
  line_num := 1;
  line_pos := [1];
  source_stream := stdin

exception Error

let error pos (msg:string) =
  let rec look rest n = match rest with
    | [] -> print_string "0.0"
    | h :: r ->
      if h < pos then Printf.printf ":%d.%d" n (pos - h)
      else look r (n - 1)
  in
  any_errors := true;
  print_string !file_name;
  look !line_pos !line_num;
  print_string ":";
  print_string  msg;
  print_newline ()

let impossible msg =
  Printf.printf "Error: Compiler bug: %s\n" msg;
  flush stdout;
  raise Error
