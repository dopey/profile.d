#!/bin/sh

. $HOME/.profile.d/colors.sh

export CLICOLOR=1
export TERM="xterm-256color"

#########################
# Aliases
#########################
alias ..='cd ..'
alias ...='cd ../..'
alias ?='dirs -v'
alias +='pushd'
alias -- -='popd'
alias grep='grep --color=auto -r'
alias gs='git status'
alias gd='git diff --color'
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -lGa'
alias myip="ifconfig | grep inet  | grep -v 127.0.0.1 | cut -d\ -f2"
alias hangoutsrage='sudo killall AppleCameraAssistant'
alias vg='vagrant'

POINTER_CHAR="⬆"
PREINFO="\n$POINTER_CHAR $BIBLUE[ "$BLUE"exit: $WHITE\$?$BIBLUE ] [ "$BLUE"time: $WHITE\t$BIBLUE ]$END_COLOR"
PREGIT="$PREINFO\n$WHITE\u $PURPLE@ $BLUE\h$WHITE \w$END_COLOR"
POSTGIT=" $RED\$$END_COLOR "

export PROMPT_COMMAND="__git_ps1 \"$PREGIT\" \"$POSTGIT\""

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

PATH="$PATH:~/.bin"
PATH=/Users/max/bin:${PATH}
PATH=/usr/local/bin:${PATH}
PATH=/usr/local/sbin:${PATH}
PATH=/usr/local/lib/node_modules:${PATH}

PG=/Users/max/src/playground
GOSRC=/usr/local/Cellar/go/1.1

EDITOR=vim
VISUAL=vim

GRAMMAR=~/Desktop/SHARED/aenea

export PATH
export WORK
export PYTHONPATH

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Fixes Java stuff launching into the dock and messing with Spaces
export _JAVA_OPTIONS=-Djava.awt.headless=false

function precise {
   nohup VBoxHeadless -startvm "betable-ubuntu64" &
}

function trusty {
   nohup VBoxHeadless -startvm "betable-trusty64" &
}

function psg {
    ps jaux|head -1 && ps jaux|GREP_OPTIONS= grep "$1" | GREP_OPTIONS= grep -v grep;
}

function psm {
    ps -eo size,pid,user,command | awk '{ hr=$1/1024 ; printf("%13.6f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' | sort
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
