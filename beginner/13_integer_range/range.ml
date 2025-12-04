(*Requirement: a > b, both integers
Result: A descending intervall between a and b is returned
Effect: None*)
let descending a b =
  let rec step acc a_ b_ = 
    if (a_ = b_) then (acc@[a_])
    else step (acc@[a_]) (a_-1) b_
  in
  step [] a b

(*Requirement: a < b, both integers
Result: A ascending intervall between a and b is returned
Effect: None*)
let ascending a b =
  let rec step acc a_ b_ =
    if (a_ = b_) then (acc@[a_])
    else step (acc@[a_]) (a_ +1) b_
  in
  step [] a b

(*Requirement: a and b are integers
Result: if a > b, an desencing interval between a and b is returned.
        if a < b, an increasing interval is returned. a and b are inclusive
Effect: None*)
let range a b =
  if (a >= b) then descending a b
  else ascending a b 