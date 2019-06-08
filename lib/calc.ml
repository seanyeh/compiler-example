let main () =
    let filebuf = Lexing.from_channel stdin in
    try
        let result = (Parser.main Lexer.token filebuf) in
        List.iter (fun i -> print_endline (string_of_int i)) result
    with
  | Lexer.Error msg ->
          Printf.eprintf "%s%!" msg
  | Parser.Error ->
          Printf.eprintf "At offset %d: syntax error.\n%!" (Lexing.lexeme_start filebuf)
          ;
