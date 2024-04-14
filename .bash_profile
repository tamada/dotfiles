export HISTCONTROL=ignoredups:ignorespace
export HISTTIMEFORMAT='%F %T '

export BREW_PREFIX=$(brew --prefix)

if [[ -f $BREW_PREFIX/etc/profile.d/bash_completion.sh ]]; then
    . $BREW_PREFIX/etc/profile.d/bash_completion.sh
fi
if [[ -f $BREW_PREFIX/etc/bash_completion.d/git-completion.bash ]]; then
    . ${BREW_PREFIX}/etc/bash_completion.d/git-completion.bash
    . ${BREW_PREFIX}/etc/bash_completion.d/git-prompt.sh
fi

export GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\e[32m\]\u@\h\[\e[00m\]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

export GS_HOME=$(brew --prefix ghostscript)
export GS_LIB=${GS_HOME}/lib
export GO_HOME=${HOME}/go

export PATH=$PATH:$HOME/bin:$BREW_PREFIX/sbin:$GO_HOME/bin

if [[ -f ${BREW_PREFIX}/etc/profile.d/bash-preexec.sh ]]; then 
  . ${BREW_PREFIX}/etc/profile.d/bash-preexec.sh
fi 

if [[ $(which sibling) ]]; then
  eval "$(sibling --init bash)"
fi

. $(brew --prefix asdf)/libexec/asdf.sh

if [[ -d $HOME/.cargo ]]; then
  . "$HOME/.cargo/env"
fi

if [[ -d $HOME/bin ]]; then
  export PATH=$PATH:$HOME/bin
fi

source $HOME/.aliases
