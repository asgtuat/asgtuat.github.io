#!/bin/tcsh

echo ${#}
if(${#} > 0) then
    echo ${*}
else
    echo "No args..."
endif
