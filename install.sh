#!/bin/bash
# Script d'installation des dotfiles
# Crée des liens symboliques depuis ~/dotfiles vers ~/ et ~/.config

# Couleurs pour les messages
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}╔════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║   Installation des Dotfiles          ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════╝${NC}"
echo ""

# Répertoire des dotfiles
DOTFILES_DIR="$HOME/dotfiles"

# Vérifie qu'on est bien dans le bon répertoire
if [ ! -d "$DOTFILES_DIR" ]; then
    echo -e "${RED}✗ Erreur: Le répertoire $DOTFILES_DIR n'existe pas!${NC}"
    exit 1
fi

# Fonction pour créer un lien symbolique
create_symlink() {
    local source=$1
    local target=$2
    
    # Crée le répertoire parent si nécessaire
    mkdir -p "$(dirname "$target")"
    
    # Si le fichier cible existe et n'est pas un lien symbolique
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo -e "${YELLOW}⚠ Sauvegarde de l'ancien fichier: $target → $target.backup${NC}"
        mv "$target" "$target.backup"
    fi
    
    # Supprime le lien symbolique s'il existe déjà
    if [ -L "$target" ]; then
        rm "$target"
    fi
    
    # Crée le lien symbolique
    ln -s "$source" "$target"
    echo -e "${GREEN}✓ Lien créé: $target → $source${NC}"
}

# ============================================================================
# BASH
# ============================================================================
if [ -d "$DOTFILES_DIR/bash" ]; then
    echo -e "\n${BLUE}[Bash]${NC}"
    [ -f "$DOTFILES_DIR/bash/bashrc" ] && create_symlink "$DOTFILES_DIR/bash/bashrc" "$HOME/.bashrc"
    [ -f "$DOTFILES_DIR/bash/bash_profile" ] && create_symlink "$DOTFILES_DIR/bash/bash_profile" "$HOME/.bash_profile"
    [ -f "$DOTFILES_DIR/bash/bash_aliases" ] && create_symlink "$DOTFILES_DIR/bash/bash_aliases" "$HOME/.bash_aliases"
fi

# ============================================================================
# KITTY
# ============================================================================
if [ -d "$DOTFILES_DIR/kitty" ]; then
    echo -e "\n${BLUE}[Kitty]${NC}"
    [ -f "$DOTFILES_DIR/kitty/kitty.conf" ] && create_symlink "$DOTFILES_DIR/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
fi

# ============================================================================
# GIT
# ============================================================================
if [ -d "$DOTFILES_DIR/git" ]; then
    echo -e "\n${BLUE}[Git]${NC}"
    [ -f "$DOTFILES_DIR/git/gitconfig" ] && create_symlink "$DOTFILES_DIR/git/gitconfig" "$HOME/.gitconfig"
fi

# ============================================================================
# GNOME - RACCOURCIS CLAVIER
# ============================================================================
if [ -d "$DOTFILES_DIR/gnome" ]; then
    echo -e "\n${BLUE}[GNOME Keybindings]${NC}"
    if [ -f "$DOTFILES_DIR/gnome/apply-keybindings.sh" ]; then
        bash "$DOTFILES_DIR/gnome/apply-keybindings.sh"
    else
        echo -e "${YELLOW}⚠ Script apply-keybindings.sh non trouvé${NC}"
    fi

    if [ -f "$DOTFILES_DIR/gnome/apply-gnome-settings.sh" ]; then
        bash "$DOTFILES_DIR/gnome/apply-gnome-settings.sh"
    fi
fi

# ============================================================================
# nvim 
# ============================================================================
if [ -d "$DOTFILES_DIR/nvim" ]; then 
    echo -e "\n${BLUE}[Neovim]${NC}"

        # Supprime l'ancien dossier ou lien
    if [ -e "$HOME/.config/nvim" ] || [ -L "$HOME/.config/nvim" ]; then
        if [ ! -L "$HOME/.config/nvim" ]; then
            echo -e "${YELLOW}⚠ Sauvegarde de l'ancienne config: ~/.config/nvim → ~/.config/nvim.backup${NC}"
            mv "$HOME/.config/nvim" "$HOME/.config/nvim.backup"
        else
            rm "$HOME/.config/nvim"
        fi
    fi
    
    # Crée le lien vers le dossier entier
    ln -s "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"
    echo -e "${GREEN}✓ Lien créé: ~/.config/nvim → $DOTFILES_DIR/nvim${NC}"
fi

# ============================================================================
# FINALISATION
# ============================================================================
echo -e "\n${GREEN}╔════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║   Installation terminée avec succès!  ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════╝${NC}"
echo ""
echo -e "${YELLOW}📝 Notes importantes:${NC}"
echo -e "  • Modifie ${BLUE}git/gitconfig${NC} avec ton nom et email (si présent)"
echo -e "  • Redémarre ton terminal ou lance: ${BLUE}source ~/.bashrc${NC}"
echo -e "  • La police ${BLUE}JetBrains Mono${NC} doit être installée pour Kitty"
echo ""
echo -e "${YELLOW}💡 Commandes utiles:${NC}"
echo -e "  • Éditer les dotfiles: ${BLUE}code ~/dotfiles${NC}"
echo -e "  • Recharger bash: ${BLUE}source ~/.bashrc${NC}"
echo -e "  • Recharger Kitty: ${BLUE}Ctrl+Shift+F5${NC}"
echo -e "  • Appliquer les raccourcis GNOME: ${BLUE}./gnome/apply-keybindings.sh${NC}"
echo ""