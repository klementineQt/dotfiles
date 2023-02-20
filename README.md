# klementine's dotfiles

These are my personal configs. You may not find them super useful but they're here for anyone who wants to use them as a base or for ideas <3

Bear in mind that I use Arch on WSL and all of the exported variables are my personal preferences, so you will probably need to adapt these a bit.

**Warning:** I am an inefficient dunce and use an unnecessary stack of `oh-my-posh` on top of `oh-my-zsh`, simply for the convenience of having always used the latter, and now using the prior for a synchronized look with PowerShell since I use WSL. I also use a few additional plugins for `zsh` available in the Arch repos.

## Requirements

[Arch Linux](https://wiki.archlinux.org/title/Installation_guide) *or* [ArchWSL](https://wsldl-pg.github.io/ArchW-docs/How-to-Setup/)

All packages needed that are available in the Arch repos can be installed with the following command:

`sudo pacman -Syu --needed zsh zsh-autosuggestions zsh-syntax-highlighting vim`

You'll also need `oh-my-posh`, which can be installed from the AUR. If you'd like to build it from source, you want [`oh-my-posh`](https://aur.archlinux.org/packages/oh-my-posh), or if, like me, you want a pre-compiled binary, you can install [`oh-my-posh-bin`](https://aur.archlinux.org/packages/oh-my-posh-bin). You can either manually download the PKGBUILD file for whichever you prefer and build it using `makepkg -sri` or you can use an [AUR helper](https://wiki.archlinux.org/title/AUR_helpers) to automate the process (which you will have to install using makepkg also, ironically, but it'll make future AUR installs a breeze).
