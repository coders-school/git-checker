#!/bin/bash
source functions.sh

DIR=$1
dirExist ${DIR}

L=log\.txt
M=main\.cpp

git log --oneline >> $L
g++ $M

echo "🔎 Performing checks"
echo
pattern ${L} "Initial commit" "Initial commit"
pattern ${L} "Farewell changed" "Farewell changed"
pattern ${L} "Greetings" "Greetings"
pattern ${L} "Merge branch cs" "Merge branch"
pattern ${L} "History added" "History added"
pattern ${M} "Hello Coders School in $M" "Hello Coders School"
echo

summary
