# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
export GOPATH=~/.go
PATH="$HOME/.local/bin:$HOME/bin:$GOPATH/bin:$PATH"
export PATH


