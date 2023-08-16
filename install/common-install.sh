#!/bin/bash

echo "This is from common install" >> /tmp/run.log

find $HOME/mydrive/user-profile/config -type f -name install.sh -exec bash {} \;

echo '
    source $HOME/mydrive/user-profile/profile/common/common-profile.sh
    ' >> "$HOME/.bashrc"