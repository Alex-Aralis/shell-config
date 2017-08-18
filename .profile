export XDG_CACHE_HOME=$HOME/.cache
export GOPATH="$HOME/go"

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$(go env GOPATH)/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export VIS_PATH="/usr/share/vis"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export NQDIR="$XDG_CACHE_HOME/nq"

export EDITOR="vim"

source "$HOME/.profile.private"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
