let rec last_two l =
  match l with
  | [] -> None
  | [ _ ] -> None
  | [ x1; x2 ] -> Some (x1, x2)
  | _ :: xs -> last_two xs
