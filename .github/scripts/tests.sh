#!/bin/bash

function test()
{
    ./history-check.sh "$1" > /dev/null
    if [[ "$?" -eq 0 ]] ; then
        echo "$1... ✅ Passed"
    else
        echo "$1... ❌ Failed"
    fi
}

test test_data/1.txt
test test_data/2.txt
test test_data/3.txt
