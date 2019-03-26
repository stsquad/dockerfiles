#
# pigz benchmark, to compare with KVM equivilent
#

ARG USER
FROM ${USER}:debian-buster

# Build deps
RUN DEBIAN_FRONTEND=noninteractive eatmydata apt install -yy pigz wget xz-utils
RUN cd /var/tmp && wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.0.4.tar.xz
RUN cd /var/tmp && xz -d linux-5.0.4.tar.xz

# The actual run command
CMD pigz -c /var/tmp/linux-5.0.4.tar > /dev/null
