# lucid's dotfiles

These are my personal configurations :)

You are absolutely free to modify these configs to your heart's content.

## Requirements

To install these dotfiles, you will need the following packages: `zsh` & `vim`  
My `.zshrc` also includes aliases for `gcc` and Arch Linux mirror checking program `reflector`.  
If you'd like to go ahead and install these packages in Arch Linux (or Manjaro; or any other Arch derivative), you can copy and paste the following command:

```bash
#!/bin/bash
sudo pacman -Syu --needed zsh vim gcc reflector
```

## Installation

To install, enter the `dotfiles` folder and then run the setup script:

```zsh
#!/bin/zsh
./setup.sh
```
