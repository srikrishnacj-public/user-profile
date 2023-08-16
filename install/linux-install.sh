#!/bin/bash

echo "This is from linux install" >> /tmp/run.log

echo '
    source $HOME/mydrive/user-profile/profile/linux/linux-profile.sh
    ' >> "$HOME/.bashrc"