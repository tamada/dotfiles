export GS_HOME=/usr/local/opt/ghostscript
export GS_LIB=${GS_HOME}/lib

export HISTCONTROL=ignoredups:ignorespace
export HISTTIMEFORMAT='%F %T '

alias ls='command exa -G -F -h'

export BREW_PREFIX=$(brew --prefix)

if [ -f $BREW_PREFIX/etc/profile.d/bash_completion.sh ]; then
    . $BREW_PREFIX/etc/profile.d/bash_completion.sh
fi
if [ -f $BREW_PREFIX/etc/bash_completion.d/git-completion.bash ]; then
    . ${BREW_PREFIX}/etc/bash_completion.d/git-completion.bash
    . ${BREW_PREFIX}/etc/bash_completion.d/git-prompt.sh
fi

export GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\e[32m\]\u@\h\[\e[00m\]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
export GO_HOME=${HOME}/go

export PATH=$PATH:$HOME/bin:$BREW_PREFIX/sbin:$GO_HOME/bin:$HOME/.anyenv/bin

eval "$(anyenv init -)"
eval "$(kani init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

function __change_directory_to_sibling() {
    traversing_type="$1"
    if [ "$1" == "" ]; then
        traversing_type="next"
    fi
    next=$(sibling -t $traversing_type)
    status=$?
    if [ $status -ne 0 ] ; then
        echo "Done ($(sibling -p -t $traversing_type))"
        cd ..
    else
        cd $next
        echo "$PWD ($(sibling -p -t $traversing_type))"
    fi
    return $status
}

cdnext(){
    __change_directory_to_sibling next
}

cdprev(){
    __change_directory_to_sibling previous
}

cdrand(){
    __change_directory_to_sibling random
}

cdrrh(){
    path=$(rrh repository list --path $1)
    if [ $? -eq 0 ]; then
        cd $path
        pwd
    else
        echo "$1: repository not found"
    fi
}

rrhpeco(){
    csv=$(rrh list --path --csv | peco)
    cd $(echo $csv | awk -F , '{ print $3 }')
    pwd
}
