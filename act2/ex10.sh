#!/bin/bash
echo "El nom d'usuari és: $USER"
echo "Resultat de whoami: $(whoami)"

echo "Directori personal: $HOME, Directori actual: $PWD"

echo "Contigut del directori actual: " `ls`

echo "Elements que hi ha en aquest directori: " `ls | wc -l`

echo "PID del shell: $$"

echo "Codi de retorn de l'última ordre: $?"
