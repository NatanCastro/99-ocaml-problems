type 'a node = One of 'a | Many of 'a node list

let flatten list =
  let rec aux acc list =
    match list with
    | [] -> acc
    | One x :: t -> aux (x :: acc) t
    | Many l :: t -> aux (aux acc l) t
  in
  Ex5.rev (aux [] list)
