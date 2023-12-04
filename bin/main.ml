let () =
  let arr = [ 1; 2; 3; 4; 5 ] in
  Ex1.last arr |> Option.get |> print_int;
  print_newline ();
  Ex2.last_two arr |> Option.get |> fun t ->
  print_int (fst t);
  print_int (snd t);
  print_newline ()
