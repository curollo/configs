set -b
set -o vi

PS1="\[\e[38;5;29m\]\h \[\e[38;5;25m\]\w\[\033[0m\]\[\e[38;5;89m\]>\[\033[0m\] "

alias ls='ls --color=auto '
alias recent='ls -ltch'
alias tx="tmux a -t 0"
alias rcp='rsync -Pr'

if [ $(uname) = "Linux" ]
then
	nproc=$(grep '^processor' /proc/cpuinfo | wc -l)
	if [ $nproc -gt 4 ]
	then
		# reserve two cores
		nproc=$((nproc - 2))
	fi
	export MAKEFLAGS="-j$nproc"
	export SAMUFLAGS="-j$nproc"
fi

export TERM=xterm-256color
export PATH=~/bin/bastion:~/bin:$PATH
export EDITOR=vim
export LANG=en_US.UTF-8
export HISTSIZE=65536

export MPD_HOST=$HOME/.mpd/socket

export GOPATH=~/.local/share/go
export GOPATH=~/lib/go
export GOPROXY=direct
export GOSUMDB=off
export GOTELEMETRY=off
export GOTOOLCHAIN=local
