#!/bin/bash

NAME="erdii/apex-docker"
VERSION="1.0.0-rc3-node8"

docker run -it --rm -v $(pwd):/apex -v "$HOME/.aws":/home/apex/.aws "$NAME:$VERSION" apex $*
