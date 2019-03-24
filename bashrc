# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
export GOPATH=~/.go
PATH="$HOME/.local/bin:$HOME/bin:$GOPATH/bin:$PATH"
export PATH

function _update_ps1() {
	eval "$(powerline-go -error $? -eval)"
}

if [ "$TERM" != "linux" ]; then
	PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

