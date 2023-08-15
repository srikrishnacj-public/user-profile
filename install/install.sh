#!/bin/bash

rm $HOME/.user-profile-installed

function install_linux_profile() {
    echo "
    bash $HOME/mydrive/user-profile/common/common-install.sh
    bash $HOME/mydrive/user-profile/install/linux-install.sh
    source $HOME/mydrive/user-profile/profile/common/common-profile.sh" >> "$HOME/.bashrc"
    source $HOME/mydrive/user-profile/profile/linux/linux-profile.sh" >> "$HOME/.bashrc"
    touch $HOME/.user-profile-installed
    echo "installed linux profile"
}

function install_mac_profile() {
    echo "
    bash $HOME/mydrive/user-profile/common/common-install.sh
    bash $HOME/mydrive/user-profile/install/mac-install.sh
    source $HOME/mydrive/user-profile/profile/common/common-profile.sh" >> "$HOME/.bashrc"
    source $HOME/mydrive/user-profile/profile/mac/mac-profile.sh" >> "$HOME/.bashrc"
    touch $HOME/.user-profile-installed
    echo "installed linux profile"
}

function install_profile(){
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        install_linux_profile;
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        install_mac_profile
    fi
}

FILE=~/.user-profile-installed
if ! test -f "$FILE"; then
    echo "installing user profile"
    install_profile;
else
    echo "user profile already installed. skipping installtion"
fi
