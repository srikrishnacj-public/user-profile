#!/bin/bash

eval "$(starship init bash)"

find $HOME/mydrive/user-profile/config -type f -name source.sh -exec echo {} \;
find $HOME/mydrive/user-profile/config -type f -name source.sh -exec source {} \;