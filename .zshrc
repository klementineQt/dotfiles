## Z Shell Configuration File (.zshrc)
# klementine (Klementine Des Pêches)
# Made for Arch Linux in WSL (https://wsldl-pg.github.io/ArchW-docs/)

# oh-my-zsh
export ZSH="$(echo ~)/.oh-my-zsh"
ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"
export UPDATE_ZSH_DAYS=7 # Comment to use default or set to 0 to disable
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
	git
	gitfast
	python
)

source $ZSH/oh-my-zsh.sh

# oh-my-posh
export POSHTHEMES="/usr/share/oh-my-posh/themes"
export OHMYPOSHTHEME="$POSHTHEMES/M365Princess.omp.json"

eval "$(oh-my-posh init zsh --config $OHMYPOSHTHEME)"

# zsh plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration
export PATH=$HOME/bin:$PATH
export LANG=en_US.UTF-8
export EDITOR='code'
export VISUAL='code'
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"

## Aliases
# config
alias zshrc="$VISUAL ~/.zshrc"
alias ohmyzsh="$VISUAL ~/.oh-my-zsh"
alias vimrc="$VISUAL ~/.vimrc"

# gcc
alias gcc-strict="gcc -Wall"
alias gcc-ANSI="gcc-strict -std=c89"
# The following alias is used for reflector to update the pacman mirrorlist in Arch Linux. Requires reflector
alias reflector-USrate="sudo reflector --country US --age 10 --sort rate --save /etc/pacman.d/mirrorlist"
