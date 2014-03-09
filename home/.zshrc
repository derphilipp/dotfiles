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




#ZSH=$HOME/.oh-my-zsh
#
#export TERM="xterm-256color"
#POWERLINE_RIGHT_B="none"
#POWERLINE_RIGHT_A="exit-status"
#POWERLINE_NO_BLANK_LINE="true"
#POWERLINE_SHOW_GIT_ON_RIGHT="true"
#POWERLINE_DETECT_SSH="true"
#POWERLINE_GIT_CLEAN="✔"
#POWERLINE_GIT_DIRTY="✘"
#POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
#POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
#POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
#POWERLINE_GIT_UNTRACKED="%F{yellow}✭%F{black}"
#POWERLINE_GIT_RENAMED="➜"
#POWERLINE_GIT_UNMERGED="═"
#
#
#ZSH_THEME="powerline"
#plugins=(git textmate heroku brew osx npm github mercurial zsh-syntax-highlighting extract)
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
#ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
#source $ZSH/oh-my-zsh.sh
#

#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done


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


if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
