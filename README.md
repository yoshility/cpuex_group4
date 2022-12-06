# シミュレータの使い方
## フォルダ構成
```
sim/ -- assembler/ (アセンブラ用のファイル一式)
     -- simulator/ (シミュレータ用のファイル一式)
     -- test/      (入力用アセンブリファイルや生成されたバイナリが入る)
```

## シミュレートの仕方
1. testフォルダにアセンブリファイルを用意

   ※ 書式は`test/fib_iter2.s`を参照し、空白行や#コメントだけの行を作らないように 
2. simulator/下で以下を実行
   ```
   $ make
   $ ./sim ../test/<filename> <option1> <option2> <option3>
   ```

※ `option`の説明：
   ```
   option1: デバッグ内容をファイルに出力したい -> 1
            ではなく普通に標準出力でいい       -> 0
   option2: キャッシュを使いたい               -> 1
            キャッシュではなくメモリのみ使う   -> 0
   option3: 1命令ずつ実行したい                -> 1
            最後まで一気に実行したい           -> 0
   ```
使用例：
   
   アセンブリ`fib_iter2.s`をキャッシュを使って、1命令ずつ実行し、標準出力で見たいとき：
   ```
   $ ./sim ../test/fib_iter2.s 0 1 1
   ```
   1命令ずつ実行するときはエンターを押せば次の命令に行く。
   
   option1については、ターミナルで>コマンドを使えばファイルに出力できるのでそのうち消そうかと思っている。

## アセンブラの使い方
1. testフォルダにアセンブリファイルを用意
2. assembler/下で以下を実行
   ```
   $ make
   $ ./asm ../test/<filename> <option1>
   ```
3. 変換された`binary.txt`が`test/`に入る

※ `option`の説明：
   ```
   option1: デバッグモードで`binary.txt`を作りたい   -> 1
            コアで実行できるプレーンなバイナリを作る  -> なにも書かない
   ```
使用例：

   `fib_iter2.s`をデバッグモードでアセンブルしたいとき：
   ```
   $ ./asm ../test/fib_iter.s 1
   ```
