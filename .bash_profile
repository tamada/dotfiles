export GS_HOME=/usr/local/opt/ghostscript
export GS_LIB=${GS_HOME}/lib

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
export GO_HOME=${HOME}/go

export PATH=$PATH:$HOME/bin:$BREW_PREFIX/sbin:$GO_HOME/bin

[ -f /usr/local/etc/profile.d/bash-preexec.sh ] && . /usr/local/etc/profile.d/bash-preexec.sh

eval "$(sibling --init bash)"

. $(brew --prefix asdf)/lib/asdf.sh
. "$HOME/.cargo/env"

source $HOME/.aliases
