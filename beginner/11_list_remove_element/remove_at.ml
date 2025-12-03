(*Requirement: remove is an integer >= 0.
Result: A List is returned, which is the first element, but the remove'th Element is removed.
        If remove > |list|, the List itself is returned
Effect: None*)

let remove_at remove list =
  let rec step acc list_ itter =
    match list_ with
    | [] -> acc
    | x::xs -> if (itter = 0) then acc@xs else step (acc@[x]) xs (itter-1)
  in
  step [] list remove