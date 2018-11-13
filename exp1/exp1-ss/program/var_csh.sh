#!/bin/tcsh

# COLOR という変数に値をいれて出力
set COLOR=purple
echo $COLOR

# a, b に値を代入して演算する
set a=1
set b=2
set c=${a}+${b}
@ d = ${a} + ${b}
echo ${c}
echo ${d}

# コマンドの出力結果を代入する
set DATE=`date`
echo ${DATE}

