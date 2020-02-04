#!/bin/bash
./parse.py > quest.txt
file="quest.txt"
IFS=$'\n'
while read example
do
./script.sh $example
done < quest.txt
