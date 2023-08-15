#!/bin/bash

git clone https://github.com/srikrishnacj-public/user-profile ~/mydrive/user-profile
sudo -u $SCRIPT_USER bash -c "bash $SCRIPT_ROOT_DIR/../install/install.sh"