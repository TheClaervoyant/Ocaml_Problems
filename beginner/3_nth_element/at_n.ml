(*Voraussetzung: Keine
Ergebnis: Das Modulare Element an Index n der Liste ist geliefert.
          Ist der Index out of bounds, so ist None geliefert
Effekt: Keiner*)

let rec at n list = 
  match list with
  | [] -> None
  | x::xs -> if n == 0 then Some x else at (n-1) xs

(*Neue Erkenntnis: Ocaml nutzt if... then Logic und nicht if: o.ä.*)