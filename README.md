# binaryコマンド
ロボットシステム学授業用

## 概要

- 標準入力から読み込んだ数字の二進数を出力する。


## 必要なソフトウェア

- Python
- テスト済みバージョン：3.7~3.10

## テスト環境

- ubuntu 22.04 LTS


## インストール方法

- 以下の手順でプロジェクトをローカル環境にインストールしてください。

- リポジトリをクローン
```
$ git clone https://github.com/1137yuhei/robosys2024.git
```
- ディレクトリに移動
```
$ cd robosys2024
```
- 'binary'スクリプトを実行権限を与える
```
$ chmod +x binary
```
## 使用方法
```
'echo <数字> | ./binary'
```
## 実行例

- 実行例１
```
$ echo 10 | ./binary
```
- 実行結果
```
0b1010
```
- 実行例１
```
$ echo 10 | ./binary
```
- 実行結果
```
-0b1010
```

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます.
- このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/slides_marp/robosys2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)
- ©2024 Mitsuno Yuhei
