# コンパイラの使い方
1. `compiler/min-caml` ディレクトリ下に移動
2. test ディレクトリにコンパイルしたいファイル`hoge.m`lを置く
3. `make hoge.s` で通常のコンパイル、`make hoge_.s` (下付きバー)でライブラリが加わったアセンブリファイルをコンパイル
または
`make min-caml` を実行後に`./min-caml hoge` でコンパイルすることもできる。

minrtのコンパイルは
compilerと並列のディレクトリに配布されたディレクトリ`cpuex-v1.4` を置いたあと
`make ../minrt.s` 