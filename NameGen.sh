#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "usage: $0 usernames.txt"
    exit
fi

if [ ! -f "$1" ]; then
    echo "$1 not found"
    exit
fi

while IFS= read -r line; do
    clean_line=$(echo "$line" | tr -cd '[:alpha:][:space:]')

    tokens=()
    for word in $clean_line; do
        tokens+=("$(echo "$word" | tr '[:upper:]' '[:lower:]')")
    done

    if [ "${#tokens[@]}" -lt 1 ]; then
        continue
    fi

    fname="${tokens[0]}"
    lname=""

    if [ "${#tokens[@]}" -eq 2 ]; then
        lname="${tokens[1]}"
    elif [ "${#tokens[@]}" -gt 2 ]; then
        unset 'tokens[0]'
        lname=$(printf "%s" "${tokens[@]}")
    fi

    echo "${fname}${lname}"
    echo "${lname}${fname}"
    echo "${fname}.${lname}"
    echo "${lname}.${fname}"
    echo "${lname}${fname:0:1}"
    echo "${fname:0:1}${lname}"
    echo "${lname:0:1}${fname}"
    echo "${fname:0:1}.${lname}"
    echo "${lname:0:1}.${fname}"
    echo "${fname}"
    echo "${lname}"

done < "$1"
