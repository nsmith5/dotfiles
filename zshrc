export ZSH="/home/nsmith/.oh-my-zsh"

export GOPATH=~/.go
PATH="$HOME/.local/bin:$HOME/bin:$GOPATH/bin:$PATH"
export PATH

ZSH_THEME="agnoster"

plugins=(
	git
	golang
)

source $ZSH/oh-my-zsh.sh
