#
# Docker multiarch cross-compiler target
#
# This docker target is builds on Debian cross compiler targets to build distro
# with a selection of cross compilers for building test binaries. In
# this case we want a bleeding edge compiler for MTE/KASAN support in
# the kernel.
#
ARG USER
FROM ${USER}:debian-bullseye

# Setup for cross-build
RUN dpkg --add-architecture arm64
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt-get install -y --no-install-recommends \
        crossbuild-essential-arm64 \
        flex \
        uuid-dev:arm64 \
        libpython3-dev:arm64 \
        libfdt-dev:arm64 \
        libncurses-dev \
        libssl-dev \
        libyajl-dev:arm64 \
        zlib1g-dev:arm64
RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt-get build-dep -yy -a arm64 linux-image-arm64
