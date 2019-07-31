#
# ~/.bashrc
#

# -------------------------------------
# Color Man
# -------------------------------------
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}




# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

###

alias i3lock="i3lock -i ~/Pictures/00-Wallpaper/Gnu-linux-black-wallpaper.png" 

eval "$(thefuck --alias)"

GOPATH=~/go
PATH=/opt/bin:$PATH

export VAULT_ADDR="http://127.0.0.1:8200"
alias vault-server-up="sudo vault server -config=/opt/etc/vault/config.json"

