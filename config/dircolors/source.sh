#!/bin/bash

d=$HOME/mydrive/user-profile/config/dircolors/.dircolors
test -r $d && eval "$(dircolors $d)"