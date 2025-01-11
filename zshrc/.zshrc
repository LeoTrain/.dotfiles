# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

# eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# Enable vi mode
# bindkey -v

alias cldownl="python3 ~/.local/scripts/organize_downloads.py"
alias zshconf="nvim ~/.zshrc"
alias src="source ~/.zshrc"
alias ls="eza"
alias ll="eza -alh"
alias tree="eza --tree"
alias cd="z"
alias lg="lazygit"
alias publicIp="curl ifconfig.me"
alias localIp="ipconfig getifaddr en0"
alias mini='~/mini-moulinette/mini-moul.sh'
alias srcenv="source ~/env/bin/activate"

source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2024-05-28 23:44:08
export PATH="$PATH:/Users/ftl/.local/bin"
if [ -f "/Users/ftl/.config/fabric/fabric-bootstrap.inc" ]; then . "/Users/ftl/.config/fabric/fabric-bootstrap.inc"; fi

# PIPX
export PATH=$PATH:$HOME/.local/bin
export PYTHONPATH=$PYTHONPATH:$HOME/.local/pipx/venvs/pandas/lib/pythonX.X/site-packages

# FZF
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# C#
export PATH="$PATH:/Users/ftl/.dotnet/tools"

# tdf
export PATH="$PATH:/Users/ftl/git/tdf/target/release"

# Omnisharp
export PATH="$PATH:~/.local/share/nvim/mason/packages/omnisharp"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/ftl/.cache/lm-studio/bin"

# tmux sessionizer
PATH="$PATH":"$HOME/.local/scripts/"
bindkey -s ^f "tmux-sessionizer\n"
