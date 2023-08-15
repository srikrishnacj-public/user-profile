#!/bin/bash

echo "running install-profile.sh" >> /tmp/run.log
git clone https://github.com/srikrishnacj-public/user-profile ~/mydrive/user-profile
sudo -u $SCRIPT_USER bash -c "bash $SCRIPT_ROOT_DIR/../install/install.sh"