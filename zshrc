export ZSH="$HOME/.oh-my-zsh"

export GOPATH=~/.go
PATH="$HOME/.local/bin:$HOME/bin:$GOPATH/bin:$PATH"
export PATH

ZSH_THEME="kennethreitz"

plugins=(
	git
	colorize
	sudo
)

source $ZSH/oh-my-zsh.sh
