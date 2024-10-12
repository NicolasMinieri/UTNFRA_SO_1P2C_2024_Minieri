#!/bin/bash

touch ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt

echo "" > ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt

IPPUBLICA=$(curl -s ifconfig.me)

USUARIO=$(echo $HOME | awk -F '/' '{print $3}')

HASH=$(sudo grep $USUARIO /etc/shadow | awk -F ':' '{print $2}')

URLREPO=$(git remote get-url origin)

touch ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt

echo "" >> ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt
echo "Mi ip publica es: $IPPUBLICA" >> ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt
echo "" >> ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt
echo "Mi usuario es: $USUARIO" >> ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt
echo "" >> ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt
echo "Mi hash de mi usuario es: $HASH" >> ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt
echo "" >> ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt
echo "Mi ip publica es $IPPUBLICA" >> ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt
echo "" >> ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt
echo "La url de mi repositorio es: $URLREPO" >> ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt
echo "" >> ../RTA_ARCHIVOS_Examen_20241008/filtro_avanzado.txt