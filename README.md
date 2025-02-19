# klementine's dotfiles

![klem profile pic](https://0.gravatar.com/avatar/4c4b5a916f90ffb227d695b58f742852?s=128)

These are my personal configs. You may not find them super useful, but they're here for anyone who wants to use them as a base or for ideas <3

Bear in mind that I use Arch on WSL and all the exported variables are my personal preferences, so you will probably need to adapt these a bit.

**Warning:** I am an inefficient dunce and use an unnecessary stack of `starship` on top of `oh-my-zsh`, simply for the convenience of having always used the latter, and now using the prior for a synchronized look with PowerShell since I use Windows a bit. I also use a few additional plugins for `zsh` available in the Arch repos.

## Requirements

[Arch Linux](https://wiki.archlinux.org/title/Installation_guide) *or* [ArchWSL](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/)

All packages needed that are available in the Arch repos can be installed with the following command:

`sudo pacman -Syu --needed zsh zsh-autosuggestions zsh-syntax-highlighting vim starship`
