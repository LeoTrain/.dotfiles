# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

alias zshconf="nvim ~/.zshrc"
alias src="source ~/.zshrc"

alias conBandit="ssh bandit\$@@bandit.labs.overthewire.org -p 2220"
alias vault="cd ~/lab/vault && nvim"
alias run="sh ./scripts/run.sh"

alias ls="eza"
alias ll="eza -alh"
alias tree="eza --tree"

alias cd="z"

alias stowrc="stow -d ~/lab/git/dotfiles -t ~" 

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2024-05-28 23:44:08
export PATH="$PATH:/Users/ftl/.local/bin"
if [ -f "/Users/ftl/.config/fabric/fabric-bootstrap.inc" ]; then . "/Users/ftl/.config/fabric/fabric-bootstrap.inc"; fi

# PIPX
export PATH=$PATH:$HOME/.local/bin
export PYTHONPATH=$PYTHONPATH:$HOME/.local/pipx/venvs/pandas/lib/pythonX.X/site-packages

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
