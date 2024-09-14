# keybinds
bindkey '^f' autosuggest-accept
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# completions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# time command format
export TIMEFMT=$'\nreal\t%*E'

# ssh aliases
source $HOME/.ssh-aliases

# homebrew
export PATH="/usr/local/sbin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# android studio
export ANDROID_HOME=$HOME/Library/Android/sdk && export PATH=$PATH:$ANDROID_HOME/emulator && export PATH=$PATH:$ANDROID_HOME/platform-tools

# prompt
source $HOME/.git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_UNTRACKEDFILES=true
NEWLINE=$'\n'
CIRCLE=$'\u25CB'

precmd () { __git_ps1 "${NEWLINE}%(?..%F{red})${CIRCLE}%f %n: %1~" " %# " " on %s" }
