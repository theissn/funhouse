alias g="git"

alias d="docker"
alias dc="docker compose"

kill-port() {
    kill -9 $(lsof -ti:8080)
}

__git_complete g __git_main
