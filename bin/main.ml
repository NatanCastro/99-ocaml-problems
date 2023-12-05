let rec for_each f l =
  match l with
  | [] -> ()
  | h :: tl ->
      f h;
      for_each f tl

let print_ints l = for_each (fun i -> Printf.printf "%d " i) l

let () =
  let arr = [ 1; 2; 3; 4; 5 ] in
  print_string "data: ";
  print_ints arr;
  print_newline ();
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
  print_string "reverse func: ";
  Ex5.rev arr |> print_ints;
  print_newline ();
  print_string "is palindrome func: ";
  (Ex6.is_palindrome arr |> fun b -> Printf.printf "%b" b);
  print_newline ();
  print_string "flatten func: ";
  Ex7.flatten [ One 1; Many [ One 1; Many [ One 3; One 1 ]; One 1 ] ]
  |> print_ints;
  print_newline ();
  ()
