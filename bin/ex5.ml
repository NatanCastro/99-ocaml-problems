let rev list =
  let rec aux acc list =
    match list with [] -> acc | h :: t -> aux (h :: acc) t
  in
  aux [] list
