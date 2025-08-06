#
# Debian Trixie
#
FROM debian:trixie

# We create a USER with the same UID as the host. This is to enable
# easy mapping when running containers mapped to the host environment.
ARG USER=alex
ARG UID=1000

# Duplicate deb line as deb-src
RUN cat /etc/apt/sources.list | sed "s/^deb\ /deb-src /" >> /etc/apt/sources.list

# Add the user hardcoded
RUN useradd -u ${UID} -U ${USER}

# Install common build utilities
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -yy eatmydata
RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt install -y --no-install-recommends \
        bc \
        bison \
        build-essential \
        ca-certificates \
        debhelper \
        devscripts \
        emacs-nox \
        fakeroot \
        fish \
        flex \
        gdb-multiarch \
        libncurses-dev \
        libssl-dev \
        openssl \
        silversearcher-ag \
        zile
