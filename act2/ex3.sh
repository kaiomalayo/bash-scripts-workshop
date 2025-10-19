#!/bin/bash
echo "Introdueix el nom d'una Variable Global (HOME, USER, SHELL, PWD, PATH): "
read variable_global

echo "Valor de $variable_global"
echo "codi de retorn d'execucció: $?"

echo

echo "Arguments: $@"
echo "PID del shell: $$"
