# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
bindkey '^f' autosuggest-accept

# history
HISTSIZE=5000
HISTFILE=$HOME/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# completions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# time command format
export TIMEFMT=$'\nreal\t%*E'

# git prompt
source $HOME/.git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_UNTRACKEDFILES=true
NEWLINE=$'\n'
CIRCLE=$'\u25CB'

precmd () { __git_ps1 "${NEWLINE}%(?..%F{red})${CIRCLE}%f %n: %1~" " %# " " on %s" }
