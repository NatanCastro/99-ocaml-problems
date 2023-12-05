let is_palindrome list =
  let reverse = Ex5.rev list in
  List.equal (fun a b -> a = b) list reverse
