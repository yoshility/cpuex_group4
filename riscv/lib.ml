let pi = 3.141592653589793 in
let rec reduction_2pi x = 
  let rec while1 a p =
    if fispos(a-.p) then 
      while1 a (2.*.p)
    else p 
  in
    let p1 = while1 x (2.*.pi) in
    let rec while2 a p =
      if fispos(a-.2.*.pi) then 
        if fispos(a-.p) then 
          while2 (a-.p) (p/.2.)
        else while2 a (p/.2.)
      else a
    in while2 x p1 in
let s3 = 0.16666668 in
let s5 = 0.008332824 in
let s7 = 0.00019587841 in
let c2 = 0.5 in
let c4 = 0.04166368 in
let c6 = 0.0013695068 in 
let rec kernel_sin x =
  let x2 =x*.x in
  ((((0.-.s7)*.x2+.s5)*.x2-.s3)*.x2+.1.)*.x 
in
let rec kernel_cos x =
  let x2 = x*.x in 
    (((0.-.c6)*.x2+.c4)*.x2-.c2)*.x2+.1. 
in
let rec sin x =
  let flag0 = if fispos x then 1. else -1. in
  let x0 = if fispos x then x else (-1.)*.x in
  let x00 = reduction_2pi(x0) in
  let x1 = if fispos(x00-.pi) then x00-.pi else x00 in
  let flag1 = if fispos(x00-.pi) then (-1.)*.flag0 else flag0 in
  let x2 = if fispos(2.*.x1-.pi) then pi-.x1 else x1 in
  let x3 = if fispos(pi-.4.*.x2) then kernel_sin x2 
            else kernel_cos(pi/.2.-.x2) in
      x3*.flag1
in
let rec cos x = 
  let x0 = if fispos x then x else (-1.)*.x in
  let x00 = reduction_2pi x0 in
  let x1 = if fispos(x00-.pi) then x00-.pi else x00 in
  let flag0 = if fispos(x00-.pi) then -1. else 1. in
  let x2 = if fispos(2.*.x1-.pi) then pi-.x1 else x1 in
  let flag1 = if fispos(2.*.x1-.pi) then (-1.)*.flag0 else flag0 in
  let x3 = if fispos(pi-.4.*.x2) then kernel_sin x2 
  else kernel_cos(pi/.2.-.x2) in
  x3*.flag1
in
let a3 = 0.33333333 in
let a5 = 0.2 in 
let a7 = 0.142857142 in
let a9 = 0.111111104 in
let a11 = 0.08976446 in
let a13 = 0.06003548 in
let rec ker_atan x =
  let x2 = x*.x in
  (((((((a13)*.x2-.a11)*.x2+.a9)*.x2-.a7)*.x2)+.a5)*.x2-.a3)*.x2+.x  in
let rec atan x = 
  let flag1 = if fispos x then 1 else -1 in
  let x0 = if fispos x then x else -1.*.x in
  let y = if fispos (0.4375 -. x0) then ker_atan x0 
  else (if   fispos (2.4375 -. x0) then pi/.4. +. ker_atan((x0-.1.0)/.x0+.1.0)
  else pi/.2. -. ker_atan (1./.x0)) in
  let flag2 = if fispos y then 1 else -1 in
  if flag1=flag2 then y else -1.*.y in
let rec fhalf x = x *. 0.5 in
let rec fsqr x = x *. x in
1