#!/bin/bash

for f in *.eps
do
	NAME=`echo "$f" | cut -d'.' -f1`
	echo "Converting $f To $NAME.pdf"
	/usr/bin/convert $f $NAME.pdf
done

