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
        gcc-aarch64-linux-gnu

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
        libncurses-dev \
        libssl-dev \
        uuid-dev:armhf \
        libpython3-dev:armhf \
        libfdt-dev:armhf \
        libncurses-dev:armhf \
        libyajl-dev:armhf \
        zlib1g-dev:armhf
