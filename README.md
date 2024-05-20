# Requirements

Managing these dotfiles requires having [git](https://git-scm.com/) and [stow](https://www.gnu.org/software/stow/) installed.

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

# Installation

First, clone the repo to your $HOME directory and `cd` into the dotfiles directory

```
git clone https://github.com/davisssamuel/dotfiles.git && cd ~/dotfiles
```

Next, backup (recommended) or remove current dotfiles 

```
mv ~/.zshrc ~/.zshrc.bak
```

Finally, use Stow to create symlinks to the dotfiles

```
stow .
```
