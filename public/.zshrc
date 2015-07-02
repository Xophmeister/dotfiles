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
  sessions=$(tmux list-sessions -F "#{session_created},#S")
  sessionCount=$(tmux list-sessions -F "${#${(f)sessions}}")
  
  if (( $sessionCount > 0 )); then
    now=$(date +%s)
    default=""
  
    echo -e "Attach to an existing session, or start a new one:\n"
  
    # List sessions in reverse chronological order
    echo "$sessions" | sort -r | while IFS="," read created session; do
      age=$(bc <<< "obase=60;$now - $created" | sed "s/^ //;s/ /:/g")
      echo -e "\t\x1b[1;31m$session\x1b[0m\tcreated $age ago"
  
      # Set default to latest
      if [[ -z $default ]]; then
        default="$session"
      fi
    done
  
    echo
    read "choice?Session [$default] » "
  
    # Set to default if empty
    if [[ -z $choice ]]; then
      choice="$default"
    fi
  else
    # Default session
    choice=$(whoami)
  fi

  exec tmux -2 new-session -A -s $choice
fi
