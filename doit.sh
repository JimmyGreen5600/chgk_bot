#!/bin/bash
./parse.py > quest.txt
file="quest.txt"
./try.sh
IFS=$'\n'
while read example
do
./script.sh $example
done < quest.txt
