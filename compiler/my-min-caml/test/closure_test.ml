let a1 = let z = 4 in let rec f x = x - z in f 8 in
let a2 = let rec g x = x - 2 in g 6 in 
let a3 = let rec f x = x - 1 in f in
(* let a4 = let rec g h = let rec i x = h x in i in g in *)
let a5 = let rec i x = x in let z = 4 in let rec f x = i (z-5) in if z<6 then (i,f 7) else (f,8) in
(* let a6 = let rec sum x = if x = 1 then 1 else x + sum (x-1) in sum 6 in  *)
print_int 0