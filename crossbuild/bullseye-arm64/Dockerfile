#
# Docker multiarch cross-compiler target for Bullseye
#
# As building against a moving target involves lots of moving parts
# this has lots a deps in it.
#
ARG USER
FROM ${USER}:debian-bullseye

# Setup for cross-build
RUN dpkg --add-architecture arm64
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt-get install -y --no-install-recommends \
        crossbuild-essential-arm64
RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt-get build-dep -yy -a arm64 linux-image-arm64

RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt-get build-dep -yy xen

# RUN DEBIAN_FRONTEND=noninteractive eatmydata \
#     apt-get build-dep -yy -a arm64 --arch-only qemu

RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt-get install -y --no-install-recommends \
        acpica-tools \
        checkpolicy \
        flex \
        libncurses-dev \
        libssl-dev \
        uuid-dev:arm64 \
        libpython3-dev:arm64 \
        libfdt-dev:arm64 \
        libncurses-dev:arm64 \
        libyajl-dev:arm64 \
        zlib1g-dev:arm64
