#!/bin/bash

echo "This is from common install" >> /tmp/run.log

echo '
    source $HOME/mydrive/user-profile/profile/common/common-profile.sh
    ' >> "$HOME/.bashrc"