#!/bin/bash
source functions.sh

FILE=$1
fileExist ${FILE}

G=git-majonez
M=main\.cpp


echo "🔎 Performing checks"
echo
pattern ${FILE} "Directory $G created" "mkdir(\s+).*$G"
pattern ${FILE} "Repository initialized" "git(\s+)init"
pattern ${FILE} "'$M' created" "(touch|code|vim|gedit|nano)(\s+)(.*)*$M"
pattern ${FILE} "'$M' added" "git(\s+)add(\s+)($M|\.)"
pattern ${FILE} "Commit created" "git(\s+)commit"
pattern ${FILE} "'Remote repo address added" "git(\s+)remote(\s+)add(\s+)origin(\s+)"
pattern ${FILE} "Pushed to the remote repo" "git(\s+)push(\s+)-u(\s+)origin(\s+)master"
pattern ${FILE} "Branch 'cs' created" "git(\s+)(branch|checkout(\s+)-b)(\s+)cs"
pattern ${FILE} "HEAD moved to \"Initial commit\"" "git(\s+)reset(\s+)|git(\s+)rebase(\s+)-i"
pattern ${FILE} "Branch 'cs' pushed" "git(\s+)push(\s+)origin(\s+)cs"
pattern ${FILE} "Branch 'cs' merged into 'master'" "git(\s+)merge(\s+)cs"
echo

summary
