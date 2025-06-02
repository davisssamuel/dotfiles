# Prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '+'
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git:*' formats ' %F{green}(%b%u%c)%f'
precmd() { vcs_info }
setopt prompt_subst; PROMPT=$'\n''%n: %F{blue}%1~%f${vcs_info_msg_0_} %(?..%F{red})%#%f '

# History
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

# Completions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Keybinds
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^f' autosuggest-accept

# Time command format
export TIMEFMT=$'\nreal\t%*E'

# Homebrew
export PATH="/usr/local/sbin:$PATH"

# ssh aliases
source $HOME/.ssh-aliases

# fzf 
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='fd --type=file'
export FZF_DEFAULT_OPTS="--style=minimal"

# Manpager
# export MANPAGER='nvim +Man!'
# export MANCOLOR=true

# doom emacs
export PATH="$HOME/.config/emacs/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Android studio
export ANDROID_HOME=$HOME/Library/Android/sdk && export PATH=$PATH:$ANDROID_HOME/emulator && export PATH=$PATH:$ANDROID_HOME/platform-tools
