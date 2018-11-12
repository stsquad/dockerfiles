#!/bin/sh
#
# Build a docker image with a simple call basing the tag on the directory name

NAME=$(id -un)
TAG=$(basename ${PWD})

docker build -t ${NAME}:${TAG} .
