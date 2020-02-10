#!/bin/bash
./parse.py > quest.txt
file="quest.txt"
IFS=$'\n'
./try.sh
while read question_block
do
	echo "Outer loop"
	#sed -i 's/Ответ:/\nОтвет:/g' $question_block
	#сохранить $question_block в файл question_block.tmp
	echo $question_block > question_block.tmp
	#добавить перенос строки перед ответом
	sed -i 's/Ответ:/\nОтвет:/g' question_block.tmp
	#вывести в цикле
	question=$(head -n 1 question_block.tmp)
	./script.sh $question
	sleep 1m
	answer=$(tail -n 1 question_block.tmp)
	./script.sh $answer
	sleep 20s

done < quest.txt

