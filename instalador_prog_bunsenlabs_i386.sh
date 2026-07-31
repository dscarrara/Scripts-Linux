#!/bin/bash

# Atualizando o Sistema

sudo apt update && 
sudo apt upgrade -y &&

# Baixando Onedrive

wget -P /home/hpmini/Downloads https://download.opensuse.org/repositories/home:/jstaf/Debian_12/i386/onedriver_0.14.1-1_i386.deb &&


# instalando programas via apt

sudo apt install aspell-pt-br libreoffice geany geany-plugins firefox-esr -y &&

# Instalando Onedrive

cd /
cd /home/hpmini/Downloads

sudo apt --fix-broken install &&
sudo dpkg -i onedriver_0.14.1-1_amd64.deb &&

# Reiniciando o Sistema

sudo reboot