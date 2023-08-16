#!/bin/bash

alias apt="sudo apt -y"
alias aria="aria2c -x 8 -s 8 "
alias kz='echo Needtochange\$1 | sudo -S /Users/a503959/mydrive/user-apps/kill-zscaler/kill-zscaler.sh'
alias fswatch='watch -n 1 cat /proc/sys/fs/file-nr' # watch no of file discreptor opened

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# Git alias
alias ga="git add ."
alias gs="git status"
alias gc="git commit -m "
alias gca="git commit --amend -m "
alias gt="git add .; git commit -m 'temp';"
alias gtp="git add .; git commit -m 'temp';git push;"
alias gp="git push;"

function gclean(){
    branch_name=$(git branch -l master main | sed 's/^* //');
    git reset --hard HEAD
    git checkout $branch_name
    git fetch --all --prune
    git branch -lvv | cut -c3- | awk '/: gone]/ {print $1}' | xargs git branch -D;
	git checkout $branch_name
	git pull
}

alias gb="git branch -va"
alias gl="git log --oneline --decorate --graph --all -n 20"

alias git-user-office="git config user.name 'Srikrishna Cj'; git config user.email 'ssekhar2@ford.com'; git config user.name; git config user.email;"
alias git-user-cj="git config user.name 'Cj'; git config user.email 'srikrishna.cj@gmail.com'; git config user.name; git config user.email;"


# docker
alias docker="sudo docker"
alias dc="docker "
alias dcls="docker ps -a"
alias dcst="docker start "
alias dcsp="docker stop "
alias dcrm="docker rm -f "

function dcc(){
  docker system prune -f
}

function dcf(){
    docker kill $(docker ps -q)
    docker rm $(docker ps -a -q)
    docker rmi $(docker images -q)
    docker volume rm $(docker volume ls -q)
    docker network rm $(docker network ls -q)
}