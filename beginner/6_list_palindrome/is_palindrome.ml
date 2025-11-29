(*Voraussetzung; Keine
Ergebnis: Falls die Liste ein Palindrom ist, ist true geliefert. Ansonsten ist false geliefert
Effekt: Keiner*)


let is_palindrome list = 
  let rec step list_ rev_ =
    match (list_,rev_) with
    |([],[]) -> true
    |(x::xs,y::ys) -> if x=y then step xs ys else false
    |(_,_) -> false
  in
  let rev = List.rev list in
  step list rev

(*Erkenntnis: Strukturelle Gleichhheit in Ocaml durch = geprüft
              == wie man es so kennt prüft die Gleichheit der Speicheradressen*)