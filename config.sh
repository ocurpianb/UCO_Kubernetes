#!/bin/bash

sudo apt-get update -y
sudo apt-get install build-essential linux-headers-$(uname -r) -y
sudo apt-get install virtualbox-guest-dkms -y