#!/bin/bash

#Colores
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

# Cancelar procesos
ctrl_c(){
  echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Cancelando Procesos...${endColour}
  sleep 1
  echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Procesos Cancelados!${endColour}
  exit 1
}

# Llama a la función "ctrl_c"
trap ctrl_c SIGINT

# Parámetros
opciones(){
  case $1 in 
    -u)
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Actualizando y upgradeando el sistema${endColour}
      sleep 1
      sudo apt update -y
      sleep 1
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Sistema Actualizado!${endColour}
      sleep 1
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Upgradeando sistema...${endColour}
      sleep 1
      sudo parrot-upgrade -y
      sleep 1
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Sistema upgradeado!${endColour}
      ;;
    -e)
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Descargando herramientas extras...${endColour}
      sleep 1
      sudo apt install cmatrix -y
      sleep 1
      sudo apt install docker.io -y
      sleep 1
      sudo apt install htop -y
      sleep 1
      sudo apt install btop -y
      sleep 1
      sudo apt install figlet -y 
      sleep 1
      sudo apt install kitty -y 
      sleep 1
      sudo apt install rofi -y 
      sleep 1
      sudo apt install picom -y 
      sleep 1
      sudo apt install sxhkd -y 
      sleep 1
      sudo apt install bspwm -y 
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Herramientas instaladas!${endColour}
      ;;
    -i)
      echo -e "\n"${purpleColour}[+]${endColour}${grayColour} Info!${endColour}
      echo -e "\n"${redColour}[+]${endColour}${grayColour} sobre "-u"${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} usa "sudo apt update" y "sudo parrot-upgrade"${endColour}
      echo -e "\n\n\n"${redColour}[+]${endColour}${grayColour} sobre "-e"${endColour}
      echo -e "\n"${blueColour}[+]${endColour}${grayColour} instala los siguientes paquetes${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} cmatrix${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} docker${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} htop${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} btop${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} figlet${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} kitty${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} rofi${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} picom${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} sxhkd${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} bspwm${endColour}
      echo -e "\n\n\n"${redColour}[+]${endColour}${grayColour} sobre "-r"${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Reinicia el sistema usando${endColour}${redColour} sudo reboot now${endColour}
      echo -e "\n\n\n"${redColour}[+]${endColour}${grayColour} sobre "-s"${endColour}
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} Apaga el sistema usando${endColour}${redColour} sudo shutdown now${endColour}
      ;;
    -r)
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} El sistema se reiniciará en 5 segundos, puedes cancelar...${endColour}
      sleep 5
      sudo reboot now
      ;;
    -s)
      echo -e "\n"${yellowColour}[+]${endColour}${grayColour} El sistema se apagará en 5 segundos, puedes cancelar...${endColour}
      sleep 5
      sudo shutdown now
      ;;
     *)
      figlet Bienvenido
      echo -e "\n"${grayColour} Uso:${endColour}
      echo -e "\t\n"${yellowColour}[+]${endColour}${grayColour} -u] → Actualiza y upgradea el sistema [update y upgrade]${endColour}
      echo -e "\t\n"${yellowColour}[+]${endColour}${grayColour} -e] → Instala herramientas extras${endColour}
      echo -e "\t\n"${yellowColour}[+]${endColour}${grayColour} -i] → Te da información sobre los comandos usados en los parámetros${endColour}
      echo -e "\t\n"${yellowColour}[+]${endColour}${grayColour} -r] → Reinicia el sistema${endColour}
      echo -e "\t\n"${yellowColour}[+]${endColour}${grayColour} -s] → Apaga el sistema${endColour}
      echo -e "\n\n\n"${redColour}[+]${endColour}${grayColour} Script by Aussterben${endColour}
      ;;
  esac
}

opciones $1
    
