## Z Shell Configuration File (.zshrc)
## lucid (Kris McCleary)

#General oh-my-zsh Configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$(echo ~)/.oh-my-zsh"
ZSH_THEME="agnoster"        # This is simply my preferred themes, you can find more at https://github.com/robbyrussell/oh-my-zsh/tree/master/themes
HYPHEN_INSENSITIVE="true"
export UPDATE_ZSH_DAYS=13   # Comment to use default or set to 0 to disable
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
	git
	gitfast
	python

	# Install the following using oh-my-zsh-setup.sh
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
#export MANPATH="/usr/local/man:$MANPATH"   # This is apparently unnecessary because man is better at finding the manpath
export LANG=en_US.UTF-8
export EDITOR='vim'
export VISUAL='vim'
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Additional variables
if [[ -e ~/Programming ]]; then
    export PROGRAMMING_ENV="$(echo ~)/Programming"
fi

## Aliases
# config
alias zshrc="$VISUAL ~/.zshrc"
alias ohmyzsh="$VISUAL ~/.oh-my-zsh"
alias vimrc="$VISUAL ~/.vimrc"

# gcc
alias gcc-strict="gcc -Wall"
alias gcc-ANSI="gcc-strict -std=c89"
# The following alias is used for reflector to update the pacman mirrorlist in Arch Linux. Requires reflector
alias reflector-USrate="reflector --country US --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
