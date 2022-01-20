#!/bin/bash
# -*- ENCODING: UTF-8 -*-

   # Script para instalar ArepaCoin
clear # Limpio pues no soy cochino

   # Actualizo todo
 sudo apt-get update -y && sudo apt-get upgrade -y

   # Las librerías y soporte para QT

 sudo apt-get install build-essential -y
 sudo apt-get install libssl-dev -y
 sudo apt-get install libdb++-dev -y
 sudo apt-get install libboost-all-dev -y
 sudo apt-get install pkg-config libcurl-openssl1.0-dev libjansson-dev libgmp-dev make g++ gcc -y
 sudo apt-get install libminiupnpc-dev automake autoconf -y
 sudo apt-get install libqrencode-dev -y

   # Librerías Qt

 sudo apt install qt5-default  -y
 sudo apt install qt4-default  -y

   # Base de datos

 echo "Installing Berkeley DB"
 sudo env LC_ALL=C.UTF-8 add-apt-repository -y ppa:bitcoin/bitcoin
 sudo apt-get -y update
 sudo apt-get -y install libdb4.8-dev libdb4.8++-dev

 clear # Limpio la pantalla porque soy limpio

   # Comienzo a compilar

   # Cambio tamaño de la memoria de intercambios
   # Evita que ocurra el -> g++: internal compiler error: Terminado (killed) (program cc1plus) <-


   sudo swapoff /swapfile
   sudo dd if=/dev/zero of=/swapfile bs=1M count=4096 oflag=append conv=notrunc
   sudo mkswap /swapfile
   sudo swapon /swapfile

   # Compilo con Make

echo "Compilando Demonio Monedero Arepacoin"
cd src
sudo chmod 775 leveldb/*
make -j$(nproc) -f makefile.unix
strip arepacoind
cd ..

   clear # Limpio la pantalla porque soy limpio

echo "Compilando Monedero Arepacoin  Qt"

qmake "USE_QRCODE=1"
make -j$(nproc)
