#!/bin/bash
for f in figures/*.eps
do
	base=${f%.eps}
	if [ ! -f ${base}.pdf ] 
	then
		echo "Converting $f To $base.pdf"
		convert ${base}.eps ${base}.pdf
	fi
done

