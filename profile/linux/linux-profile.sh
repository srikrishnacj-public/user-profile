#!/bin/bash

cloudinit=$(cloud-init status)
if [[ "$cloudinit" == *"running"* ]]
then
  echo "Waiting for cloud init to finish"
  cloud-init status --wait
else
fi