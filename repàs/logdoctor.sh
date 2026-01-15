#!/bin/bash

echo "Log Doctor - analitzador de logs"


if [ -n "$1" ]; then
    LOGFILE="$1"
else
    read -p "Introdueix el nom del fitxer de log: " LOGFILE
fi


while [ ! -f "$LOGFILE" ] || [ ! -r "$LOGFILE" ]; do
    echo "Error: el fitxer no existeix o no és llegible."
    read -p "Introdueix un fitxer vàlid: " LOGFILE
done

TOTAL=$(wc -l < "$LOGFILE")
ERRORS=$(grep -c "ERROR" "$LOGFILE")
WARNINGS=$(grep -c "WARNING" "$LOGFILE")

echo "Resultats:"
echo "Total línies: $TOTAL"
echo "Errors: $ERRORS"
echo "Warnings: $WARNINGS"

read -p "Quants informes vols crear? " N

# Validació de número enter positiu
while ! [[ "$N" =~ ^[0-9]+$ ]] || [ "$N" -le 0 ]; do
    echo "Has d'introduir un número enter positiu."
    read -p "Quants informes vols crear? " N
done

for ((i=1; i<=N; i++)); do
    FILE="informe_${i}.txt"
    echo "Total línies: $TOTAL" > "$FILE"
    echo "Errors: $ERRORS" >> "$FILE"
    echo "Warnings: $WARNINGS" >> "$FILE"
done

echo "Informes creats correctament."
