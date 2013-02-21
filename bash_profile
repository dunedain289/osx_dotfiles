if [ -f ~/bin ] ; then
	export PATH="~/bin:$PATH"
fi

#eval `keychain --eval --agents ssh id_rsa` 

if [ -f ~/.bashrc ] ; then
	. ~/.bashrc
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi
