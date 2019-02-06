#
# Debian Buster - Build env for compiler packaging
#
ARG USER
FROM ${USER}:debian-buster

# Build deps
RUN DEBIAN_FRONTEND=noninteractive eatmydata apt build-dep -y binutils
RUN DEBIAN_FRONTEND=noninteractive eatmydata apt build-dep -y gcc
