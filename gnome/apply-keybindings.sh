#!/bin/bash 
# Script pour appliquer les raccourcis clavier GNOME 

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
KEYBINDINGS_FILE="$SCRIPT_DIR/keybindings.conf"

# Couleurs
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Application des raccourcis clavier GNOME...${NC}\n"

# Réinitialise la liste des raccourcis personnalisés
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[]"

# Compteur
i=0

# Lit le fichier ligne par ligne
while IFS='|' read -r name command binding; do
    # Ignore les lignes vides et commentaires
    [[ -z "$name" || "$name" =~ ^# ]] && continue
    
    # Crée le chemin du raccourci
    path="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom$i/"
    
    # Configure le raccourci
    gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:"$path" name "$name"
    gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:"$path" command "$command"
    gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:"$path" binding "$binding"
    
    echo -e "${GREEN}✓${NC} $name: $binding"
    
    ((i++))
done < "$KEYBINDINGS_FILE"

# Met à jour la liste des raccourcis
if [ $i -gt 0 ]; then
    paths=""
    for ((j=0; j<i; j++)); do
        if [ $j -eq 0 ]; then
            paths="'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom$j/'"
        else
            paths="$paths, '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom$j/'"
        fi
    done
    gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[$paths]"
fi

echo -e "\n${GREEN}✓ $i raccourci(s) appliqué(s) avec succès!${NC}"