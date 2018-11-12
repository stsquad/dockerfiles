#
# Debian Testing - Build env for compiler packaging
# docker build --tag debian-testing:gcc-dev .
ARG USER
FROM ${USER}:debian-testing

# Build deps
RUN DEBIAN_FRONTEND=noninteractive eatmydata apt build-dep -y binutils
RUN DEBIAN_FRONTEND=noninteractive eatmydata apt build-dep -y gcc
