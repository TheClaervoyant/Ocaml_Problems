(*Requirement: insert >= 0
Result: A List is returned, where at index insert the input Element is inserted.
        If insert > |list|, the Element is inserted at the last place
Effect: None*)

let rec insert_at input insert list =
  match list with
  | [] -> [input]
  (*If insert = 0, we have to push the input right before the Index, which is why we have input::x::xs. We could also have x::input::xs, when insert = 1*)
  | x::xs -> if (insert = 0) then input::x::xs else x::(insert_at input (insert -1) xs)