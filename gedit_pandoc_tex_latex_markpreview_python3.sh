#/bin/bash

# Update geral
sudo apt update && sudo apt upgrade -y && flatpak update -y &&

#Instalando pacotes do gedit

sudo apt install gedit gedit-plugins python3-markdown pandoc gir1.2-webkit2-4.0 git -y &&

#Clonando repositório e instalando plugin markdown_preview

sudo git clone https://github.com/maoschanz/gedit-plugin-markdown_preview &&
cd gedit-plugin-markdown_preview &&
sudo ./install.sh &&

# instalando dependências para exportação de arquivos em PDF

sudo apt install texlive-latex-recommended texlive-fonts-recommended texlive-latex-extra