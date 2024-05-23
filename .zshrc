# homebrew
export PATH="/usr/local/sbin:$PATH"

# aliases
source $HOME/.aliases.sh

# prompt
source $HOME/dotfiles/.git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
# precmd() { __git_ps1 "%(?.%F{green}.%F{red})[%f%F{green}%n@%m%f %~" "%(?.%F{green}.%F{red})]%f"$'\n'"%(?.%F{green}.%F{red})$%f " " %s" }
precmd() { __git_ps1 "%(?.%F{green}.%F{red})[%f%F{green}%n@%m%f%(?.%F{green}.%F{red})]-[%f%~" "%(?.%F{green}.%F{red})]%f"$'\n'"%(?.%F{green}.%F{red})$%f " " %s" }
  
# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# bun completions
[ -s "/Users/sam/.bun/_bun" ] && source "/Users/sam/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# android studio
export ANDROID_HOME=$HOME/Library/Android/sdk && export PATH=$PATH:$ANDROID_HOME/emulator && export PATH=$PATH:$ANDROID_HOME/platform-tools
