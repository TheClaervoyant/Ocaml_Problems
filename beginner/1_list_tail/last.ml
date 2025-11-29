(*Voraussetzung: Keine
Ergebnis: Das letzte Element der Liste ist geliefert. Ist die Liste leer, ist None geliefert.
Effekt: Keiner*)
let rec last list =
  match list with
  | [] -> None
  | [x] -> Some x
  | _::xs -> last xs