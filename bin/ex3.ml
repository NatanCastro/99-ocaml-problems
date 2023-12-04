let rec at l pos =
  match l with
  | [] -> None
  | x :: xs -> if pos = 1 then Some x else at xs (pos - 1)
