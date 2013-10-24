# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="minimal"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git debian heroku tmux node npm github cabal)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
setopt extendedglob

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# OPAM configuration
. /home/xoph/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Add .cabal/bin to path
export PATH="/home/xoph/.cabal/bin:$PATH"

# Create/attach to tmux session for SSH logins
if [[ -z $TMUX && -n $SSH_TTY ]]; then
  me=$(whoami)

  if tmux has-session -t $me 2>/dev/null; then
    exec tmux -2 attach-session -t $me
  else
    exec tmux -2 new-session -s $me
  fi
fi
