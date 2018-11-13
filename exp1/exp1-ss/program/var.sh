#!/bin/bash

# COLOR という変数に値をいれて出力
COLOR=purple      
echo ${COLOR}

# a, b に値を代入して演算する
a=1
b=2
c=${a}+${b}
d=`expr ${a} + ${b}`
echo ${c}
echo ${d}

# コマンドの出力結果を代入する
DATE=`date`
echo ${DATE}


