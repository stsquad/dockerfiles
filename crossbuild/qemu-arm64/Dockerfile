#
# Docker multiarch cross-compiler target
#
# This docker target is builds on Debian cross compiler targets to build distro
# with a selection of cross compilers for building test binaries.
#
# On its own you can't build much but the docker-foo-cross targets
# build on top of the base debian image.
#
ARG USER
FROM ${USER}:debian-buster

# Setup for cross-build
RUN dpkg --add-architecture arm64
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt-get build-dep -a arm64 --arch-only -yy qemu
RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt-get install -y --no-install-recommends \
        crossbuild-essential-arm64 \
        flex \
        ninja-build \
        uuid-dev:arm64 \
        libpython3-dev:arm64 \
        libfdt-dev:arm64 \
        libncurses-dev:arm64 \
        libxen-dev:arm64 \
        libyajl-dev:arm64 \
        zlib1g-dev:arm64
