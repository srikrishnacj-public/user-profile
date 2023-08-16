#!/bin/bash

# export SCRIPT_USER=cj;
# export SCRIPT_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

rm $HOME/.user-profile-installed

function install_linux_profile() {
    bash $HOME/mydrive/user-profile/install/common-install.sh
    bash $HOME/mydrive/user-profile/install/linux-install.sh
    touch $HOME/.user-profile-installed
    echo "installed linux profile"
}

function install_mac_profile() {
    bash $HOME/mydrive/user-profile/install/common-install.sh
    bash $HOME/mydrive/user-profile/install/mac-install.sh
    touch $HOME/.user-profile-installed
    echo "installed linux profile"
}

function install_profile(){
    rm $HOME/.bashrc
    rm $HOME/.bash_profile
    rm $HOME/.profile
    touch $HOME/.bashrc
    touch $HOME/.bash_profile
    touch $HOME/.profile

    case "$OSTYPE" in
        solaris*) echo "SOLARIS" ;;
        darwin*)  install_mac_profile ;; 
        linux*)   install_linux_profile ;;
        bsd*)     echo "BSD" ;;
        msys*)    echo "WINDOWS" ;;
        cygwin*)  echo "ALSO WINDOWS" ;;
        *)        echo "unknown: $OSTYPE" ;;
    esac
}

FILE=~/.user-profile-installed
if ! test -f "$FILE"; then
    echo "installing user profile"
    install_profile;
else
    echo "user profile already installed. skipping installtion"
fi
