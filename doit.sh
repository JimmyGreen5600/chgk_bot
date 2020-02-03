#!/bin/bash
./parse.py > quest.txt
file="quest.txt"
IFS=$'\n'
for var in $(cat $file)
do
./script.sh "$(cat $file)"
done
