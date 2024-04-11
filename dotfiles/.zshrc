# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

HYPHEN_INSENSITIVE="true"

plugins=(git aliases github cp 1password golang python virtualenv debian encode64 extract tmux github docker zoxide kubectl kube-ps1 terraform fzf)

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

# K8s
alias k='kubectl'
alias kgp='kubectl get pod'
alias kl='kubectl logs -f'
alias po="kubectl get pods"

alias kk='k9s --write'
alias kr='k9s --readonly'
alias kkn='k9s --command namespaces'
alias krn='k9s --readonly --command namespaces'

# Misc tools
alias cat='bat'
alias c='bat'
alias la='tree'
alias l='eza -l --icons --git -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias v='nvim'
alias cl='clear'
alias t='tmux'
alias sleepv='yes | pv -SpeL1 -s' # Verbose sleep with progress bar. Requires pv.

# Git
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --graph --topo-order --abbrev-commit'
alias gls='git log --graph --topo-order --abbrev-commit --stat'
alias gc='git commit -m'
alias gca='git commit -a -m'
alias gco='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias gr='git remote'
alias gre='git reset'

alias lg='lazygit'

# Add Go bin to PATH
path+=("$(go env GOPATH)/bin")

# Add npm global dir to path
path+=("${HOME}/.npm-global/bin")

# Add Ruby gems to path
path+=("${HOME}/.gem/ruby/2.7.0/bin")

# For workstation-specific stuff and local secrets
for file in $(find ~/ -maxdepth 1 -name '.zshrc_ext*' -print -quit); do
  source "${file}"
done

eval $(thefuck --alias)
eval $(thefuck --alias f)

eval "$(zoxide init zsh)"

# FZF
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --preview 'echo {}'"
export FZF_ALT_C_OPTS="--preview 'tree -C {}'"
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:4:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'"
export FZF_CTRL_T_OPTS="
  --preview 'bat -n --color=always {}'"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# source /home/mabojars/Projects/alacritty/extra/completions/alacritty.bash
