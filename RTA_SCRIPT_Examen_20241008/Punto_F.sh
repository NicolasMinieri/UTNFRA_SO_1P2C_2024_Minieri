#!/bin/bash


IPPUBLICA=$(curl -s ifconfig.me)

USUARIO=$(echo $HOME | awk -F '/' '{print $3}')

HASH=$(sudo grep $USUARIO /etc/shadow | awk -F ':' '{print $2}')

URLREPO=$(git remote get-url origin)

echo ""
echo "Mi ip publica es: $IPPUBLICA"
echo ""
echo "Mi usuario es: $USUARIO"
echo ""
echo "Mi hash de mi usuario es: $HASH"
echo ""
echo "Mi ip publica es $IPPUBLICA"
echo ""
echo "La url de mi repositorio es: $URLREPO"
echo ""