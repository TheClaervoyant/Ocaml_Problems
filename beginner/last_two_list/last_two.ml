(*Voraussetzung: Keine
Ergebnis: Die letzten zwei Elemente einer Liste sind geliefert. 
          Ist die Liste leer oder enthält nur ein Element, ist None geliefert.
Effekt: Keiner*)
let rec last_two list =
  match list with
  | [] -> None
  | [x] -> None
  | [x;y] -> Some(x,y)
  | _::xs -> last_two xs (*_ = Wildcard. Es ist nämlich nicht wichtig, was das Element hier ist*)