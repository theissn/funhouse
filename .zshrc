autoload -Uz compinit && compinit

alias g="git"
alias d="docker"
alias dc="docker-compose"

. $(brew --prefix)/etc/profile.d/z.sh

kill-port() {
  kill -9 $(lsof -ti:8080)
}

