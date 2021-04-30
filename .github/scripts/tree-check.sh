#!/bin/bash
source functions.sh

DIR=$1
M=main\.cpp
L=log\.txt

dirExist ${DIR}
fileExist ${DIR}/$M

git log --oneline >> $L
g++ ${DIR}/$M

echo "🔎 Performing checks"
echo
pattern ${L} "Initial commit" "Initial commit"
pattern ${L} "Farewell changed" "Farewell changed"
pattern ${L} "Greetings" "Greetings"
pattern ${L} "Merge branch cs" "Merge branch"
pattern ${L} "History added" "History added"
pattern ${DIR}/${M} "Hello Coders School in $M" "Hello Coders School"
echo

summary
