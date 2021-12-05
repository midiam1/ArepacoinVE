#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# Script para instalar ArepaCoin
clear # Limpio pues no soy cochino
# Actualizo todo
 sudo apt-get update -y
 sudo apt-get upgrade -y

# Las librerías y soporte para QT

 sudo apt-get install build-essential -y
 sudo apt-get install libssl-dev -y
 sudo apt-get install libdb++-dev -y
 sudo apt-get install libboost-all-dev -y
 sudo apt-get install pkg-config libcurl-openssl1.0-dev libjansson-dev libgmp-dev make g++ gcc -y
 sudo apt-get install libminiupnpc-dev automake autoconf -y
 sudo apt-get install libqrencode-dev -y

 sudo apt install qt5-default  -y
 sudo apt install qt4-default  -y

# Descargo los binarios de ArepaCoin
sudo apt-get install git # Por si no está instalado
git clone https://github.com/ProjectArepa/Arepacoin

cd Arepacoin