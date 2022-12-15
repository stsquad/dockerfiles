#
# Docker multiarch cross-compiler target for Bullseye
#
# As building against a moving target involves lots of moving parts
# this has lots a deps in it.
#
ARG USER
FROM ${USER}:debian-bullseye

# Setup for cross-build
RUN dpkg --add-architecture armhf
RUN apt update
RUN apt upgrade -yy && apt autoremove -yy
RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt-get install -y --no-install-recommends \
        crossbuild-essential-armhf \
        gcc-arm-linux-gnueabihf

# RUN DEBIAN_FRONTEND=noninteractive eatmydata \
#     apt-get build-dep -yy -a armhf linux-image-armhf

# RUN DEBIAN_FRONTEND=noninteractive eatmydata \
#     apt-get build-dep -yy -a armhf xen

# RUN DEBIAN_FRONTEND=noninteractive eatmydata \
#     apt-get build-dep -yy -a armhf --arch-only qemu

RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt-get install -y --no-install-recommends \
        acpica-tools \
        checkpolicy \
        flex \
        uuid-dev \
        libfdt-dev \
        libncurses-dev \
        libncurses-dev:armhf \
        libpython3-dev:armhf \
        libssl-dev \
        libyajl-dev \
        zlib1g-dev
