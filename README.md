# Requirements

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

Clone the repo to your $HOME directory and `cd` into the dotfiles directory

```
git clone https://github.com/davisssamuel/dotfiles.git && cd ~/dotfiles
```

Then use Stow to create symlinks

```
stow .
```
