let rec sum x =
  if x <= 0 then 0 else
  sum (x -) + x in
print_int (sum 10000)
