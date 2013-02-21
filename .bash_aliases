#!/bin/bash

alias ll="ls -alh"
alias la="ls -a"
alias l="ls -CF"

alias sless="sudo less"

alias up="cd .."

alias ws="ssh esx-ws-2.centtech.com"
alias dv="ssh dv-121-23.centtech.com"

alias tbsql='mysql -h troll.centtech.com -u balance'
alias gbsql='mysql -h goblin.centtech.com -u balance'

alias cheese='source ~/.bashrc'

alias bx="bundle exec"

function cdmkdir() {   [ -n "$1" ] && mkdir -p "$@" && cd "$1";   }
