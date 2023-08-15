#!/bin/bash

alias apt-get="apt-get -q -y"

function install_essential(){
    log "updating apt cache"
    sudo apt-get update

    sudo apt-get install -y unattended-upgrades \
            zip unzip unrar-free tar dos2unix file \
            wget curl aria2 speedtest-cli \
            mosh vsftpd openssh-server iperf net-tools \
            neofetch git \
            snapd htop btop sysstat

    sudo snap install starship
}

install_essential;