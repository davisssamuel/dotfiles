My dotfiles, managed with Stow. Made for my 2020 Intel MacBook Pro.

---

To use these dotfiles, you need [Git](https://git-scm.com/) and [Stow](https://www.gnu.org/software/stow/) installed.

To install with Homebrew, use:

```
brew install git stow
```

To install with MacPorts, use: 

```
sudo port install git stow
```

---

Clone this repo to your `$HOME` directory and `cd` into it:

```
git clone --recurse-submodules https://github.com/davisssamuel/dotfiles.git && cd dotfiles
```

Use Stow to create symlinks to these dotfiles:

```
stow .
```

If you have existing dotfiles, Stow will be unable to create symlinks if they conflict with those in this repo. To deconflict this, override this repo's dotfiles with your own using: 

```
stow --adopt .
```

To remove symlinks created by Stow, use:

```
stow -D .
```
