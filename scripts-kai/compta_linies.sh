#!/bin/bash
#Kai Araneta Núñez
#25/09/25
#Aquest script compta linies utils d'un fitxer

#llegeix /etc/passwd, elimina línies buides, compta línies
cat /etc/passwd 2> errors.log | grep -v '^$' | wc -l > linies.log

#afegeix al final de linies.log la data i hora en que s'ha fet el recompte.
date >> linies.log

echo "Procés completat! Consluta linies.log i errors.log"

