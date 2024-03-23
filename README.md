# Dotfiles

[![Super-Linter](https://github.com/majabojarska/dotfiles/actions/workflows/lint.yaml/badge.svg)](https://github.com/marketplace/actions/super-linter)

![Peepo has cool dotfiles!](images/happy_peepo.png "Peepo has cool dotfiles!")

## Requirements

- [GNU Stow](https://www.gnu.org/software/stow/)
- [Alacritty](https://alacritty.org/)
- [tmux](https://github.com/tmux/tmux/wiki)
- [tpm](https://github.com/tmux-plugins/tpm)
- [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- [k9s](https://github.com/derailed/k9s)
- [eza](https://github.com/eza-community/eza)
- [tree](https://linux.die.net/man/1/tree)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [thefuck](https://github.com/nvbn/thefuck)
- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh/)
- [fzf](https://github.com/junegunn/fzf#installation)

## Usage

### Install

```shell
make install
```

### Adopt

If any of the configs already exist in their target location, follow this section.

> :warning: This will overwrite the already present configs in the target location. Create backups before proceeding.

```shell
make force-adopt
```

### Uninstall

```shell
make uninstall
```
