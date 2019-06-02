#
# Debian Buster - Build env for compiler packaging
#
ARG USER
FROM ${USER}:debian-buster-armhf

# Build deps
RUN DEBIAN_FRONTEND=noninteractive eatmydata apt build-dep -y --arch-only qemu
