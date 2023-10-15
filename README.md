# majabojarska's dotfiles

## Usage

### Backup

Backs up dotfiles to `dotfiles/{{ ansible_hostname }}/*`.
Target dotfiles are configured in [group_vars/all.yml](group_vars/all.yml), as `backup_targets`.

```shell
ansible-playbook backup.yml
```

### Restore

Restores dotfiles from backup in `dotfiles/{{ ansible_hostname }}/*`.

```shell
ansible-playbook restore.yml
```

## Acknowledgements

- Based on [notthebee/dotfiles](https://github.com/notthebee/dotfiles).