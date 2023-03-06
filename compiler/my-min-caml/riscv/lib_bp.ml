let rec while1 a p =
  if fispos(a-.p) then 
    while1 a (2.*.p)
  else p 
in
  let rec p1 a = 
  let pi = 3.141592653589793 in 
    while1 a (2.*.pi) 
  in
  let rec while2 a p =
    let pi = 3.141592653589793 in
    if fispos(a-.2.*.pi) then 
      if fispos(a-.p) then 
        while2 (a-.p) (p/.2.)
      else while2 a (p/.2.)
    else a
  in 
  let rec reduction_2pi x = 
    while2 x (p1 x)in
let rec kernel_sin x =
let s3 = 0.16666668 in
let s5 = 0.008332824 in
let s7 = 0.00019587841 in
let x2 =x*.x in
((((0.-.s7)*.x2+.s5)*.x2-.s3)*.x2+.1.)*.x 
in
let rec kernel_cos x =
let c2 = 0.5 in
let c4 = 0.04166368 in
let c6 = 0.0013695068 in 
let x2 = x*.x in 
  (((0.-.c6)*.x2+.c4)*.x2-.c2)*.x2+.1. 
in

let rec flag0 x = if fispos x then 1 else 0 in
let rec x0  x = let f1 = (flag0 x) in if f1 = 1 then x else (-1.)*.x in
let rec x00 x = let x2 = (x0 x) in reduction_2pi(x2) in
let rec x1 x = let x000 = (x00 x) in let pi = 3.141592653589793 in if fispos(x000-.pi) then x000-.pi else x000 in
let rec flag1 x = let x10 = (x1 x) in let x000 = x00 x in let flag00 = flag0 x in if x10 = x000 then flag00 else 1-flag00 in
let rec x2 x = let x10 = x1 x in let pi = 3.141592653589793 in if fispos(2.*.x10-.pi) then pi-.x10 else x10 in
let rec x3 x = let x20 = x2 x in let pi = 3.141592653589793 in if fispos(pi-.4.*.x20) then kernel_sin x20 
          else kernel_cos(pi/.2.-.x20) in
let rec sin x = if (flag1 x )=1 then x3 x else (-1.)*.(x3 x)
in
let rec x0 x = if fispos x then x else (-1.)*.x in
let rec x00 x = reduction_2pi (x0 x) in
let rec x1 x = let pi = 3.141592653589793 in let x000 = x00 x in if fispos(x000-.pi) then x000-.pi else x000 in
let rec flag0 x = if (x1 x )=(x00 x) then 1 else 0 in
let rec x2 x = let pi = 3.141592653589793 in let x10 = x1 x in if fispos(2.*.(x10)-.pi) then pi-.(x10) else (x10) in
let rec flag1 x = let flag00 = flag0 x in if x2 x = x1 x then flag00 else 1- flag00  in
let rec x3 x = let pi = 3.141592653589793 in let x20 = x2 x in if fispos(pi-.4.*.x20) then kernel_cos x20 
else kernel_sin(pi/.2.-.x20) in
let rec cos x = 
if (flag1 x )= 1 then x3 x else (-1.)*.(x3 x)
in
let rec ker_atan x =
let a3 = 0.33333333 in
let a5 = 0.2 in 
let a7 = 0.142857142 in
let a9 = 0.111111104 in
let a11 = 0.08976446 in
let a13 = 0.06003548 in
let x2 = x*.x in
(((((((a13)*.x2-.a11)*.x2+.a9)*.x2-.a7)*.x2)+.a5)*.x2-.a3)*.x*.x2+.x  in
let rec flag1 x = if fispos x then 1 else -1 in
let rec x0 x = if fispos x then x else -1.*.x in
let rec y x = let pi = 3.141592653589793 in let x00 = x0 x in if fispos (0.4375 -. x00) then ker_atan x00 
else (if   fispos (2.4375 -. x00) then pi/.4. +. ker_atan((x00-.1.0)/.(x00+.1.0))
else pi/.2. -. ker_atan (1./.x00)) in
let rec flag2 x = if fispos (y x )then 1 else -1 in
let rec atan x = 
let y0 = y x in if flag1 x = flag2 x then y0 else -1.*.y0 in
(* let rec fhalf x = x *. 0.5 in
let rec fsqr x = x *. x in *)

(* int_of_float(fsqr 1.) + int_of_float (fhalf 1.) + 
int_of_float(atan 1.) + int_of_float (cos 1.) + int_of_float(sin 1.) in *)