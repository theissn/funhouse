autoload -Uz compinit && compinit

alias g="git"
alias d="docker"
alias dc="docker-compose"

. $(brew --prefix)/etc/profile.d/z.sh

kill-port() {
  kill -9 $(lsof -ti:8080)
}

gpso() {
  git push --set-upstream origin $(git branch --show-current)
}

export EDITOR='vim'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

bindkey '^R' history-incremental-search-backward
