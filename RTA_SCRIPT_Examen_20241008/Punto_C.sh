#!/bin/bash

HASH=$(sudo grep "vagrant" /etc/shadow | awk -F ':' '{print $2}')

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

# -m para crear directorio de usuario, -s para setear el interprete de comando de usuario, -g para que grupo va a ir ese usuario, -p para setear su contraseña 
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$HASH" p1c2_2024_A1 
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$HASH" p1c2_2024_A2  
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$HASH" p1c2_2024_A3 
sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores -p "$HASH" p1c2_2024_P1 

# chown -R "el parametro -R es para que sea recursivo" propietario nuevo :grupo : path del archivo

sudo chown -R p1c2_2024_A1:p1c2_2024_gAlumno /Examenes-UTN/alumno_1
sudo chown -R p1c2_2024_A2:p1c2_2024_gAlumno /Examenes-UTN/alumno_2
sudo chown -R p1c2_2024_A3:p1c2_2024_gAlumno /Examenes-UTN/alumno_3
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores

#modificando permisos recursivamente con chmod

sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 760 /Examenes-UTN/alumno_2
sudo chmod -R 700 /Examenes-UTN/alumno_3
sudo chmod -R 773 /Examenes-UTN/profesores

#accediendo al usuario y ejecutando el comando whoami y que la salida se guarde en un txt

sudo su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1