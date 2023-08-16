#!/bin/bash


find $HOME/mydrive/user-profile/config/common -type f -name install.sh -exec bash {} \;

echo '

find $HOME/mydrive/user-profile/config -type f -name source.sh | while read line; do
    source $line
done

source $HOME/mydrive/user-profile/profile/common/common-profile.sh

    ' >> "$HOME/.bashrc"