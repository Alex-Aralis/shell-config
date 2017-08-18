[ -f $HOME/.profile ] && source $HOME/.profile

export FPATH="$HOME/.zfunctions:$FPATH"

export DEFAULT_USER=developer
export HISTFILE=~/.histfile
export HISTSIZE=1000
export SAVEHIST=1000

# does not have correct permissions, screws up tmux
# loadkeys /usr/local/share/kbd/keymaps/swap-esc-lock.map

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
