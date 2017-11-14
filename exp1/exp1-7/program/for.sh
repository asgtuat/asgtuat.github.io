#!/bin/bash

i=0
while [ ${i} -lt 10 ]
do
    echo $i
    i=`expr $i + 1` 
done

array="one three five seven nine"
for i in $array;
do
    echo $i
done
