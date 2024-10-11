#!/bin/bash
DISCO=$(sudo fdisk -l | grep "10 GiB" | awk '{print $2}' | awk -F ':' '{print $1}')
echo "Disco: $DISCO"
sudo fdisk $DISCO <<EOF
n
p
1

+1000M
n
p
2

+1000M
n
p
3

+1000M
n
e
4


n

+1000M
n

+1000M
n

+1000M
n

+1000M
n

+1000M
n

+1000M
n

+1000M
p
w
EOF

#formateo de particiones

sudo mkfs.ext4 ${DISCO}1
sudo mkfs.ext4 ${DISCO}2
sudo mkfs.ext4 ${DISCO}3
#una particion extendida no se puede formatear en ext4
sudo mkfs.ext4 ${DISCO}5
sudo mkfs.ext4 ${DISCO}6
sudo mkfs.ext4 ${DISCO}7
sudo mkfs.ext4 ${DISCO}8
sudo mkfs.ext4 ${DISCO}9
sudo mkfs.ext4 ${DISCO}10
sudo mkfs.ext4 ${DISCO}11



# montaje persistente

echo "${DISCO}1  /Examenes-UTN/alumno_1/parcial_1   ext4  defaults  0 0"  | sudo tee -a /etc/fstab
echo "${DISCO}2  /Examenes-UTN/alumno_1/parcial_2   ext4  defaults  0 0"  | sudo tee -a /etc/fstab
echo "${DISCO}3  /Examenes-UTN/alumno_1/parcial_3   ext4  defaults  0 0"  | sudo tee -a /etc/fstab
echo "${DISCO}5  /Examenes-UTN/alumno_2/parcial_1   ext4  defaults  0 0"  | sudo tee -a /etc/fstab
echo "${DISCO}6  /Examenes-UTN/alumno_2/parcial_2   ext4  defaults  0 0"  | sudo tee -a /etc/fstab
echo "${DISCO}7  /Examenes-UTN/alumno_2/parcial_3   ext4  defaults  0 0"  | sudo tee -a /etc/fstab
echo "${DISCO}8  /Examenes-UTN/alumno_3/parcial_1   ext4  defaults  0 0"  | sudo tee -a /etc/fstab
echo "${DISCO}9  /Examenes-UTN/alumno_3/parcial_2   ext4  defaults  0 0"  | sudo tee -a /etc/fstab
echo "${DISCO}10  /Examenes-UTN/alumno_3/parcial_3   ext4  defaults  0 0"  | sudo tee -a /etc/fstab
echo "${DISCO}11  /Examenes-UTN/profesores          ext4  defaults  0 0"  | sudo tee -a /etc/fstab
sudo mount -a