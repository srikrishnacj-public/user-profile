#!/bin/bash

git clone https://github.com/srikrishnacj-public/user-profile ~/mydrive/user-profile
sudo -u $SCRIPT_USER bash -c "bash /home/$SCRIPT_USER/mydrive/user-profile/install/install.sh"