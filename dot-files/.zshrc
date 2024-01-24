export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source "$HOME/.zsh/spaceship.zsh"
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border sharp'

_fzf_comprun() {
    local command=$1
    shift
    find . | fzf --preview 'tree -Cd {}' "$@"
}


# custom commands
function pkg {
    local yayCommand() {
        yay $1 |
        fzf --multi --preview 'yay -Si {1}' |
        xargs -ro yay $2
    }

    if [[ $1 == "i" ]]; then
        yayCommand -Slq -Syu
    fi
    if [[ $1 == "r" ]]; then
        yayCommand -Qeq -Rcns
    fi
    if [[ $1 == "ra" ]]; then
        yayCommand -Qsq -Rcns
    fi
}

function v {
    cd $1
    nvim .
}


alias ls="ls -l --color"
alias la="ls -la --color"
alias vim="nvim"

bindkey -v
