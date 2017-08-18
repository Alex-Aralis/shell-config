[ -f $HOME/.shrc ] && source $HOME/.shrc

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored 
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' insert-tab false

# menu set up
zmodload zsh/complist
zstyle ':completion:*' menu select
bindkey -M menuselect '^[[Z' reverse-menu-complete

zstyle :compinstall filename '/home/developer/.zshrc'

autoload -Uz compinit
autoload -U colors && colors
compinit


# setting options
setopt autocd extendedglob
bindkey -e

# Spaceship
setopt prompt_subst
autoload -U git_current_branch
source /usr/share/nvm/init-nvm.sh

# Yarn tab completions
source /home/developer/.yarn-config/zsh/yarn.plugin.zsh

# Antibody source
source <(zsh $HOME/.antibody.bundle)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
