#!/bin/sh

export CLICOLOR=1
export TERM="xterm-256color"
export EDITOR=vim
export VISUAL=vim

# =============================================================================
# Aliases
# =============================================================================

# ls
LS_COLORS=$LS_COLORS:'di=0;34:' ; export LS_COLORS
alias ls='ls -G --color'
alias ll='ls -lG --color'
alias la='ls -lGa --color'

# dir naviation
alias ..='cd ..'
alias ...='cd ../..'
alias ?='dirs -v'
alias +='pushd'
alias -- -='popd'

# ip
alias myip="ifconfig | grep inet  | grep -v 127.0.0.1 | cut -d\ -f2"

# =============================================================================
# Bash History
# =============================================================================
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it


# ps aux w/ grep
function psg {
    ps jaux|head -1 && ps jaux|GREP_OPTIONS= grep "$1" | GREP_OPTIONS= grep -v grep;
}

function psm {
    ps -eo size,pid,user,command | awk '{ hr=$1/1024 ; printf("%13.6f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' | sort
}
