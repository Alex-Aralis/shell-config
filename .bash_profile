#
# ~/.bash_profile
#

if [ "$TERM" == linux ] 
then
  export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

  export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
  export PATH="$HOME/.bin:$PATH"

  loadkeys /usr/local/share/kbd/keymaps/swap-esc-lock.map
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
