#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Ús: $0 nom_usuari"
    exit 1
fi

usuari=$1

echo "Selecciona una opció:"
echo "1) Comprovar si l'usuari té drets d'administrador"
echo "2) Comprovar si l'usuari existeix"
echo "3) Comprovar si el directori personal existeix"
read -p "Opció: " opcio

case $opcio in
    1)
        if id -nG "$usuari" | grep -qw sudo; then
            echo "L'usuari $usuari té drets d'administrador."
        else
            echo "L'usuari $usuari NO té drets d'administrador."
        fi
        ;;
    2)
        if id "$usuari" &>/dev/null; then
            echo "L'usuari $usuari existeix."
        else
            echo "L'usuari $usuari NO existeix."
        fi
        ;;
    3)
        home_dir=$(getent passwd "$usuari" | cut -d: -f6)

        if [ -d "$home_dir" ]; then
            echo "El directori personal $home_dir existeix."
        else
            echo "El directori personal NO existeix o no és vàlid."
        fi
        ;;
    *)
        echo "Opció no vàlida."
        ;;
esac
