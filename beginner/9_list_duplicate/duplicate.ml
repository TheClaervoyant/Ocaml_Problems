(*Requirement: None
Result: A list is returned, where next to every element the element itself is duplicated. e.g. ['a';'b'] -> ['a';'a';'b';'b']
Effect: None*)

let rec duplicate list = 
  match list with
  |[] -> []
  |x::xs -> x::x::(duplicate xs)