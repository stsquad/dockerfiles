#
# Debian Buster - Base environment
#
FROM silex/emacs:27-alpine-dev

# We create a USER with the same UID as the host. This is to enable
# easy mapping when running containers mapped to the host environment.
ARG USER=alex
ARG UID=1000

# Add the user hardcoded
RUN adduser -u ${UID} -D ${USER}

USER ${USER}
RUN git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
RUN ~/.emacs.d/bin/doom -y install
