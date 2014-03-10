# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Vim for everythin
EDITOR="vim" ; 
export EDITOR

# Search in evernote
es(){
    geeknote find --search "$@" --content-search
}


alias 1p="1pass --path ~/Dropbox/tools/1Password/1Password.agilekeychain --fuzzy" 
export PATH=$PATH:~/.bin

setopt appendhistory autocd beep extendedglob nomatch notify
zstyle :compinstall filename '.zshrc'
setopt no_case_glob  # set ignore case for ls etc
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'   # case insensitive completion for cd etc *N*
autoload -Uz compinit
compinit



if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


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


