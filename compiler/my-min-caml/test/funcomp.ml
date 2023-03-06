let rec compose f g =
  let rec composed x = g (f x) in
  composed in
let rec dbl x = x + x in
let rec inc x = x + 1 in
let rec dec x = x - 1 in
let h = compose inc (compose dbl dec) in
(h 2)
(* print_int (h 2) *)
