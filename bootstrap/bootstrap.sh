#!/bin/bash 
# Script d'installation complète sur une nouvelle machine 

echo "Installation des dotfiles ..."

echo "Installation des paquets ..."
sudo dnf install -y kitty git tree vim lazygit ripgrep

echo "Installation de Fircode Nerd Font"
mkdir -p ~/.local/share/fonts
cd /tmp
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
unzip -q FiraCode.zip -d FiraCode
cp FiraCode/*.ttf ~/.local/share/fonts/
fc-cache -fv > /dev/null 2>&1

# Application des dotfiles 
cd ~/dotfiles 
./install.sh 

echo "Installation terminé"
echo "Terminer la configuration git.gitconfig"
echo "Recharger Bash avec ~/.bashrc"