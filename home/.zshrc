# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Vim for everythin
EDITOR="vim" ; 
export EDITOR
set -o vi


#bindkey -e
setopt appendhistory autocd beep extendedglob nomatch notify
zstyle :compinstall filename '.zshrc'
setopt no_case_glob  # set ignore case for ls etc
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'   # case insensitive completion for cd etc *N*
autoload -Uz compinit
compinit

# Load os specific file
envfile="$HOME/.zsh/os.`uname`.zsh"
if [ -r $envfile ]; then
    . $envfile
fi

# Load machine specific file
envfile="$HOME/.zsh/host.`uname -n`.zsh"
if [ -r $envfile ]; then
    . $envfile
fi


