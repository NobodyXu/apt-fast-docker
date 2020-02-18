#!/bin/bash -e

apt-get purge -y aria2
apt-get autoremove -y

exec rm /usr/local/sbin/apt-fast /usr/local/etc/apt-fast.conf $0
