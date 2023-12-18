#
# Debian Bookworm - Base environment
#
FROM debian:bookworm-slim

# We create a USER with the same UID as the host. This is to enable
# easy mapping when running containers mapped to the host environment.
ARG USER
ARG UID

# Duplicate deb line as deb-src
RUN sed -i "s/Types: deb/Types: deb deb-src/" /etc/apt/sources.list.d/debian.sources

# Add the user hardcoded
RUN useradd -u ${UID} -U ${USER}

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
