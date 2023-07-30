# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -l --color=auto'
alias xin='sudo xbps-install'
alias xrm='sudo xbps-remove'
alias xqe='xbps-query'
v() {
	cd "$1"
	nvim .
}
PS1='[\u@\h \W]\$ '
