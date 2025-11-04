if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f "/usr/share/fzf/key-bindings.zsh" ] && source "/usr/share/fzf/key-bindings.zsh"
[ -f "/usr/share/fzf/completion.zsh" ] && source "/usr/share/fzf/completion.zsh"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
export PATH="$HOME/.heroku-cli/heroku/bin:$PATH"
eval "$(fasd --init auto)"

alias lsd="exa --icons"
alias bat="bat --style=auto"
alias supabase="npx supabase"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
setopt sharehistory
setopt extendedhistory
setopt hist_ignore_dups
