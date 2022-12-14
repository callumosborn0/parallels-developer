#!/bin/bash

# git.sh - Callum Osborn (callumosborn@pm.me)

script_name="git"

full_name=$(echo $1 | tr '-' ' ')
email_address=$2

sudo apt-get update
sudo apt-get install \
  git-all \
  -y

echo "$script_name: Configuring Git"
git config --global user.name $full_name
git config --global user.email $email_address
git config --global init.defaultBranch master

exit 0