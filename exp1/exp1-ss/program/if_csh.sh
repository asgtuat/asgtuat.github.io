#!/bin/tcsh

set a=A
set b="A"

if(${a} == ${b}) then
  echo "a = b"
else
  echo "a != b"
endif

set a=10
set b=2

if(${a} < ${b}) then
  echo "a < b"
else
  echo "a >= b"
endif
