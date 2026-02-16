# Dotfiles

[![Super-Linter](https://github.com/majabojarska/dotfiles/actions/workflows/lint.yaml/badge.svg)](https://github.com/marketplace/actions/super-linter)

![Peepo has cool dotfiles!](images/happy_peepo.png "Peepo has cool dotfiles!")

## Requirements

- [GNU Stow](https://www.gnu.org/software/stow/)
- [GNU Make](https://www.gnu.org/software/stow/)
- [Alacritty](https://alacritty.org/)
- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh/)
- [tmux](https://github.com/tmux/tmux/wiki)
- [tpm](https://github.com/tmux-plugins/tpm)
- [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- [k9s](https://github.com/derailed/k9s)
- [tree](https://linux.die.net/man/1/tree)
- [eza](https://github.com/eza-community/eza)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [thefuck](https://github.com/nvbn/thefuck)
- [fzf](https://github.com/junegunn/fzf#installation)

## Usage

### Install

```shell
make install
```

### Force install

If any of the configs already exist in their target location, follow this section.

> :warning: This will overwrite the already present configs in the target location. Create backups before proceeding.

```shell
make install-overwrite
```

### Uninstall

```shell
make uninstall
```

## Other

- [kitty.conf](https://github.com/majabojarska/kitty.conf)
- [astronvim_config](https://github.com/majabojarska/astronvim_config)
