autoload -Uz compinit && compinit
bindkey '^R' history-incremental-search-backward

alias g="git"
alias d="docker"
alias dc="docker-compose"

kill-port() {
  kill -9 $(lsof -ti:8080)
}

gpso() {
  git push --set-upstream origin $(git branch --show-current)
}

gplog() {
  g commit -am "notes" && g push
}

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -x "$(command -v brew)" ] && . $(brew --prefix)/etc/profile.d/z.sh
[ -x "$(command -v nvim)" ] && alias vim="nvim"

export EDITOR='vim'
export NVM_DIR="$HOME/.nvm"

setopt PROMPT_SUBST
PROMPT='%n@%m: ${(%):-%~} '

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=$HISTSIZE
