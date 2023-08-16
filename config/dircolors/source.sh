#!/bin/bash

d=$HOME/user-profile/config/dircolors/.dircolors
test -r $d && eval "$(dircolors $d)"