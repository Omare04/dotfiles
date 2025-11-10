
# Dotfiles

Personal environment configuration for my development setup (tmux, neovim, zsh, etc).  
This repo allows me to reproduce my environment quickly on any new machine (macOS or Linux).

---

## Installation

Clone the repo into `~/dotfiles`:

```bash
git clone git@github.com:omar-elmasaoudi/dotfiles.git ~/dotfiles
cd ~/dotfiles
````

---

## Symlink Configs

ln -s ~/dotfiles/starship/starship.toml ~/.config/starship.toml
```bash
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

---

## Tmux Setup

Inside tmux install plugins:

```
prefix + I
```

This installs all plugins defined in `.tmux.conf`.

---

## Neovim Setup

* Requires Neovim 0.10+
* Plugin manager (Lazy / etc) will install automatically on first launch

```bash
nvim
```


