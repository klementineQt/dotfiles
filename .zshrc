## Z Shell Configuration File (.zshrc)
# klementine (Klementine Des Pêches)
# Made primarily for Arch Linux with oh-my-zsh & Starship

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 1
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(archlinux colorize command-not-found emoji git
    history last-working-dir pip pyenv python ssh)

source $ZSH/oh-my-zsh.sh

# User configuration

# zsh plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration
export PATH=$HOME/bin:$PATH
export LANG=en_US.UTF-8
export EDITOR='code'
export VISUAL='code'
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/id_ed25519"
HISTSIZE=10000
HISTFILE=~/.zshistory
SAVEHIST=8000

## Aliases
# config
alias zshrc="$VISUAL ~/.zshrc"
alias vimrc="$VISUAL ~/.vimrc"

# gcc
alias gcc-strict="gcc -Wall"
alias gcc-ANSI="gcc-strict -std=c89"

# Starship <3
eval "$(starship init zsh)"
