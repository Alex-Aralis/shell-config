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

# OMZ shims
# source "$HOME/.OMZ-shims/"*

# setting options
setopt autocd extendedglob
bindkey -e

# Spaceship
setopt prompt_subst
autoload -U git_current_branch
autoload -U git_prompt_status
# source /usr/share/nvm/init-nvm.sh

# Yarn tab completions
source /home/developer/.yarn-config/zsh/yarn.plugin.zsh

# rbenv tab completions
source '/usr/lib/rbenv/libexec/../completions/rbenv.zsh'

command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
    rehash|shell)
      eval "$(rbenv "sh-$command" "$@")";;
    *)
      command rbenv "$command" "$@";;
  esac
}


# Antibody source
source <(antibody bundle < $HOME/.antibody.bundle)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

