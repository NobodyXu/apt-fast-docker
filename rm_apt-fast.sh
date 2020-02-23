#!/bin/bash -e

apt-get purge -y aria2
apt-get autoremove -y

exec rm /usr/local/sbin/apt-fast /usr/local/sbin/apt-auto /usr/local/etc/apt-fast.conf /usr/local/sbin/rm_apt-fast.sh
