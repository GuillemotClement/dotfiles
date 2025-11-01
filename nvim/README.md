# 🎹 Raccourcis Clavier Neovim

Guide complet des raccourcis clavier de ta configuration Neovim.

**Leader key** : `<Space>` (Espace)

---

## 📂 Navigation & Fichiers

### Explorateur de fichiers (nvim-tree)

| Raccourci | Action |
|-----------|--------|
| `<leader>e` | Ouvrir/Fermer l'explorateur |
| `Enter` | Ouvrir fichier/dossier |
| `a` | Créer un nouveau fichier |
| `d` | Supprimer fichier |
| `r` | Renommer fichier |
| `x` | Couper fichier |
| `c` | Copier fichier |
| `p` | Coller fichier |
| `R` | Rafraîchir l'arborescence |
| `H` | Afficher/cacher les fichiers cachés |

### Navigation entre fenêtres

| Raccourci | Action |
|-----------|--------|
| `Ctrl+h` | Aller à la fenêtre de gauche |
| `Ctrl+j` | Aller à la fenêtre du bas |
| `Ctrl+k` | Aller à la fenêtre du haut |
| `Ctrl+l` | Aller à la fenêtre de droite |

### Navigation entre buffers

| Raccourci | Action |
|-----------|--------|
| `Shift+l` | Buffer suivant |
| `Shift+h` | Buffer précédent |
| `<leader>fb` | Rechercher dans les buffers (Telescope) |

---

## 🔍 Recherche (Telescope)

| Raccourci | Action |
|-----------|--------|
| `<leader>ff` | Rechercher dans les noms de fichiers |
| `<leader>fg` | Rechercher dans le contenu des fichiers (grep) |
| `<leader>fb` | Rechercher dans les buffers |
| `<leader>fx` | Rechercher le mot sous le curseur |
| `Ctrl+j` | Descendre dans les résultats |
| `Ctrl+k` | Monter dans les résultats |

---

## ✏️ Édition

### Mode insertion

| Raccourci | Action |
|-----------|--------|
| `;;` | Sortir du mode insertion (vers Normal) |
| `Ctrl+Space` | Ouvrir l'autocomplétion |
| `Ctrl+j` | Sélection suivante (complétion) |
| `Ctrl+k` | Sélection précédente (complétion) |
| `Enter` | Accepter la sélection |
| `Ctrl+e` | Annuler la complétion |

### Mode visuel

| Raccourci | Action |
|-----------|--------|
| `v` | Mode visuel caractère |
| `V` | Mode visuel ligne |
| `Ctrl+v` | Mode visuel bloc |
| `Shift+i` | Déplacer le texte vers le haut |
| `Shift+k` | Déplacer le texte vers le bas |

### Sélection intelligente (Treesitter)

| Raccourci | Action |
|-----------|--------|
| `Ctrl+Space` | Étendre la sélection au bloc parent |
| `Backspace` | Réduire la sélection |

---

## 💻 LSP (Language Server)

### Navigation dans le code

| Raccourci | Action |
|-----------|--------|
| `gd` | Aller à la définition |
| `gD` | Aller à la déclaration |
| `gi` | Aller à l'implémentation |
| `gt` | Aller à la définition de type |
| `gR` | Afficher les références |
| `K` | Afficher la documentation (hover) |
| `gs` | Afficher la signature de fonction |

### Actions & Refactoring

| Raccourci | Action |
|-----------|--------|
| `<leader>ca` | Code actions (corrections auto) |
| `<leader>rn` | Renommer (smart rename) |
| `<leader>F` | Formater le fichier/sélection |
| `<leader>rs` | Redémarrer le LSP |

### Diagnostics & Erreurs

| Raccourci | Action |
|-----------|--------|
| `<leader>d` | Afficher diagnostics de la ligne |
| `<leader>D` | Afficher tous les diagnostics du buffer |
| `]d` | Aller au diagnostic suivant |
| `[d` | Aller au diagnostic précédent |
| `<leader>xx` | Ouvrir Trouble (tous les diagnostics) |
| `<leader>xX` | Ouvrir Trouble (diagnostics du buffer) |
| `<leader>cs` | Afficher les symboles (fonctions, classes) |

---

## 🎨 Git (gitsigns)

| Raccourci | Action |
|-----------|--------|
| `]h` | Hunk suivant (modification Git) |
| `[h` | Hunk précédent |
| `<leader>hs` | Stage hunk (ajouter la modif) |
| `<leader>hr` | Reset hunk (annuler la modif) |
| `<leader>hS` | Stage tout le buffer |
| `<leader>hR` | Reset tout le buffer |
| `<leader>hp` | Preview hunk (voir le diff) |
| `<leader>hb` | Blame line (qui a modifié) |
| `<leader>hB` | Toggle blame (afficher/cacher) |
| `<leader>hd` | Diff du fichier |

