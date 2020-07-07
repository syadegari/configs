# Aliases for shell
list_directories () {
    ls -lt $1| grep "^d"
}

list_files () {
    ls -lt $1| grep "^[^d]"
}

alias ls='CLICOLOR_FORCE=1 ls -G'
alias lt='ls -lrt'
alias ll='ls -l'
alias lsd='list_directories'
alias lsf='list_files'
alias emacsq='emacs -nw -q'
alias grep='grep --color=always'
alias top='top -o cpu'
# for colored less output
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

export HISTFILESIZE=10000000

# set PS1 for dumb terminal (useful for Emacs shell mode)
case "$TERM" in 
    dumb)
	PROMPT_COMMAND=
	PS1="\u@\h:\W$ "
esac
export PS1="\[\033[1;30m\]\u:\W$\[\033[0m\] "

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

export PATH="/usr/local/opt/llvm/bin:$PATH"

export PATH="/Users/syad/bin:$PATH"

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/syad/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/syad/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/syad/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/syad/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

