(* ��ͳ�ѿ��Τ���Ƶ��ؿ� *)
let x = 7 in
let rec f y =
  if y = 0 then 0 else
  x + f (y - 1) in
f 10
