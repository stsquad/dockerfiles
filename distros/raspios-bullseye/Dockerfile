#
# RaspPi OS (Debian Bullseye + RaspiOS components)
#
FROM debian:bullseye-slim

# Duplicate deb line as deb-src
RUN cat /etc/apt/sources.list | sed "s/^deb\ /deb-src /" >> /etc/apt/sources.list
RUN echo "deb http://archive.raspberrypi.org/debian/ bullseye main" >> /etc/apt/sources.list
RUN echo "deb-src http://archive.raspberrypi.org/debian/ bullseye main" >> /etc/apt/sources.list
ADD raspberrypi-archive-stable.gpg /etc/apt/trusted.gpg.d/raspberrypi-archive-stable.gpg

# Install common build utilities
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -yy eatmydata
RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        debhelper \
        devscripts \
        emacs-nox \
        fakeroot \
        fish \
        fd-find \
        git \
        kbd \
        less \
        procps \
        pkg-config \
        silversearcher-ag \
        zile

RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt install -y --no-install-recommends \
        raspberrypi-archive-keyring \
        rpi-wayland \
        sudo \
        kodi \
        kodi-bin \
      	libgl1-mesa-dri \
        libraspberrypi-bin \
        udev

# The build script sets USER/UID so we can easily map to the host environment.
ARG USER
ARG UID

# Add the user hardcoded
RUN useradd -u ${UID} -U ${USER} -G audio,video,sudo,kvm
