(*Voraussetzung: Keine
Ergebnis: Die Umgedrehte Eingabeliste ist geliefert.
Effekt: Keiner*)

let rec rev list = 
  match list with 
  (*Rekursionsanker: Eine leere und Einelementige Liste sind immer sortiert*)
  | [] -> []
  | [x] -> [x]
  | x::xs -> (rev xs)@[x]

(*Erkenntnis: Concat von zwei Listen erfolg durch das @ symbol - nicht durch ::: wie in z.B. Scala*)