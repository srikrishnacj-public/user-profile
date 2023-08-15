#!/bin/bash

export SCRIPT_USER=cj;

SCRIPT_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "Script Root DIR: "$SCRIPT_ROOT_DIR > /tmp/run.log

bash $SCRIPT_ROOT_DIR/scripts/create-user.sh
bash $SCRIPT_ROOT_DIR/scripts/install-essentials.sh
bash $SCRIPT_ROOT_DIR/scripts/ssh-config.sh