#!/bin/sh

LIST="$1"

arr="$(echo ${LIST} | tr "," "\n")"

for folder in $arr ;
do
	echo "$folder"
	cd $folder
	COUNTER=0
	for file in ./* ;
	do
		mv $file "$COUNTER.jpg"
		let COUNTER=$COUNTER+1
	done
	cd ../
done