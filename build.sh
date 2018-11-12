#!/bin/sh
#
# Build a docker image with a simple call basing the tag on the directory name

NAME=$(id -un)
TAG=$(basename ${PWD})

docker build --build-arg USER=${NAME} -t ${NAME}:${TAG} .
