#!/bin/bash


find $HOME/mydrive/user-profile/config/common -type f -name install.sh -exec bash {} \;

echo '
for f in $(find $HOME/mydrive/user-profile/config -type f -name source.sh); do source $f; done
source $HOME/mydrive/user-profile/profile/common/common-profile.sh
' >> "$HOME/.bashrc"