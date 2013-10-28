{
open TypParser
}

rule token = parse
  ['\t' ' ']                { token lexbuf }
| ['\n'   ]                 { EOL }
| "int"                     { INT }
| "bool"                    { BOOL }
| "float"                   { FLOAT }
| "string"                  { STRING }
| "unit"                    { UNIT }
| "*"                       { STAR }
| "list"                    { LIST }
| "qkeyevent"
| "keyevent"                { KEYEVENT }
| "qmouseevent"
| "mouseevent"              { MOUSEEVENT }
| "qgsmouseevent"
| "gsmouseevent"
| "gmouseevent"             { GS_MOUSEEVENT }
| '('                       { LBRA }
| ')'                       { RBRA }

{
let parse_string_exn s =
  let buf = Lexing.from_string (s^"\n") in
  main token buf

}
