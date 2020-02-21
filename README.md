# apt-fast-docker

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/nobodyxu/apt-fast)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/nobodyxu/apt-fast)

Docker image that contains `apt-fast`, which gives images-builder using debian-based distro the following advantage:

 - faster packages download speed using `apt-fast` which has out-of-box settings;
 - preinstalled `apt-utils` so packages configuration on debian is not delayed;
 - set environment variables `DEBIAN_FRONTEND=noninteractive` to avoid interactive `debconf` configuration.

Provides `debian:buster` and `ubuntu:bionic` based images on docker hub.

## Use this image to build other images

In the `Dockerfile`:

```Dockerfile
FROM nobodyxu/apt-fast:latest-debian-buster AS base

RUN apt-auto install -y --no-install-recommends ...
```

Or

```Dockerfile
FROM nobodyxu/apt-fast:latest-debian-buster AS apt-fast

FROM base # Any debian-based distro here!
COPY --from=apt-fast /usr/local/ /usr/local/

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-auto install -y --no-install-recommends ...

RUN curl pub_key | apt-key add -
RUN echo deb url all main > /etc/apt/sources.list.d/a.list
RUN apt-auto install -y '$(apt-cache search softwares-from-newly-added-mirror)'
```

## Pull from docker hub

```shell
# To pull for debian:buster
docker pull nobodyxu/apt-fast:latest-debian-buster

# To pull for ubuntu:bionic
docker pull nobodyxu/apt-fast:latest-ubuntu-bionic
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
