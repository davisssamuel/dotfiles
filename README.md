# Requirements

To use these dotfiles, you need [git](https://git-scm.com/) and [stow](https://www.gnu.org/software/stow/) installed.

For macOS use

```
brew install git stow
```

For Debian-based distros use

```
sudo apt install git stow
```

For Arch-based distros use

```
sudo pacman -S git stow
```

# Installation

First, backup (recommended) or remove your current dotfiles, e.g. backing up `.zshrc`

```
mv ~/.zshrc ~/.zshrc.bak
```

Next, clone this repo to your `$HOME` directory and `cd` into the dotfiles directory

```
git clone https://github.com/davisssamuel/dotfiles.git && cd ~/dotfiles
```

Finally, use Stow to create symlinks to these dotfiles

```
stow .
```

NOTE: if you have dotfiles that were not backed-up or removed, Stow may not create symlinks and throw a conflict error. Use the adopt flag to override this repo's dotfiles with your own

```
stow --adopt .
```

# Options

If you are using bash and want the same prompt, add the following to your `.bashrc`

```
source $HOME/.git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_UNTRACKEDFILES=true
CIRCLE=$'\u25CB'

# for bash
PROMPT_COMMAND='__git_ps1 "\n$CIRCLE \u: \W" " % " " %s"'
```

Alternatively, use [starship](https://starship.rs/) with the provided config.
