#!/bin/bash

UML=$1

FILE=`head -n1 $UML | awk '{print $2}'`
if [ -n "$FILE" ]; then
	EXT=${FILE##*.}
	CMD="plantuml -t$EXT $@"
	echo $CMD
	eval $CMD
	echo $FILE
else
	CMD="plantuml $@"
	echo $CMD
	eval $CMD
	echo ${UML%.*}.png
fi