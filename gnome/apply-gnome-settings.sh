#!/bin/bash
# Paramètres GNOME supplémentaires

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Application des paramètres GNOME...${NC}"

# Overview (recherche d'apps) avec Super+Espace
gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>space']"
echo -e "${GREEN}✓${NC} Overview: Super+Espace"

echo -e "${GREEN}✓ Paramètres GNOME appliqués${NC}"