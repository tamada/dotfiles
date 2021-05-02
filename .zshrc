# The following lines were added by compinstall

zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/Users/tamada/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

alias ls='exa -F '

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
export GVM_DIR="/Users/tamada/.gvm"
[[ -s "/Users/tamada/.gvm/bin/gvm-init.sh" ]] && source "/Users/tamada/.gvm/bin/gvm-init.sh"

# added by travis gem
[ -f /Users/tamada/.travis/travis.sh ] && source /Users/tamada/.travis/travis.sh

fpath=(/usr/local/share/zsh-completions $fpath)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /Users/tamada/go/bin/gocomplete go

complete -o nospace -C /Users/tamada/go/bin/rrh_completion rrh

source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX=" ]"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}%{ %G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[magenta]%}%{x%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[red]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[red]%}%{-%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[green]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}%{✔%G%}"
RPROMPT='$(git_super_status)'

eval "$(kani init -)"

