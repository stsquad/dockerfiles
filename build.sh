#!/bin/sh
#
# Build a docker image with a simple call basing the tag on the
# directory name. Call from the Dockerfile directory, e.g.:
#
#   cd distros/debian-trixie
#   ../../build.sh
#

NAME=$(id -un)
USERID=$(id -u)
TAG=$(basename "$PWD")

cmd_c=$(command -v "docker" || command -v "podman")

$cmd_c build $1 \
       --build-arg USER=${NAME} \
       --build-arg UID=${USERID} \
       -t ${NAME}:${TAG} .
