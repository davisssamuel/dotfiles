# Requirements

To use these dotfiles, you need [git](https://git-scm.com/) and [stow](https://www.gnu.org/software/stow/) installed.

# Installation

First, backup (recommended) or remove your current dotfiles, e.g. backing up `.zshrc`:

```
mv ~/.zshrc ~/.zshrc.bak
```

Next, clone this repo to your `$HOME` directory and `cd` into the dotfiles directory:

```
git clone --recurse-submodules https://github.com/davisssamuel/dotfiles.git && cd ~/dotfiles
```

Finally, use Stow to create symlinks to these dotfiles:

```
stow .
```

NOTE: if you have dotfiles that were not backed-up or removed, Stow may not create symlinks and throw a conflict error. Use the `--adopt` flag to override this repo's dotfiles with your own:

```
stow --adopt .
```

To remove the symlinks created by Stow, run:

```
stow -D .
```

# Options

If you are using bash and want the same prompt, add the following to your `.bashrc`:

```sh
# .bashrc

if [ ! -f $HOME/.git_prompt.sh ]; then
    curl --fail --silent --show-error --connect-timeout 3 \
        https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-prompt.sh \
        -o $HOME/.git_prompt.sh
fi
source $HOME/.git_prompt.sh 2>/dev/null
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_UNTRACKEDFILES=true
export GIT_PS1_STATESEPARATOR=''
PS1=$'\n''\u: \[\e[34m\]\W$(__git_ps1 " \[\e[32m\](%s\[\e[32m\])") \[\e[39m\]\$ '
```

You may also need to source your `.bashrc` file in `.bash_profile` to ensure this always works:

```sh
# .bash_profile

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
```
