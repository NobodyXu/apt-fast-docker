ARG base=debian:buster

FROM $base AS install-and-configure

# Disable interctive debconf post-install-configuration
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y aria2 coreutils apt-utils

ADD https://raw.githubusercontent.com/ilikenwf/apt-fast/master/apt-fast /usr/local/sbin/apt-fast
RUN chmod +x /usr/local/sbin/apt-fast
ADD apt-fast.conf /etc/

ADD rm_apt-fast.sh /usr/local/bin/
