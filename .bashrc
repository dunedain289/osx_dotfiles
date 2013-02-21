# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
if [[ -n "$PS1" ]] ; then
	# don't put duplicate lines in the history. See bash(1) for more options
	export HISTCONTROL=ignoredups

	# check the window size after each command and, if necessary,
	# update the values of LINES and COLUMNS.
	shopt -s checkwinsize

	# make less more friendly for non-text input files, see lesspipe(1)
	[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

	# enable programmable completion features (you don't need to enable
	# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
	# sources /etc/bash.bashrc).
	# if [ -f /etc/bash_completion ]; then
	#    . /etc/bash_completion
	# fi
	if [ -f /usr/local/etc/bash_completion ]; then
	    . /usr/local/etc/bash_completion
	fi

	GREEN='\[\033[01;32m\]'
	BLUE='\[\033[01;34m\]'
	RED='\[\033[01;31m\]'
	CLEAR='\[\033[0m\]'
	export PS1="\n\! \t $GREEN\u@\h \$(__git_ps1) $BLUE\w $CLEAR\n\$ "

	# If this is an xterm set the title to user@host:dir
	case "$TERM" in
	xterm*|rxvt*)
	    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
	    ;;
	*)
	    ;;
	esac

	# Alias definitions.
	# You may want to put all your additions into a separate file like
	# ~/.bash_aliases, instead of adding them here directly.
	# See /usr/share/doc/bash-doc/examples in the bash-doc package.

	if [ -f ~/.bash_aliases ]; then
	    . ~/.bash_aliases
	fi

	# Env variables are also kept in another file
	#
	if [ -f ~/.bash_vars ]; then
	    . ~/.bash_vars
	fi

	# enable color support of ls and also add handy aliases
	#if [ "$TERM" != "dumb" ]; then
	#    eval "`dircolors -b`"
	#    alias ls='ls --color=auto'
	#    #alias dir='ls --color=auto --format=vertical'
	#    #alias vdir='ls --color=auto --format=long'
	#fi

	# some more ls aliases

	if [ -d ~/bin ]; then
		export PATH="~/bin:$PATH"
	fi

fi # [[ -n $PS1 ]]

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - bash)"
