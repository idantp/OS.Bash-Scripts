#!/bin/bash
#idan twito 311125249
balance=0
totalBalance=0
fullname=$1
fullnameLength=$((($(wc -w <<< $fullname)) +1))
while IFS='' read -r line || [[ -n "$line" ]]
do
	if [[ $line == $fullname[[:space:]]* ]]
	then
		echo $line
		balance=$(echo $line | cut -d " " -f $fullnameLength)
		totalBalance=$[$totalBalance + $balance]
	fi
done < "$2"
echo "Total balance:" $totalBalance
