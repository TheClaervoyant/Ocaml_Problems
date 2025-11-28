let rec last list =
  match list with
  | [] -> None
  | [x] -> Some x
  | x::xs -> last xs