(** 
**
** author: bin fang 
**)

{
open C_parser

let string_tokens = Hashtbl.create 200
let _ = 
  let lst_string_tokens = 
  [
    "assert",  (fun l -> T_assert l) ;
    "null",    (fun l -> T_null l);
    "break"    (fun l -> T_break l);
    "char"     (fun l -> T_char l);
    "short"    (fun l -> T_short l);
    "float"    (fun l -> T_float l);
    "int"      (fun l -> T_int l);
    "union"    (fun l -> T_union l);
    "if"       (fun l -> T_if l);
    "else"     (fun l -> T_else l);
    "while"    (fun l -> T_while l);
  ] in 
  List.iter (
    fun (str, tok) 
      -> Hashtbl.add string_tokens str tok )
    lst_string_tokens
  let receive_string_token (s : string) = 
    try Hashtbl.find string_tokens s !Lex_lib.num_line 
    with Not_found -> V_string s 
}

rule tokens = parse 
| ' ' | '\t'          { tokens lexbuf }
| '\n'                { incr Lex_lib.num_line; 
                        tokens lexbuf }
| '/''/'[^'\n']*'\n'  { incr Lex_lib.num_line;
                        tokens lexbuf }
| '\"'[^'\"']*'\"'    { let str = Lexing.lexme lexbuf in 
                        let n = String.length str in 
                        V_qstring (String.sub str 1 (n-2)) }
| ['0'-'9']+          { V_int (int_of_string (Lexing.lexme lexbuf))}
| (['a'-'z']|['A'-'Z']|'_')(['a'-'z']|['A'-'Z']|'_'|['0'-'0'])*
                      { let str = Lexing.lexme lexbuf in 
                        receive_string_token str}
| "&&"                { T_ampamp } 
| "||"                { T_pipepipe }
| "->"                { T_arrow }
| "!="                { T_noteq }
| "=="                { T_eqeq }
| ">="                { T_ge } 
| '>'                 { T_gt }
| "<="                { T_le }
| '<'                 { T_lt }
| ','                 { T_comma }
| ';'                 { T_semicolon !Lex_lib.num_line }
| '&'                 { T_amp} 
| '.'                 { T_dot }
| '='                 { T_eq }
| '-'                 { T_minus }
| '|'                 { T_pipe } 
| '+'                 { T_plus }
| '*'                 { T_star }
| '%'                 { T_percent }
| '{'                 { T_lbrace !Lex_lib.num_line }
| '}'                 { T_rbrace !Lex_lib.num_line }
| '('                 { T_lparen }
| ')'                 { T_rparen }
| '['                 { T_lbrack }
| ']'                 { T_rbrack }
| eof                 { T_eof }                