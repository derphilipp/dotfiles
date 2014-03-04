set -x EDITOR vim
alias 1p="1pass --path ~/Dropbox/tools/1Password/1Password.agilekeychain/ --fuzzy"


#set -x PATH $PATH /sbin/

#test -z "$TMUX" && (tmux attach || mux a)

function 1p
    1pass --path ~/Dropbox/tools/1Password/1Password.agilekeychain/ --fuzzy $argv
end


# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
#set fish_theme robbyrussell
set fish_theme simplevi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins vi-mode tmux autojump

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
