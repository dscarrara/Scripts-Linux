#!/bin/bash

# Atualizando o Sistema

sudo apt update && 
sudo apt upgrade -y &&

# Habilitando usuário na tela de login
# Mudando tema do lightdm para Adwaita-dark
 
sudo sed -i '109s/^#//g' /etc/lightdm/lightdm.conf &&
sudo sed -i '53s/^#//g' /etc/lightdm/lightdm-gtk-greeter.conf &&
sudo sed -i '53s/$/Adwaita-dark/' /etc/lightdm/lightdm-gtk-greeter.conf &&

# Instalando Flatpak

sudo apt update &&
sudo apt upgrade -y &&
sudo apt install flatpak -y &&
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo &&

# Instalando Programas Flatpak

# Lista completa de programas
#flatpak install org.onlyoffice.desktopeditors org.gimp.GIMP com.spotify.Client io.github.shiftey.Desktop org.gnome.Boxes com.valvesoftware.Steam org.videolan.VLC io.github.vikdevelop.SaveDesktop com.github.eneshecan.WhatsAppForLinux org.audacityteam.Audacity -y &&

# Programas excenciais
flatpak install com.spotify.Client org.videolan.VLC com.github.eneshecan.WhatsAppForLinux -y &&

# Baixando Chrome e Onedrive

wget -P /home/daniel/Downloads https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&

wget -P /home/daniel/Downloads https://download.opensuse.org/repositories/home:/jstaf/Debian_12/amd64/onedriver_0.14.1-1_amd64.deb &&

# Instalando curl para chave Microsoft

sudo apt install curl -y &&

# Adiconando chave Microsoft e repositório do vs code

cd /tmp && curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg && cd $HOME &&

echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list &&

sudo apt update &&

# instalando programas via apt

sudo apt install fonts-liberation libu2f-udev code gparted -y &&

# Instalando Chrome e Onedrive

cd /
cd /home/daniel/Downloads

sudo dpkg -i google-chrome-stable_current_amd64.deb onedriver_0.14.1-1_amd64.deb &&
sudo apt --fix-broken install &&

# Reiniciando o Sistema

sudo reboot