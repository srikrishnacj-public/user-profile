#!/bin/bash

function ssh_config(){
    log "configuring ssh"
    # Enable password authentication for ssh
    sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
    echo "MaxAuthTries 50" | sudo tee -a /etc/ssh/sshd_config
}

function configure_ssh_ftp(){
    log "configuring ftp"

    echo "write_enable=YES" | sudo tee -a /etc/vsftpd.conf
    sudo systemctl enable vsftpd
    sudo systemctl start vsftpd
    sudo systemctl restart vsftpd.service
    sudo systemctl status vsftpd.service
}

function log(){
    echo ""
    echo ">>>>>>>>>>>>>>>>>>>>>>>>> $1 <<<<<<<<<<<<<<<<<<<<<<<<<"
    echo ""
}

ssh_config;
configure_ssh_ftp;