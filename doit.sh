#!/bin/bash
chgk_bot/parse.py > quest.txt
file="quest.txt"
IFS=$'\n'
for var in $(cat $file)
do
" $var"
chgk_bot/script.sh "$(cat $file)"
done
