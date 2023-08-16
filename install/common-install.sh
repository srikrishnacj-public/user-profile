#!/bin/bash

echo "This is from common install" >> /tmp/run.log

$HOME/mydrive/user-profile/config

echo '
    source $HOME/mydrive/user-profile/profile/common/common-profile.sh
    ' >> "$HOME/.bashrc"