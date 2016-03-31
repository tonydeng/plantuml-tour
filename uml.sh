#!/bin/bash

EXT=$1
DIR="./uml"

generate(){
	UML=$1
	FILE=`head -n1 $UML | awk '{print $2}'`
	if [ -n "$FILE" ]; then
		EXT=${FILE##*.}
	fi

	if [[ -n "$EXT" ]]; then
		CMD="plantuml -t$EXT $UML -o ../img"
		echo $CMD
		eval $CMD
		echo $FILE
	else
		CMD="plantuml $@ -o ../img"
		echo $CMD
		eval $CMD
		echo ${UML%.*}.png
	fi
}



ls $DIR | while read LINE ; do
	echo $LINE
	generate $DIR/$LINE
done

