#!/usr/bin/sh

echo -n "Quina longitud?	"
read LONGITUD

if [ ${LONGITUD} -gt 8 ]; then
	resultat=$(cat /dev/urandom | strings | head -n 50 | tr -d '\n"`\\ \t' | head -c ${LONGITUD} && echo || tr -cd '[:alnum:]' < /dev/urandom | fold -w 10 | head -n 20)
	
	echo ""
	echo "	${resultat}"
	echo ""
else
	echo ""
	echo "Longitud ha de ser més gran o igual a 8"
	echo ""
	exit
fi
