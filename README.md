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

## Usage

### Adoption

If any of the configs already exist in their target location, follow this section. 

> :warning: This will overwrite the already present configs in the target location. Create backups before proceeding.

1. Setup the symlinks between the source and target.
    
    ```shell
    stow dotfiles --target $HOME --adopt
    ```

1. Discard the state loaded from target.
    
    ```shell
    git reset --hard
    ```

1. Install dotfiles from source to target.
    
    ```shell
    stow dotfiles --target $HOME
    ```

### Synchronization

```shell
stow dotfiles --target $HOME
```