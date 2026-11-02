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
autoload -Uz bashcompinit
bashcompinit

# Autosuggestions
source /opt/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#5c6370'

# Keybinds
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^y' autosuggest-accept

# Time format
export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'

# Manpager
export MANPAGER='nvim +Man!'
export MANCOLOR=true

# Fzf
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='fd --type=file'
export FZF_DEFAULT_OPTS='--style=minimal --info=hidden --color=bw'

# Aliases
alias fman="compgen -c | fzf | xargs man"
alias fps="ps -o pid,tty,comm | fzf -m --header=\"Select process to kill\" --header-lines=1 | awk '{print \$1}' | xargs kill"

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk17-temurin/Contents/Home
export PATH="$JAVA_HOME/bin:$PATH"
