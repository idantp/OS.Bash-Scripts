#!/bin/bash
#idan twito 311125249
currentP=$pwd
OLDIFS="$IFS"
IFS=$'\n'
dpath="$1"
find "$dpath" -maxdepth 2 -type f -name $2 -print | sort | while read ffile
do
	cat $ffile
done
IFS="$OLDIFS"

cd $currentP
