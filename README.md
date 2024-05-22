# Requirements

To use these dotfiles, you need [git](https://git-scm.com/) and [stow](https://www.gnu.org/software/stow/) installed.

## git

For macOS use

```
brew install git
```

For Debian-based distros use

```
sudo apt install git
```

For Arch-based distros use

```
sudo pacman -S git
```

## stow

For macOS use

```
brew install stow
```

For Debian-based distros use

```
sudo apt install stow
```

For Arch-based distros use

```
sudo pacman -S stow
```

## bash

NOTE: if you are not using zsh, add the following lines to your `.bashrc` for the same prompt

```bash
source $HOME/.git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
PROMPT_COMMAND='__git_ps1 "[\u@\h \W" "]\n\$ "'
```

# Installation


First, backup (recommended) or remove current dotfiles, e.g. backing up `.zshrc`

```
mv ~/.zshrc ~/.zshrc.bak
```

Next, clone this repo to your $HOME directory and `cd` into the dotfiles directory

```
git clone https://github.com/davisssamuel/dotfiles.git && cd ~/dotfiles
```

Finally, use Stow to create symlinks to these dotfiles

```
stow .
```

NOTE: if your dotfiles are also present in this repo and were not backed-up or removed, Stow will not create symlinks and throw a conflict error. Use the adopt flag to override these dotfiles with your own and avoid conflicts

```
stow --adopt .
```
