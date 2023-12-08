#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <program>"
    exit 1
fi

program="$1"
objdump -d "$program" | grep "^ " | cut -f2 | tr -d " " | sed 's/\(..\)/\\x\1/g' | sed 's/^/"/' | sed 's/$/"/' | tr -d '\n' | sed 's/\"//g' | sed 's/.\{64\}/&\n/g'

