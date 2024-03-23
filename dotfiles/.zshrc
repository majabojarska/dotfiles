# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

HYPHEN_INSENSITIVE="true"

plugins=(git python docker kubectl kube-ps1 git fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# VI mode
bindkey jj vi-cmd-mode

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Golang
export GOPATH='/Users/omerhamerman/go'

# K8s
alias k='kubectl'
alias kgp='kubectl get pod'
alias kl='kubectl logs -f'

alias kk='k9s --write'
alias kr='k9s --readonly'


# Misc tools
alias cat='bat'
alias la='tree'
alias l='eza -l --icons --git -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias v='nvim'
alias cl='clear'

# Git
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --graph --topo-order --abbrev-commit'
alias gc='git commit -m'
alias gca='git commit -a -m'
alias gco='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias gr='git remote'
alias gre='git reset'

eval $(thefuck --alias)

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

