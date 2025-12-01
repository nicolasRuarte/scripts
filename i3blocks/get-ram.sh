#!/usr/bin/env bash

COUNTER=0
TOTAL_RAM=""
USED_RAM=""

while read line; do
    ((COUNTER++))

    if [ $COUNTER -eq 1 ]; then
        TOTAL_RAM=$line
    fi

    if [ $COUNTER -eq 2 ]; then
        USED_RAM="$line"
    fi
done < <(free -h | grep -Eo "[0-9][0-9]?,?[0-9]?[0-9]?[0-9]?")

echo "$TOTAL_RAM GB/$USED_RAM GB"
