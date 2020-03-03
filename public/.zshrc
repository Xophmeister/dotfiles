export TERM='screen-256color'

PATH=/usr/local/bin:$PATH
PATH=$HOME/local/bin:$PATH
PATH=$PATH:/usr/games/bin
PATH=$PATH:$HOME/Library/Haskell/bin
PATH=$PATH:$HOME/perl5/bin
PATH=/usr/local/git/bin:$PATH
export PATH

export MANPATH

PERL5LIB="/Users/ch12/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/ch12/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/ch12/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/ch12/perl5"; export PERL_MM_OPT;

export PKG_CONFIG_PATH=$HOME/local/lib/pkgconfig:/usr/local/lib/pkgconfig

export SHELLCHECK_OPTS="-e SC2155"

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="minimal"
DISABLE_UPDATE_PROMPT=true

bindkey -v
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-pattern-search-backward
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
export KEYTIMEOUT=1

setopt extendedglob

alias :e='vim'
alias :q='exit'
alias exti='exit'

# Kill the session from command line
alias :qa='tmux kill-session -t $(tmux display-message -p "#S")'

# Hee hee :)
alias cat='lolcat'

alias hgv="hg --ssh -t ssh"
alias openrc="source ~ch12/Projects/openstack/api.rc"

plugins=(git node npm cabal mix vim-interaction github docker brew python pip tmux osx zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_PATTERNS+=('\#*' 'fg=10')

# Toggle commented command line on double Escape
comment-command-line() {
  [[ -z $BUFFER ]] && zle up-history
  if [[ $BUFFER =~ ^#+ ]]; then
    LBUFFER="$(sed -E 's/^#+ *//' <<< "$LBUFFER")"
  else
    LBUFFER="# $BUFFER"
  fi
}
zle -N comment-command-line
bindkey "\e\e" comment-command-line
# FIXME This doesn't do what I think it should :P
#ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(comment-command-line)
#ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+=(comment-command-line)

if [[ -z $TMUX ]]; then
  sessions=$(tmux list-sessions -F "#{session_created},#S" 2>/dev/null)
  sessionCount=${#${(f)sessions}}
  
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
