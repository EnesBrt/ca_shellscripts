#!/bin/bash

a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)

for elem_a in "${a[@]}"; do
    in_b=false
    in_c=false
    for elem_b in "${b[@]}"; do
        if [ "$elem_a" -eq "$elem_b" ]; then
            in_b=true
            break
        fi
    done
    for elem_c in "${c[@]}"; do
        if [ "$elem_a" -eq "$elem_c" ]; then
            in_c=true
            break
        fi
    done
    if [ "$in_b" = true ] && [ "$in_c" = true ]; then
        echo "$elem_a"
    fi
done

