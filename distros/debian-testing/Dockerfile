#
# Debian Testing - Build env for compiler packaging
#
FROM debian:testing

# Duplicate deb line as deb-src
RUN cat /etc/apt/sources.list | sed "s/^deb\ /deb-src /" >> /etc/apt/sources.list

# hardcoded
RUN useradd -u 1000 -U alex
# Install common build utilities
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -yy eatmydata
RUN DEBIAN_FRONTEND=noninteractive eatmydata \
    apt install -y --no-install-recommends \
        bison \
        build-essential \
        ca-certificates \
        debhelper \
        devscripts \
        emacs-nox \
        fakeroot \
        silversearcher-ag \
        zile
