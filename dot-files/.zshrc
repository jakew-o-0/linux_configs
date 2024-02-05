### omzsh ###
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh



### other stuff ###
bindkey -v
source /usr/lib/spaceship-prompt/spaceship.zsh



### fzf ###
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completions.zsh
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'



### commands ###
function yac() {
    local yayCommand() {
        yay $1 |
        fzf --multi --preview 'yay -Si {1}' |
        xargs -ro yay $2
    }

    if [[ $1 == "-S" ]]; then
        yayCommand -Slq -Syu
    fi
    if [[ $1 == "-R" ]]; then
        yayCommand -Qeq -Rcns
    fi
    if [[ $1 == "-Ra" ]]; then
        yayCommand -Qsq -Rcns
    fi
}

function v() {
    cd ~
    cd $(find . -type d | fzf )
    nvim .
}

alias ls="ls -l --color"
alias la="ls -a"
