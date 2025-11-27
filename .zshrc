# Prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '+'
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git:*' formats ' %F{green}(%b%u%c)%f'
precmd() { vcs_info }
setopt prompt_subst; PROMPT=$'\n''%m: %F{blue}%1~%f${vcs_info_msg_0_} %(?..%F{red})%#%f '

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
autoload -Uz compinit
compinit

# Autosuggestions
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Keybinds
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^y' autosuggest-accept

# fzf 
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='fd --type=file'
export FZF_DEFAULT_OPTS='--style=minimal --info=hidden --color=light'

# Time command format
export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'

# Manpager
# export MANPAGER='nvim +Man!'
# export MANCOLOR=true
