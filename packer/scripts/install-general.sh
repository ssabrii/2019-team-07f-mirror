#!/usr/bin/env bash

echo "Doing general setup."

# Install add-apt-repository command.
apt-get install -y software-properties-common

apt-get install -y debconf-utils

# Install terminal web browser.
apt-get install -y lynx

# Install git.
apt-get install -y git

# Add Python repo.
add-apt-repository ppa:deadsnakes/ppa

apt-get update
