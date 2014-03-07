export PATH=$PATH:/usr/texbin
export PATH=/usr/local/bin:$PATH
export PATH=/opt/local/bin:$PATH
EDITOR="vim" ; export EDITOR

. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/phw/.zshrc'

setopt no_case_glob  # set ignore case for ls etc
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'   # case insensitive completion for cd etc *N*

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
source .phwrc
