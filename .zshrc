## Z Shell Configuration File (.zshrc)
# klementine (Klementine Des Pêches)
# Made for Arch Linux in WSL (https://wsldl-pg.github.io/ArchW-docs/)

if [ -f ~/.profile ]; then
	source ~/.profile
fi

#General oh-my-zsh Configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$(echo ~)/.oh-my-zsh"
ZSH_THEME="agnoster" # This is simply my preferred theme, you can find more at https://github.com/robbyrussell/oh-my-zsh/tree/master/themes
export OHMYPOSHTHEME="$(echo ~)/.poshthemes/M365Princess.omp.json"
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
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ -e $(which oh-my-posh) && -e $OHMYPOSHTHEME ]] ; then
	eval "$(oh-my-posh init zsh --config $OHMYPOSHTHEME)"
elif [[ -e $(which oh-my-posh) ]] ; then
	eval "$(oh-my-posh init zsh)"
fi

# User configuration
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
alias reflector-USrate="reflector --country US --age 10 --sort rate --save /etc/pacman.d/mirrorlist"