---

## 📝 Utilitaires

### Recherche

| Raccourci | Action |
|-----------|--------|
| `<leader>nh` | Effacer le surlignage de recherche |
| `/` | Rechercher dans le fichier |
| `n` | Occurrence suivante |
| `N` | Occurrence précédente |

### Commentaires TODO/FIX

| Raccourci | Action |
|-----------|--------|
| `]t` | TODO suivant |
| `[t` | TODO précédent |

### Aide & Raccourcis

| Raccourci | Action |
|-----------|--------|
| `<leader>?` | Afficher tous les raccourcis (WhichKey) |

---

## 🔧 Vim Classique

### Modes

| Raccourci | Action |
|-----------|--------|
| `i` | Mode Insertion (avant curseur) |
| `a` | Mode Insertion (après curseur) |
| `I` | Insertion début de ligne |
| `A` | Insertion fin de ligne |
| `o` | Nouvelle ligne en dessous |
| `O` | Nouvelle ligne au dessus |
| `v` | Mode Visuel |
| `V` | Mode Visuel ligne |
| `Esc` ou `;;` | Retour mode Normal |

### Déplacement

| Raccourci | Action |
|-----------|--------|
| `h` | Gauche |
| `j` | Bas |
| `k` | Haut |
| `l` | Droite |
| `w` | Mot suivant |
| `b` | Mot précédent |
| `0` | Début de ligne |
| `$` | Fin de ligne |
| `gg` | Début du fichier |
| `G` | Fin du fichier |
| `{` | Paragraphe précédent |
| `}` | Paragraphe suivant |

### Édition rapide

| Raccourci | Action |
|-----------|--------|
| `x` | Supprimer caractère |
| `dd` | Supprimer ligne |
| `yy` | Copier ligne |
| `p` | Coller après |
| `P` | Coller avant |
| `u` | Undo (annuler) |
| `Ctrl+r` | Redo (refaire) |
| `ciw` | Changer mot sous curseur |
| `diw` | Supprimer mot sous curseur |
| `ci"` | Changer entre guillemets |
| `ci{` | Changer entre accolades |

### Sauvegarde & Quit

| Raccourci | Action |
|-----------|--------|
| `:w` | Sauvegarder |
| `:q` | Quitter |
| `:wq` | Sauvegarder et quitter |
| `:q!` | Quitter sans sauvegarder |
| `:wa` | Sauvegarder tous les buffers |

---

## 🎯 Workflows Courants

### Ouvrir un fichier et naviguer
```
1. <leader>e          → Ouvre l'explorateur
2. Navigue avec j/k   → Monte/descend
3. Enter              → Ouvre le fichier
4. <leader>e          → Ferme l'explorateur
```

### Rechercher et remplacer
```
1. <leader>fg         → Recherche dans les fichiers
2. Tape ta recherche
3. Enter sur résultat
4. Édite
5. :w                 → Sauvegarde
```

### Développement PHP/Symfony
```
1. gd                 → Va à la définition de classe/fonction
2. K                  → Voir la doc
3. <leader>ca         → Code actions (imports auto, etc.)
4. <leader>rn         → Renommer variable/fonction
5. <leader>F          → Formater le code
```

### Debug erreurs
```
1. <leader>xx         → Ouvre Trouble (liste toutes les erreurs)
2. ]d                 → Va à l'erreur suivante
3. <leader>d          → Voir le détail de l'erreur
4. <leader>ca         → Suggestions de correction
```

### Git workflow
```
1. Modifie du code
2. <leader>hp         → Preview les changements
3. <leader>hs         → Stage les changements
4. :!git commit -m "message"
5. :!git push
```

---

## 🆘 Aide

### En cas de doute

- **`<leader>?`** → Affiche TOUS les raccourcis disponibles (WhichKey)
- **`:help <commande>`** → Documentation Neovim
- **`:checkhealth`** → Vérifier la config

### Commandes utiles

| Commande | Action |
|----------|--------|
| `:Mason` | Gérer les LSP/formatters |
| `:Lazy` | Gérer les plugins |
| `:LspInfo` | Info sur les LSP actifs |
| `:LspRestart` | Redémarrer les LSP |
| `:Telescope` | Ouvrir Telescope |

---

## 💡 Tips

1. **Apprends progressivement** : Commence par les raccourcis de base
2. **Utilise `<leader>?`** : C'est ton meilleur ami pour découvrir
3. **Pratique les mouvements Vim** : `hjkl`, `w`, `b`, `0`, `$`
4. **Mode Normal = Default** : Reste en mode Normal, passe en Insert juste pour taper
5. **Répétition** : `.` répète la dernière action

---

**Créé avec ❤️ pour ton workflow de dev**