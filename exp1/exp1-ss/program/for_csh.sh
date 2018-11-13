#!/bin/tcsh

set i=0
while ( ${i} < 10 )
     echo $i
     @ i= $i + 1
end

set array=(one three five seven nine)
foreach i ($array)
    echo $i
end

