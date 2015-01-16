# .bashrc

# User specific aliases and functions

HISTCONTROL=ignoreboth

alias tmux='tmux -2'
alias cd..='cd ..'
alias ll='ls -l'
alias ls= 'ls --color=auto'
alias grep='grep --color=auto -n -I'
alias fgrep='fgrep --color=auto -n -I'
alias egrep='egrep --color=auto -n -I'
if [ -f /usr/bin/colordiff ]; then
    alias diff='colordiff'
fi

export EDITOR='vim'

if [ -z $TMUX ]; then
    #export LD_LIBRARY_PATH=/home/chwhsu/local/lib
    #oexport PATH="/home/chwhsu/local/bin/:$PATH"
    PATH="$PATH:/opt/nodejs/bin"
fi

# undef terminal flow control signal
stty stop undef

#
# bash prompts
#
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[0;32m\][\w]\$(parse_git_branch)\n\\$ \[\e[0m\]"
