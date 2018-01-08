#!/bin/sh

apt-get update
apt-get upgrade
apt-get --yes --force-yes install git screen nmap busybox inxi links unzip python xorg xserver-xorg-legacy xserver-xorg-video-dummy

# adding ethereum
add-apt-repository ppa:ethereum/ethereum
apt-get update


# start AMD setup
apt-get --yes --force-yes install fglrx fglrx-core fglrx-dev fglrx-amdcccle
apt-get --yes --force-yes install python-pip
pip install --user adl3


# general configurations
dpkg-reconfigure x11-common # reconfigure and choose "Anybody"

# copying required files

cp -Rf config/etc/* /etc/
