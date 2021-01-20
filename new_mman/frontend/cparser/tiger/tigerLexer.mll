(*
 * 标识符: 以字母开头,由字母、数字和下划线组成的序列。区分大小写字母。
 * 注释：注释可以出现在任意两个单词之间。以/*开始，*/结束，可以嵌套。
 * 内置类型：int, string
 * 
 * 
 * 怎样处理注释
 * 怎样处理字符串
 * 错误处理
 * 文件结束处理
 * 其它特性
 *)

{
type pos = int
type lexresult = Tokens.token

let line_num = ErrorMsg.line_num (* 当前行号 *)
let line_pos = ErrorMsg.line_pos (* 每行的起始位置,相对于整个buffer *)
let data_buff = Buffer.create 100

let add_lexeme lexbuf =
  let len = lexbuf.Lexing.lex_curr_pos - lexbuf.Lexing.lex_start_pos in
  Buffer.add_substring
    data_buff
    lexbuf.Lexing.lex_buffer
    lexbuf.Lexing.lex_start_pos
    len

let err lexbuf msg =
  let pos = lexbuf.Lexing.lex_curr_p.Lexing.pos_cnum in
  ErrorMsg.error pos msg

let eof () =
  let pos = List.hd !line_pos in
  Tokens.v_eof pos pos

let newline lexbuf =
  line_num := !line_num + 1;
  line_pos := lexbuf.Lexing.lex_curr_p.Lexing.pos_cnum :: !line_pos

(*
 * 调用转换为token的函数
 * f, 要调用的函数
 * len,此token的长度
 * v,附带的value
 *)
let to_token lexbuf f len =
   let pos = lexbuf.Lexing.lex_curr_p.Lexing.pos_cnum in
   f pos (pos + len)

let char_num c =
  if c < '0' || c > '9' then
    raise (Invalid_argument "char_num not digit char")
 else int_of_char c - int_of_char '0'

}

let digit = ['0'-'9']
let digits = digit+
let ident = ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']*

rule tokens = parse
    | ['\t' '\r' ' '] { tokens lexbuf }
    | ['\n']  { newline lexbuf;
                tokens lexbuf }
    | "/*" { finish_comment lexbuf; "" }
    | '"' { Buffer.clear data_buff; finish_string lexbuf }

    | "while" { to_token lexbuf Tokens.v_while 5 }
    | "for" { to_token lexbuf Tokens.v_for 3 }
    | "to" { to_token lexbuf Tokens.v_to 2 }
    | "break" { to_token lexbuf Tokens.v_break 5 }
    | "let" { to_token lexbuf Tokens.v_let 3 }
    | "in" { to_token lexbuf Tokens.v_in 2 }
    | "end" { to_token lexbuf Tokens.v_end 3}
    | "function" { to_token lexbuf Tokens.v_function 8 }
    | "var" { to_token lexbuf Tokens.v_var 3 }
    | "type" { to_token lexbuf Tokens.v_type 4 }
    | "array" { to_token lexbuf Tokens.v_array 5 }
    | "if" { to_token lexbuf Tokens.v_if 2 }
    | "then" { to_token lexbuf Tokens.v_then 4 }
    | "else" { to_token lexbuf Tokens.v_else 4 }
    | "do" { to_token lexbuf Tokens.v_do 2 }
    | "of" { to_token lexbuf Tokens.v_of 2 }
    | "nil" { to_token lexbuf Tokens.v_nil 3 }

    | "," { to_token lexbuf Tokens.v_comma 1 }
    | ":" { to_token lexbuf Tokens.v_colon 1 }
    | ";" { to_token lexbuf Tokens.v_semicolon 1 }
    | "(" { to_token lexbuf Tokens.v_lparen 1 }
    | ")" { to_token lexbuf Tokens.v_rparen 1 }
    | "[" { to_token lexbuf Tokens.v_lbrack 1 }
    | "]" { to_token lexbuf Tokens.v_rbrack 1 }
    | "{" { to_token lexbuf Tokens.v_lbrace 1 }
    | "}" { to_token lexbuf Tokens.v_rbrace 1 }
    | "." { to_token lexbuf Tokens.v_dot 1 }
    | "+" { to_token lexbuf Tokens.v_plus 1 }
    | "-" { to_token lexbuf Tokens.v_minus 1 }
    | "*" { to_token lexbuf Tokens.v_times 1 }
    | "/" { to_token lexbuf Tokens.v_divide 1 }
    | "=" { to_token lexbuf Tokens.v_eq 1 }
    | "<>" { to_token lexbuf Tokens.v_neq 2 }
    | "<" { to_token lexbuf Tokens.v_lt 1 }
    | "<=" { to_token lexbuf Tokens.v_le 2 }
    | ">" { to_token lexbuf Tokens.v_gt 1 }
    | ">=" { to_token lexbuf Tokens.v_ge 2 }
    | "&" { to_token lexbuf Tokens.v_and 1 }
    | "|" { to_token lexbuf Tokens.v_or 1 }
    | ":=" { to_token lexbuf Tokens.v_assign 2 }
    | digits as num { to_token lexbuf (Tokens.v_int (int_of_string num)) (String.length num) }
    | ident as id { to_token lexbuf (Tokens.v_id id) (String.length id) }
    | _ as c { err lexbuf (Printf.sprintf "illegal character  %c" c);
               tokens lexbuf }
    | eof   { eof () }
 (* 匹配注释 *)     
 and finish_comment = parse
  | "*/" { () }
  | "/*" { finish_comment lexbuf; finish_comment lexbuf } (* 嵌套注释 *)
  | '\n' { newline lexbuf; finish_comment lexbuf }
  | _  { finish_comment lexbuf }
  | eof { err lexbuf "unterminated comment"; ignore (eof ()) }
 (* 匹配字符串 *)
 and finish_string = parse
  | '"' { let str = Buffer.contents data_buff in
          to_token lexbuf (Tokens.v_string str) ((String.length str) + 2) }
  | '\\' { finish_escaped_char lexbuf;
           finish_string lexbuf }
  | '\n' { newline lexbuf; Buffer.add_char data_buff '\n'; finish_string lexbuf }
  | [^ '"' '\\' '\n']+ { add_lexeme lexbuf;
                    finish_string lexbuf }
  | eof { err lexbuf "unterminated string"; eof () }
 (* 匹配字符串中的转义字符 *)     
 and finish_escaped_char = parse
  (* \^c 控制字符不知道什么意思,没有添加 *)
  | 'n' { Buffer.add_char data_buff '\n' }
  | 't' { Buffer.add_char data_buff '\t' }
  | '"'
  | '\\' as c { Buffer.add_char data_buff c }
  | ' ' | '\t' | '\r' { finish_multiline_escape lexbuf }
  | '\n' { newline lexbuf; finish_multiline_escape lexbuf }
  | (digit as a) (digit as b) (digit as c)
      { Buffer.add_char data_buff
        (Char.chr ((char_num a)*100 + (char_num b)*10 + (char_num c))) }
  (* 出现错误,返回 *)
  | _ { err lexbuf "Invalid escape sequence"; () }
  | eof { err lexbuf "unterminated escape sequence"; ignore (eof ()); () }
 (* 匹配字符串中连接多行的方式 *)     
 and finish_multiline_escape = parse
  | '\\' { () }
  | ' ' | '\t' | '\r' { finish_multiline_escape lexbuf }
  | '\n' { newline lexbuf; finish_multiline_escape lexbuf }
  (* 出现错误,返回 *)
  | _ { err lexbuf "Invalid multiline escape char"; () }
  | eof { err lexbuf "unterminated multiline escape"; ignore (eof ()); () }

