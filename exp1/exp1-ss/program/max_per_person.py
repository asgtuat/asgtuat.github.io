#!/usr/bin/python
import sys

country_pos    = 0
per_person_pos = 1
total_pos      = 2

def max_per_person(filename):
    f   = open(filename)
    max = 0
    count = 0
    
    for line in f.readlines():
        ln  = line.split()
        if (ln[country_pos] == "Countries"):
            continue
        if (max < float(ln[per_person_pos])):
            country = ln[country_pos]
            max     = float(ln[per_person_pos])

    print(country)
        
# main
max_per_person(sys.argv[1])
