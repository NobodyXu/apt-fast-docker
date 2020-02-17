#!/bin/bash -e

apt-get purge -y aria2
apt-get autoremove -y

exec rm /usr/local/sbin/apt-fast /etc/apt-fast.conf /usr/local/bin/remove_apt-fast.sh
