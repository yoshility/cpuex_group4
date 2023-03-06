# コンパイラの使い方
1. `compiler/my-min-caml` ディレクトリ下に移動
2. test ディレクトリにコンパイルしたいファイル`hoge.m`lを置く
3. `make hoge.s` で通常のコンパイル、`make hoge_.s` (下付きバー)でライブラリが加わったアセンブリファイルをコンパイル
または
`make min-caml` を実行後に`./min-caml hoge` でコンパイルすることもできる。

minrtのコンパイルは`make ../minrt.s` で実行できる。
