(* �����ѡפ�known function optimization�Ǥ����ܤʾ�� *)
(* Cf. http://www.yl.is.s.u-tokyo.ac.jp/~sumii/pub/compiler-enshu-2002/Mail/8 *)
let rec f x = x + 123 in
let rec g y = f in
((g 456) 789)
