ZSH=$HOME/.oh-my-zsh
ZSH_THEME="minimal"
DISABLE_UPDATE_PROMPT=true

bindkey -v
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-pattern-search-backward
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
export KEYTIMEOUT=1

plugins=(git node npm github python tmux vim-interaction sudo)

setopt extendedglob

alias :e='vim'
alias :q='exit'

source $ZSH/oh-my-zsh.sh

if [[ -z $TMUX ]]; then
  me=$(whoami)

  if tmux has-session -t $me 2>/dev/null; then
    exec tmux -2 attach-session -t $me
  else
    exec tmux -2 new-session -s $me
  fi
fi
