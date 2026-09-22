#!/bin/bash

# Atualizando o Sistema

sudo apt update && 
sudo apt upgrade -y &&

# Instalando Flatpak

# sudo apt install flatpak -y &&
# flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo &&

# Instalando Programas Flatpak

# Lista completa de programas
    #org.onlyoffice.desktopeditors 
    #org.gimp.GIMP  
    #com.spotify.Client 
    #io.github.shiftey.Desktop 
    #org.gnome.Boxes 
    #com.valvesoftware.Steam 
    #org.videolan.VLC 
    #io.github.vikdevelop.SaveDesktop 
    #com.ktechpit.whatsie
    #org.audacityteam.Audacity -y &&

# Programas excenciais
flatpak install com.spotify.Client com.valvesoftware.Steam org.gnome.Boxes org.videolan.VLC -y  &&

# Baixando Chrome e insync

wget -P /home/daniel/Downloads https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
wget -P /home/daniel/Downloads https://cdn.insynchq.com/builds/linux/3.9.11.60043/insync_3.9.11.60043-jammy_amd64.deb &&

# Instalando curl para chave Microsoft
sudo apt install curl -y &&

# Adiconando chave Microsoft e repositório do vs code
cd /tmp && curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg && cd $HOME &&

echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list &&

sudo apt update -y &&

# instalando programas via apt

sudo apt install code gparted -y &&

# Instalando Chrome e Insync

cd /
cd /home/daniel/Downloads

sudo dpkg -i google-chrome-stable_current_amd64.deb insync_3.9.11.60043-jammy_amd64.debnnnnnnnnnnnnnnnnnnnnnn &&
sudo apt --fix-broken install &&
sudo apt autoremove -y &&

# Reiniciando o Sistema

sudo reboot
