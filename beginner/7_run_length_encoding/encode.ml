 (*Voraussetzung: Keine
Ergebnis: Eine Liste ist geliefert, in der alle konsecutiven Vorkomnisse eines Elements der Liste aufgezählt sind.
Effekt: Keiner*)

let encode list = 
  if list = [] then []
  else 
    (*Akkumulator speichert den Encode, last speichert den letzten Character und Count seine Vorkomnisse*)
    let rec step acc list_ last count =
      match list_ with
      | [] -> acc@[(count,last)]
      | x::xs -> if x = last then step acc xs last (count+1) 
                else step (acc@[(count,last)]) xs x 1
    in
    step [] list (List.nth list 0) 0
