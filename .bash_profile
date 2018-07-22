# Aliases for shell
alias ls='CLICOLOR_FORCE=1 ls -G'
alias lt='ls -lrt'
alias ll='ls -l'
alias less='less -R'
alias lsd='ls -lt| grep "^d"'

export HISTFILESIZE=10000000

# set PS1 for dumb terminal (useful for Emacs shell mode)
case "$TERM" in 
    dumb)
	PROMPT_COMMAND=
	PS1="\u@\h:\W$ "
esac
export PS1="\[\033[1;30m\]\u:\W$\[\033[0m\] "


# Add GHC 7.10.1 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.1.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi


# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
PATH=/Users/syad/bin:$PATH
PATH=/usr/local/Cellar/gcc/6.2.0/bin/:$PATH
PATH=/Users/syad/anaconda:$PATH
export PATH

# git
source ~/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# added by Anaconda2 4.3.1 installer
export PATH="/Users/syad/anaconda/bin:$PATH"
