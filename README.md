# apt-fast-docker

Docker image that contains `apt-fast`, which gives images-builder using debian-based distro the following advantage:

 - faster packages download speed using `apt-fast`;
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
docker build --squash -t apt-fast .
```

For `podman` user, replace `docker` with `podman`.
