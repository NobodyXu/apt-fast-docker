# apt-fast-docker

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/nobodyxu/apt-fast)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/nobodyxu/apt-fast)

Docker image that contains `apt-fast`, which gives images-builder using debian-based distro the following advantage:

 - faster packages download speed using `apt-fast` which has out-of-box settings;
 - preinstalled `apt-utils` so packages configuration on debian is not delayed;
 - set environment variables `DEBIAN_FRONTEND=noninteractive` to avoid interactive `debconf` configuration.

Provides `debian:buster` based images on docker hub.

## Pull from docker hub

```shell
docker pull nobodyxu/apt-fast
```

For `podman` user, replace `docker` with `podman`.

## Build locally

```shell
# To build for debian:buster
docker build --squash -t apt-fast .

# To build for other distros, say ubuntu:bionic
docker build --squash -t apt-fast --build-arg base=ubuntu:bionic .
```

For `podman` user, replace `docker` with `podman`.
