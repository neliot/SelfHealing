#!/bin/bash
for f in figures/*.dia
do
	base=${f%.dia}
	if [ ! -f ${base}.pdf ] 
	then	
		echo "Converting $f To $base.pdf"
		dia $f -t eps -e ${base}.eps
		convert -density 600 ${base}.eps ${base}.pdf
		rm ${base}.eps
	fi
done
for f in figures/*.jpg
do
	base=${f%.jpg}
	if [ ! -f ${base}.pdf ] 
	then
		echo "Converting $f To $base.pdf"
		convert ${base}.jpg ${base}.pdf
	fi
done
for f in figures/*.eps
do
	base=${f%.eps}
	if [ ! -f ${base}.pdf ] 
	then
		echo "Converting $f To $base.pdf"
		convert ${base}.eps ${base}.pdf
	fi
done

