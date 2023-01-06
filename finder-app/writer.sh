#!/bin/bash

writefile=$1
writestr=$2
if [ $# -ne 2 ]
then
	exit 1
else
	install -Dv /dev/null "$1"
	echo $2 > "$1"
	if [ $? -ne 0 ]
	then
		echo 1
	fi
fi
