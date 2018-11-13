#!/bin/bash

func() {
    if [ ${#} -gt 1 ]; then
       echo $@ 
    else
       echo "No args.."
    fi
}

# main
ret=`func ${@}`
echo $ret
