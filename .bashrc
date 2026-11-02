if [ ! -f $HOME/.git_prompt.sh ]; then
    curl -sSf --connect-timeout 3 \
        https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-prompt.sh \
        -o $HOME/.git_prompt.sh
fi
source $HOME/.git_prompt.sh 2>/dev/null
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_UNTRACKEDFILES=true
export GIT_PS1_STATESEPARATOR=''
PS1=$'\n''\u@\h: \[\e[34m\]\W$(__git_ps1 " \[\e[32m\](%s\[\e[32m\])") \[\e[39m\]\$ '

export MANPAGER='nvim +Man!'

eval "$(fzf --bash)"
export FZF_DEFAULT_COMMAND='fd --type=file'
export FZF_DEFAULT_OPTS='--style=minimal --info=hidden --color=bw'

alias fman="compgen -c | fzf | xargs man"
alias fps="ps -o pid,tty,comm | fzf -m --header=\"Select process to kill\" --header-lines=1 | awk '{print \$1}' | xargs kill"

