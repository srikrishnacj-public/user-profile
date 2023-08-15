#!/bin/bash

export SCRIPT_USER=cj;
SCRIPT_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

bash $SCRIPT_ROOT_DIR/scripts/create-user.sh
bash $SCRIPT_ROOT_DIR/scripts/install-essentials.sh
bash $SCRIPT_ROOT_DIR/scripts/ssh-config.sh

sudo -u $SCRIPT_USER bash -c "bash $SCRIPT_ROOT_DIR/scripts/install-profile.sh"