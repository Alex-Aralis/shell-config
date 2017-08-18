# Setup fzf
# ---------
if [[ ! "$PATH" == */home/developer/.fzf/bin* ]]; then
  export PATH="$PATH:/home/developer/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */home/developer/.fzf/man* && -d "/home/developer/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/developer/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/developer/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/developer/.fzf/shell/key-bindings.zsh"

