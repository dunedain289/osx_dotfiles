#!/bin/bash

alias ll="ls -alh"
alias la="ls -a"
alias l="ls -CF"

alias sless="sudo less"

alias up="cd .."

alias ws="ssh esx-ws-2"
alias dv="ssh dv-121-9"

alias tbsql='mysql -h troll -u balance'
alias gbsql='mysql -h goblin -u balance'

alias cheese='source ~/.bashrc'

function cdmkdir() {   [ -n "$1" ] && mkdir -p "$@" && cd "$1";   }
