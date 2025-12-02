(*With this constructor, we store the cont of the occuring Element
We assume, that it occured at least once, so we either Count "One Element" or Many Elements*)

type 'a count = | One of 'a  | Many of int * 'a;;

(*Requirement: counts > 0
Result: Based on the counts, One input is returned or Many (counts, input)
Effect: None*)
let construct input counts =
  if counts == 1 then One(input)
  else Many(counts,input)

(*Requirement: None
Result: Based on Run-Time-Length-Encoding, a list with the Encode is returned. Only if #occurence > 1, (#occurence,Character) is returned, otherwise its One character
Effect: None*)
let encode list =
  match list with
  | [] -> []
  (*We only define the Step Function only if needed, means the Element has at least one element -> Encoding even possible*)
  | x::xs ->
      let rec step acc list_ before counts =
        match list_ with
        | [] -> acc@[construct before counts]
        | x::xs -> if x = before then step acc xs before (counts +1) else step (acc@[construct before counts]) xs x 1
      in
      step [] list (List.nth list 0) 0