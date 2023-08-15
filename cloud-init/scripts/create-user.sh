#!/bin/bash


alias apt-get="apt-get -q -y"

function create_user(){
    log "Creating User $SCRIPT_USER"

    sudo useradd $SCRIPT_USER -s /bin/bash -m -g sudo
    echo "$SCRIPT_USER:code" > /tmp/pass123
    sudo chpasswd < /tmp/pass123
    rm /tmp/pass123
    sudo adduser $SCRIPT_USER sudo
    echo "$SCRIPT_USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
    sudo service sshd restart
}

function init_bash_files(){
    log "Initilizing bash files for User $SCRIPT_USER"

    export SCRIPT_USER=cj;
    rm /home/$SCRIPT_USER/.bashrc
    rm /home/$SCRIPT_USER/.bash_profile
    rm /home/$SCRIPT_USER/.profile
    touch /home/$SCRIPT_USER/.bashrc
    touch /home/$SCRIPT_USER/.bash_profile
    touch /home/$SCRIPT_USER/.profile
}

function setup_dir_layout(){
    log "creating directory layout"

    mkdir -p /home/$SCRIPT_USER/mydrive/gsync
    mkdir -p /home/$SCRIPT_USER/mydrive/dsync
    mkdir -p /home/$SCRIPT_USER/mydrive/apps-data
    mkdir -p /home/$SCRIPT_USER/mydrive/user-apps
    mkdir -p /home/$SCRIPT_USER/mydrive/tmp
    mkdir -p /home/$SCRIPT_USER/mydrive/projects/personal
    mkdir -p /home/$SCRIPT_USER/mydrive/projects/official
    mkdir -p /home/$SCRIPT_USER/mydrive/projects/experimental
    mkdir -p /home/$SCRIPT_USER/mydrive/projects/checkouts
    chown -R $SCRIPT_USER /home/$SCRIPT_USER
}

create_user;
init_bash_files;
setup_dir_layout;