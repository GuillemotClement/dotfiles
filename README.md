# dotfiles

## Lien Symbolique 
Le lien symbolique permet de lier un fichier définis dans un repo, pour l'appliquer dans un système. 

Par exemple, dans ce repo, on définis des configuration pour différents outils. 
Je peux venir récupérer ce repo, le place dans mon folder de projet, et venir créer un lien symbolique, pour appliquer la configuration sur ma machine.

Par exemple, je définis ma configuration `nvim` dans le repo `dotfile`, je créer mon lien symbolique, ce qui me permet d'utiliser cette configuration directement.

Je peux également venir modifier la configuration dans le repo, et cette modif s'applique automatiquement et mettre à jour le repo pour appliquer cette nouvelle configuration de manière simple et automatique.

```shell
ls -s <SOURCE> <DESTINATION>
```

- `ln` : link (permet de créer le lien) 
- `-s` : symbolice (lien symbolique)
- `SOURCE` : fichier original (celui du depo dotfiles)
- `DESTINATION` : endroit où le lien va pointer


## Exemple

```shell
# emplacement du fichier de config 
# ~/workspaces/dotfiles/nvim/ 
# emplcement ou la config est placer 
# ~/.config/nvim 

# créer le lien symbolique 
ls -s /home/clement/workspaces/dotfiles/nvim/ ~/.config/nvim
```


# Warning 

The repo is not update, so don't us script. 

For the moment, juste the Nvim and Ghostty config is valid. I've the flemme to deleted and purge the repo. Biz.



