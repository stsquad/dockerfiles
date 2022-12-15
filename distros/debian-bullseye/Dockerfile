#
# Debian Bullseye - Base environment
#
FROM debian:bullseye-slim

# Duplicate deb line as deb-src
RUN cat /etc/apt/sources.list | sed "s/^deb\ /deb-src /" >> /etc/apt/sources.list

# Install common build utilities
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -yy eatmydata
RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt install -y --no-install-recommends \
        aptitude \
        bison \
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
        pkg-config \
        silversearcher-ag \
        zile

# The build script sets USER/UID so we can easily map to the host environment.
ARG USER
ARG UID

# Add the user hardcoded
RUN useradd -u ${UID} -U ${USER}
