# klementine's dotfiles

![klem profile pic](https://0.gravatar.com/avatar/4c4b5a916f90ffb227d695b58f742852?s=128)

these are my personal configs. you may not find them super useful, but they're here for anyone who wants to use them as a base or for ideas <3

some stuff is personalized, of course, so feel free to change things, get rid of variables, etc.

**optional:** i use catppuccin as a theme for anything i possibly can! this includes `fish`, so you may want to follow the instructions from [here](https://github.com/catppuccin/fish)

## requirements

all packages that are available in the Arch repos can be installed with the following command:

`sudo pacman -Syu --needed fish fisher vim starship fd eza dust bat`

## installation

to use all files as-is, from inside the cloned repo dir, run the following commands:

```bash
cp -rt "$HOME/.config/" fish starship.toml
cp .vimrc "$HOME"
```

**note:** the contents of the kzones.json file need to be manually copied into the UI config for the plugin in **System Settings > Window Management > KWin Scripts > KZones > Layouts**
