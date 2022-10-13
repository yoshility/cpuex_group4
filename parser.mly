%{
(* parserが利用する変数、関数、型などの定義 *)
open Syntax
let addtyp x = (x, Type.gentyp ())
%}

/* (* 字句を表すデータ型の定義 (caml2html: parser_token) *) */
%token <bool> BOOL
%token <int> INT
%token <float> FLOAT
%token NOT
%token MINUS
%token PLUS
%token MINUS_DOT
%token PLUS_DOT
%token AST_DOT
%token SLASH_DOT
%token EQUAL
%token LESS_GREATER
%token LESS_EQUAL
%token GREATER_EQUAL
%token LESS
%token GREATER
%token IF
%token THEN
%token ELSE
%token <Id.t> IDENT
%token LET
%token IN
%token REC
%token COMMA
%token ARRAY_CREATE
%token DOT
%token LESS_MINUS
%token SEMICOLON
%token LPAREN
%token RPAREN
%token EOF

/* (* 優先順位とassociativityの定義（低い方から高い方へ） (caml2html: parser_prior) *) */
%nonassoc IN
%right prec_let
%right SEMICOLON
%right prec_if
%right LESS_MINUS
%nonassoc prec_tuple
%left COMMA
%left EQUAL LESS_GREATER LESS GREATER LESS_EQUAL GREATER_EQUAL
%left PLUS MINUS PLUS_DOT MINUS_DOT
%left AST_DOT SLASH_DOT
%right prec_unary_minus
%left prec_app
%left DOT

/* (* 開始記号の定義 *) */
%type <Syntax.t> exp
%start exp

%%

simple_exp: /* (* 括弧をつけなくても関数の引数になれる式 (caml2html: parser_simple) *) */
| LPAREN exp RPAREN
    { $2 }
| LPAREN RPAREN
    { Unit (Parsing.symbol_start_pos())}
| BOOL
    { Bool($1, Parsing.symbol_start_pos()) }
| INT
    { Int($1,Parsing.symbol_start_pos()) }
| FLOAT
    { Float($1,Parsing.symbol_start_pos()) }
| IDENT
    { Var($1,Parsing.symbol_start_pos()) }
| simple_exp DOT LPAREN exp RPAREN
    { Get($1, $4,Parsing.symbol_start_pos()) }

exp: /* (* 一般の式 (caml2html: parser_exp) *) */
| simple_exp
    { $1 }
| NOT exp
    %prec prec_app
    { Not($2,Parsing.symbol_start_pos()) }
| MINUS exp
    %prec prec_unary_minus
    { match $2 with
    | Float(f,p) -> Float(-.f,p) (* -1.23などは型エラーではないので別扱い *)
    | e -> Neg(e,Parsing.symbol_start_pos()) }
| exp PLUS exp /* (* 足し算を構文解析するルール (caml2html: parser_add) *) */
    { Add($1, $3,Parsing.symbol_start_pos()) }
| exp MINUS exp
    { Sub($1, $3,Parsing.symbol_start_pos()) }
| exp EQUAL exp
    { Eq($1, $3,Parsing.symbol_start_pos()) }
| exp LESS_GREATER exp
    { Not(Eq($1, $3,Parsing.symbol_start_pos()),Parsing.symbol_start_pos()) (* some float comparisons differ from OCaml for NaN; see: https://github.com/esumii/min-caml/issues/13#issuecomment-1147032750 *) }
| exp LESS exp
    { Not(LE($3, $1,Parsing.symbol_start_pos()),Parsing.symbol_start_pos()) }
| exp GREATER exp
    { Not(LE($1, $3,Parsing.symbol_start_pos()),Parsing.symbol_start_pos()) }
| exp LESS_EQUAL exp
    { LE($1, $3,Parsing.symbol_start_pos()) }
| exp GREATER_EQUAL exp
    { LE($3, $1,Parsing.symbol_start_pos()) }
| IF exp THEN exp ELSE exp
    %prec prec_if
    { If($2, $4, $6,Parsing.symbol_start_pos()) }
| MINUS_DOT exp
    %prec prec_unary_minus
    { FNeg($2,Parsing.symbol_start_pos()) }
| exp PLUS_DOT exp
    { FAdd($1, $3,Parsing.symbol_start_pos()) }
| exp MINUS_DOT exp
    { FSub($1, $3,Parsing.symbol_start_pos()) }
| exp AST_DOT exp
    { FMul($1, $3,Parsing.symbol_start_pos()) }
| exp SLASH_DOT exp
    { FDiv($1, $3,Parsing.symbol_start_pos()) }
| LET IDENT EQUAL exp IN exp
    %prec prec_let
    { Let(addtyp $2, $4, $6,Parsing.symbol_start_pos()) }
| LET REC fundef IN exp
    %prec prec_let
    { LetRec($3, $5,Parsing.symbol_start_pos()) }
| simple_exp actual_args
    %prec prec_app
    { App($1, $2,Parsing.symbol_start_pos()) }
| elems
    %prec prec_tuple
    { Tuple($1,Parsing.symbol_start_pos()) }
| LET LPAREN pat RPAREN EQUAL exp IN exp
    { LetTuple($3, $6, $8,Parsing.symbol_start_pos()) }
| simple_exp DOT LPAREN exp RPAREN LESS_MINUS exp
    { Put($1, $4, $7,Parsing.symbol_start_pos()) }
| exp SEMICOLON exp
    { Let((Id.gentmp Type.Unit, Type.Unit), $1, $3,Parsing.symbol_start_pos()) }
| ARRAY_CREATE simple_exp simple_exp
    %prec prec_app
    { Array($2, $3,Parsing.symbol_start_pos()) }
| error //エラー発生時の処理を変更。課題１。
    { Printf.fprintf stdout "line %d\n" (Parsing.symbol_start_pos()).pos_lnum;
    failwith
        (Printf.sprintf "parse error near characters %d-%d"
           (Parsing.symbol_start ())
           (Parsing.symbol_end ()))
           }

fundef:
| IDENT formal_args EQUAL exp
    { { name = addtyp $1; args = $2; body = $4 } }

formal_args:
| IDENT formal_args
    { addtyp $1 :: $2 }
| IDENT
    { [addtyp $1] }

actual_args:
| actual_args simple_exp
    %prec prec_app
    { $1 @ [$2] }
| simple_exp
    %prec prec_app
    { [$1] }

elems:
| elems COMMA exp
    { $1 @ [$3] }
| exp COMMA exp
    { [$1; $3] }

pat:
| pat COMMA IDENT
    { $1 @ [addtyp $3] }
| IDENT COMMA IDENT
    { [addtyp $1; addtyp $3] }
