let length l =
  let rec aux num l = match l with [] -> num | _ :: tl -> aux (num + 1) tl in
  aux 0 l
