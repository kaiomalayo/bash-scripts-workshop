#!/bin/bash

usuari="usuari_remot"
host="192.168.1.100"

ssh "$usuari@$host" << EOF
echo "Nom del host:"
hostname

echo "Usuari actual:"
whoami

echo "Directori actual:"
pwd

echo "Espai en disc:"
df -h

echo "Processos actius:"
ps aux | head -5
EOF
