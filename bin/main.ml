let () =
  let arr = [ 1; 2; 3; 4; 5 ] in
  print_string "last func: ";
  Ex1.last arr |> Option.get |> print_int;
  print_newline ();
  print_string "last_two func: ";
  Ex2.last_two arr |> Option.get |> fun t ->
  print_int (fst t);
  print_string ", ";
  print_int (snd t);
  print_newline ();
  print_string "at func: ";
  Ex3.at arr 2 |> Option.get |> print_int;
  print_newline ();
  print_string "length func: ";
  Ex4.length arr |> print_int;
  print_newline ();
  ()
