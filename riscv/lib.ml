let PI = 3.141592653589793 in
let rec reduction_2pi x = 
  let rec while1 a p =
    if fispos(a-.p) then 
      while1 a (2*p)
    else p in
    let p1 = while1 x (2*PI)
    let rec while2 a p =
      if fispos(a-.2*PI) then 
        if fispos(a-.p) then 
          while2 (a-.p) (p/.2)
        else while2 a (p/.2)
      else a
    in while2 x p1 in
let S3 = 0.16666668 in
let S5 = 0.008332824 in
let S7 = 0.00019587841 in
let C2 = 0.5 in
let C4 = 0.04166368 in
let C6 = 0.0013695068 in 
let rec kernel_sin x = 
  x-.S3*x*x*x +.S5*x*x*x*x*x-.S7*x*x*x*x*x*x*x
in
let rec kernel_cos x = 
    1.-.C2*x*x +.C4*x*x*x*x-C6*x*x*x*x*x*x
in
let rec sin x =
  let flag0 = if fispos x then 1. else -1. in
  let x0 = if fispos x then x else (-1.)*.x in
  let x00 = reduction_2pi(x0) in
  let x1 = if fispos(x00-.PI) then x00-.PI else x00 in
  let flag1 = if fispos(x00-.PI) then (-1.)*.flag0 else flag0 in
  let x2 = if fispos(2.*x1-.PI) then PI-.x1 else x1 in
  let x3 = if fispos(PI-.4.*x2) then kernel_sin x2 
            else kernel_cos(PI/.2-x2) in
      x3*.flag1
in
let rec cos x = 
  let x0 = if fispos x then x else (-1.)*.x in
  let x00 = reduction_2pi x0 in
  let x1 = if fispos(x00-.PI) then x00-.PI else x00 in
  let flag0 = if fispos(x00-.PI) then -1. else 1. in
  let x2 = if fispos(2.*x1-.PI) then PI-.x1 else x1 in
  let flag1 = if fispos(2.*x1-.PI) then (-1.)*.flag0 else flag0 in
  let x3 = if fispos(PI-.4.*x2) then kernel_sin x2 
  else kernel_cos(PI/.2-x2) in
  x3*.flag1
in
let A3 = 0.33333333 in
let A5 = 0.2 in 
let A7 = 0.142857142 in
let A9 = 0.111111104 in
let A11 = 0.08976446 in
let A13 = 0.060035485 in
let ker_atan x = 
  x - A3*x*x*x + A5*x*x*x*x*x - A7*x*x*x*x*x*x*x + A9*x*x*x*x*x*x*x*x*x - A11*x*x*x*x*x*x*x*x*x*x*x + A13*x*x*x*x*x*x*x*x*x*x*x*x*x
let atan x = 
  let flag0 = if fispos x then 1 else -1 in
  let x0 = if fispos x then x else -1.*x in
  let y = if fispos (0.4375 -. x0) then ker_atan x0 
  else if   fispos (2.4375 -. x0) then PI/.4 + ker_atan((x0-.1.0)/x0+.1.0)
  else PI/.2 -. ker_atan (1/.x0) in
  let flag2 = if fispos y then 1 else -1 in
  if flag1=flag2 then y else -1.*y
in

