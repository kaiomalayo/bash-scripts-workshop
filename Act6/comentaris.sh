#!/bin/bash

USG_ERR=7  # codi error ús

max_dos () {
	# retorna el més gran o indica iguals
	if [ "$1" -eq "$2" ] ; then
		echo 'Iguals'
		exit 0
	elif [ "$1" -gt "$2" ] ; then
		ret_val=$1
	else
		ret_val=$2
	fi
}

err_str () {
	# missatge d'ús i sortida
	echo "Ús: $0 <numero1>  <numero2>"
	exit $USG_ERR
}

NUM_1=$1
NUM_2=$2

# comprovem que hi hagi dos paràmetres
if [ $# -ne 2 ] ; then
	err_str
elif [ `expr $NUM_1 : '[0-9]*'` -eq ${#NUM_1} ] ; then
	# comprovem que el segon també sigui numèric
	if [ `expr $NUM_2 : '[0-9]*'` -eq ${#NUM_2} ] ; then  
		max_dos $NUM_1 $NUM_2
		echo $ret_val  # mostrem el resultat
	else
		err_str
	fi
else
	err_str
fi

exit 0
