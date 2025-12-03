(*Requirements: split is an positive integer
Result: A tupple of two Lists is returned; the first List has the first split elements of the initial list. 
        The other List has all other Elements
        if split > |list|, the split returns the list in the first List, leaving the other empty
Effect: None*)

let split list split =
  (*Let acc1 hold the elements for the "left side" and acc2 the ones on the "right side"*)
  let rec step acc1 acc2 list_ itter =
    match list_ with
    | [] -> (acc1,acc2)
    | x::xs -> if itter != 0 then step (acc1@[x]) acc2 xs (itter-1) else (acc1,(acc2@x::xs))
  in
  step [] [] list split