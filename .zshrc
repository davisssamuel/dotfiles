# homebrew
export PATH="/usr/local/sbin:$PATH"

# ssh aliases
source $HOME/.ssh-aliases.sh

# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
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
export TIMEFMT=$'\ncpu\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'

# bun completions
[ -s "/Users/sam/.bun/_bun" ] && source "/Users/sam/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# android studio
export ANDROID_HOME=$HOME/Library/Android/sdk && export PATH=$PATH:$ANDROID_HOME/emulator && export PATH=$PATH:$ANDROID_HOME/platform-tools

# git prompt
source $HOME/dotfiles/.git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
precmd () { __git_ps1 "%F{black}"$'\n\u25D6'"%f%K{black}%n@%m%k%F{black}"$'\u25D7'"%f %~ " $'\n'"%(?..%F{red})"$'\u276F'"%f " "%s" }

# starship prompt 
# eval "$(starship init zsh)"
