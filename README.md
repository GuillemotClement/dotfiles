# dotfiles


## Lien symbolique 

Le lien permet de lier la configuration du repo au fichier de configuration sur la machine.

Ce lien permet de modifier une configuration dans un repo central, et d'appliquer automatiquement la configuration sur la machine.

```shell
ls -s <SOURCE> <DESTINATION>

# exemple 
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
```

- `ln` : link (permet de créer le lien) 
- `-s` : symbolice (lien symbolique)
- `SOURCE` : fichier original (celui du depo dotfiles)
- `DESTINATION` : endroit où le lien va pointer



