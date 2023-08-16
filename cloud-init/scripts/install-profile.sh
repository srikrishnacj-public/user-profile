#!/bin/bash
export SCRIPT_USER=cj;

alias cl="sudo cat /var/log/cloud-init-output.log"
alias rl="sudo cat /tmp/run.log"

echo "running install-profile.sh as $SCRIPT_USER" >> /tmp/run.log
git clone https://github.com/srikrishnacj-public/user-profile ~/mydrive/user-profile
echo "$SCRIPT_ROOT_DIR/../install/install.sh" >> /tmp/run.log
sudo -u $SCRIPT_USER bash -c "bash $SCRIPT_ROOT_DIR/../install/install.sh"