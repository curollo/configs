set -o vi

PS1="\[\e[38;5;29m\]\h \[\e[38;5;255m\]\w \[\033[0m\]\n\[\e[38;5;89m\]λ\[\033[0m\] "

export ENV=~/.env
export PATH=~/bin/$(hostname):~/bin:$PATH
export EDITOR=vim
export LANG=en_US.UTF-8
export EDITOR=vim
export HISTSIZE=65536
export PYTHONPATH=~/lib/python3
export GOPATH=~/lib/go
export GOPROXY=direct
export GOSUMDB=off
export GOTELEMETRY=off
export GOTOOLCHAIN=local

[ -e .config/$(hostname).profile ] && . .config/$(hostname).profile
