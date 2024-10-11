#!/bin/bash



touch ../RTA_ARCHIVOS_Examen_20241008/filtro_basico.txt




grep MemTotal /proc/meminfo >> ../RTA_ARCHIVOS_Examen_20241008/filtro_basico.txt
sudo dmidecode -t chassis | head -n7 | tail -n2 >> ../RTA_ARCHIVOS_Examen_20241008/filtro_basico.txt

cat ../RTA_ARCHIVOS_Examen_20241008/filtro_basico.txt

