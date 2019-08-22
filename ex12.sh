#!/bin/bash
#idan twito 311125249
currentP=$pwd
cd "$1"
OLDIFS="$IFS"
IFS=$'\n'
for i in $(LC_COLLATE=C ls)
do
	if [[ $i == *.txt ]]
	then
		echo "$i is a file"
	fi
done

for i in $(LC_COLLATE=C ls)
do
	if [[ -d $i ]] 
	then
		echo "$i is a directory"
	fi
done
IFS="$OLDIFS"
cd $currentP
