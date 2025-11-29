(*Voraussetzung: Keine
Ergebnis: Die Länge der Liste ist geliefert. Bei einer leeren Liste ist 0 geliefert.
Effekt: Keiner*)

let length list = 
  let rec step acc list_ = 
    match list_ with
    | [] -> acc
    | _::xs -> step (acc + 1) xs
  in
  step 0 list