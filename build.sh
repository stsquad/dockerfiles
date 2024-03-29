#!/bin/sh
#
# Build a docker image with a simple call basing the tag on the directory name

NAME=$(id -un)
USERID=$(id -u)
TAG=$(basename ${PWD})

docker build $1 \
       --build-arg USER=${NAME} \
       --build-arg UID=${USERID} \
       -t ${NAME}:${TAG} .
