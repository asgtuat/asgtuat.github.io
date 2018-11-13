#!/bin/bash

a=A
b="A"

if [ ${a} = ${b} ]; then
    echo "a = b"
else
    echo "a != b"
fi

a=10
b=2

if [ ${a} -lt ${b} ]; then
    echo "a < b"
else
    echo "a >= b"
fi
