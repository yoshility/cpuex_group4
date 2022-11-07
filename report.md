# report3 05221021 理学部情報科学科 富張聡祥

## 問１
### 説明
自由変数を持つ局所関数の例。局所関数mul_xが自由変数xを持っている。
```ocaml
let rec pow x n =
  let pow_x m = 
  match m with
  | 0 -> 1
  | m -> x*pow_x(m-1) in
  pow_x n
```
この例を自由変数がなくなるように書き直すと以下のようになる。
局所関数の引数を追加することで自由変数がなくなるように書き換えた。
```ocaml
let rec pow_ x n =
  let pow__ y a =
    match a with
    | 0 -> 1
    | b -> y*(pow__ y (b-1)) in
    pow__ x n
```
どちらも実行するとべき乗を正しく計算できていることを確認でき、正しく書き直せていることを確認できた。

### 実行例
```
# pow 3 3;;
- : int = 27
# pow 2 10;;
- : int = 1024

# pow_ 3 3;;
- : int = 27
# pow 2 10;;
- : int = 1024
```
べき乗を正しく計算できていることを確認でき、正しく書き直せていることを確認できた。

## 問2
### 説明
Lambda LiftingとDefunctionalisationについて調べ、Lambda liftingを実装した。

Lambda Liftingは関数を定義する際にクロージャを定義するのではなく、引数を増やすことで局所関数に含まれる自由変数の数を減らす方法である。
ただし自由変数のために増やした引数に正しい値を適用するため、クロージャを用いる場合とは異なり関数が呼ばれる場所を全て把握する必要がある。

Defunctionslizationは高階関数を全て一階関数に変換する手法である。制御フロー分析によって関数が直接呼び出される全ての場所を追跡し、一階関数に引数を直接適用される形にプログラムを変形する。

Lambda liftingの実装はclosure.ml内に新しく関数g_lifting、f_liftingを追加することで実装した。min-camlの実行時引数に-liftingを加えるとクロージャ変換の代わりにラムダリフティングを行うように設計した。
本質的な処理はg_liftingに実装されており、この関数は関数名と型の環境env, 定義した変数の環境vars, 関数内の自由変数の環境fvsとKNormal.t型の変数を受け取ってClosure.t型の変数を返す関数である。ただしクロージャの作成や呼び出しは行わない。
関数定義の際に関数内の自由変数を環境fvsに保存しておき、関数の適用時にはその自由変数を定義し直してから関数適用を行うことでlambda liftingを実装した。
自由変数を環境fvsに保存する際にすでに定義した変数の値を取り出す必要があり、そのために変数を定義するたびに環境varsに値を保存した。
また部分関数に対応するため(Id.t*(fundef*Id.t list))list ref型の環境partialsを用意し、部分関数が作られたらここに関数の名前と関数本体、適用された引数を保持しておくようにした。

以上の実装を行った結果、高階関数と再帰関数以外の関数については正しくlambda liftingを実装できた。しかし高階関数と再帰関数をクロージャを用いずに実装する方法が分からず、対応できなかった。かなり時間をかけたけど分からなかったでどのように実装できるか知りたい。余力があったら後で挑戦しようと思う。

### 実行例
問3の関数のうち4と6の式を取り除いた以下のプログラムをコンパイルして出力を途中結果を出力すると正しくlambda liftingを行えていることを確認できた。しかし高階関数を含む4または再帰関数を含む6の式を追加するとエラーが発生して正しくlambda liftingを行えなかった。この点は今後の課題としたい。

closure_test.ml
```ocaml
let a1 = let z = 4 in let rec f x = x - z in f 8 in
let a2 = let rec g x = x - 2 in g 6 in 
let a3 = let rec f x = x - 1 in f in
(* let a4 = let rec g h = let rec i x = h x in i in g in *)
let a5 = let rec i x = x in let z = 4 in let rec f x = i (z-5) in if z<6 then (i,f 7) else (f,8) in
(* let a6 = let rec sum x = if x = 1 then 1 else x + sum (x-1) in sum 6 in  *)
print_int 0
```

途中結果の出力
```
Let
   a1 type Int
   Let
      z type Int
      4
      MakeCls
             f: type Fun:type Int,->type IntLabel:f
             z, 
             
   Let
      a2 type Int
      Let
         Ti2 type Int
         6
         AppDir
               Label: g Ti2,
      Let
         a3 type Fun:type Int,->type Int
         MakeCls
                f: type Fun:type Int,->type IntLabel:f
                
                
         Let
            a4 type Fun:type Fun:type Int,->type Int,->type Fun:type Int,->type Int
            MakeCls
                   g: type Fun:type Fun:type Int,->type Int,->type Fun:type Int,->type IntLabel:g
                   
                   
            Let
               a5 type Tuple(type Fun:type Int,->type Int,type Int,)
               MakeCls
                      i: type Fun:type Int,->type IntLabel:i
                      
                      
               Let
                  a6 type Int
                  Let
                     Ti11 type Int
                     6
                     AppDir
                           Label: sum Ti11,
                  Let
                     Ti16 type Int
                     0
                     AppDir
                           Label: min_caml_print_int Ti16,
```

### 参考文献
Defunctionslization Wikipedia[https://en.wikipedia.org/wiki/Defunctionalization#:~:text=In%20programming%20languages%2C%20defunctionalization%20is%20a%20compile-time%20transformation,1972%20paper%2C%20%22Definitional%20Interpreters%20for%20Higher-Order%20Programming%20Languages%22.]
Implementing Functional Languages a tutorial[https://www.microsoft.com/en-us/research/wp-content/uploads/1992/01/student.pdf]

## 問３
### 説明
- 1 f: クロージャは作られる（Lf）, 自由変数 z 理由：fの定義内にzが自由変数として現れるから。
- 2 g: クロージャは作られない。　理由：gの定義内に自由変数は現れず、gは直接呼び出されているから。
- 3 f: クロージャは作られる（Lf）, 自由変数 なし　理由：fが直接呼び出されず、変数のまま式に現れているから。
- 4 g: クロージャは作られる（Lg）, 自由変数 なし, i: クロージャは作られる（Li） ,自由変数 h 理由：i, hはどちらも直接呼び出されておらず、iの関数定義内にhが現れているから。
- 5 i: クロージャは作られる（Li）, 自由変数 なし, f: クロージャは作られる（Lf）, 自由変数 z 理由：iは直接呼び出されていないのでクロージャが作られる。一方fの関数定義内に限ってはiは直接呼び出されているのでiはfの自由変数には含まれないから。
- 6 fact: クロージャは作られる（Lfact）. 自由変数 なし 理由：factは再帰関数なのでMinCamlの疑似コードに従うとクロージャが作られる。しかしfact自身を除くと自由変数は存在しない。

回答にはMinCamlの疑似コード[ https://esumii.github.io/min-caml/min-caml.pdf ]を参考にした。



