# keybinds
bindkey -e 
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# prompt
source $HOME/.git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_UNTRACKEDFILES=true
NEWLINE=$'\n'

precmd () { __git_ps1 "${NEWLINE}%n: %1~" " %(?..%F{red})%#%f " " on %s" }

# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
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

# time command format
export TIMEFMT=$'\nreal\t%*E'

# completions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload -Uz compinit && compinit
