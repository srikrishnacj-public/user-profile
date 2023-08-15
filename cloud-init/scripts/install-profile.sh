#!/bin/bash
export SCRIPT_USER=cj;

echo "running install-profile.sh as $SCRIPT_USER" >> /tmp/run.log
git clone https://github.com/srikrishnacj-public/user-profile ~/mydrive/user-profile
sudo -u $SCRIPT_USER bash -c "bash $SCRIPT_ROOT_DIR/../install/install.sh"