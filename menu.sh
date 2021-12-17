#!/bin/bash

# Instalo dialog
sudo apt install dialog -y

HEIGHT=15
WIDTH=0
CHOICE_HEIGHT=4
BACKTITLE="ArepaCoinVe #hechoenVenezuela v0.0"
TITLE="Instalación de ArepaCoin en Linux"
MENU="Escoja una de las siguientes opciones ::"

OPTIONS=(1 " Instalar Webmin"
	 2 "Compilar ArepaCoin Opción Gráfica"
         3 "Compilar ArepaCoin Opción Demonio"
         4 "Compilar ArepaCoin Opción Gráfica + Demonio")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1) 
		clear
		echo "Has escogido instalar Webmin espera 10 segundos"
		sleep 10
            ;;
        2)
            echo "You chose Option 2"
            ;;
        3)
            echo "You chose Option 3"
            ;;
esac
