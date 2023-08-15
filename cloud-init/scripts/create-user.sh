#!/bin/bash

export NEWUSER=cj;
alias apt-get="apt-get -q -y"

function create_user(){
    log "Creating User $NEWUSER"

    sudo useradd $NEWUSER -s /bin/bash -m -g sudo
    echo "$NEWUSER:code" > /tmp/pass123
    sudo chpasswd < /tmp/pass123
    rm /tmp/pass123
    sudo adduser $NEWUSER sudo
    echo "$NEWUSER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
    sudo service sshd restart
}

function init_bash_files(){
    log "Initilizing bash files for User $NEWUSER"

    export NEWUSER=cj;
    rm /home/$NEWUSER/.bashrc
    rm /home/$NEWUSER/.bash_profile
    rm /home/$NEWUSER/.profile
    touch /home/$NEWUSER/.bashrc
    touch /home/$NEWUSER/.bash_profile
    touch /home/$NEWUSER/.profile
}

function setup_dir_layout(){
    log "creating directory layout"

    mkdir -p /home/$NEWUSER/mydrive/gsync
    mkdir -p /home/$NEWUSER/mydrive/dsync
    mkdir -p /home/$NEWUSER/mydrive/apps-data
    mkdir -p /home/$NEWUSER/mydrive/user-apps
    mkdir -p /home/$NEWUSER/mydrive/tmp
    mkdir -p /home/$NEWUSER/mydrive/projects/personal
    mkdir -p /home/$NEWUSER/mydrive/projects/official
    mkdir -p /home/$NEWUSER/mydrive/projects/experimental
    mkdir -p /home/$NEWUSER/mydrive/projects/checkouts
    chown -R $NEWUSER /home/$NEWUSER
}

create_user;
init_bash_files;
setup_dir_layout;