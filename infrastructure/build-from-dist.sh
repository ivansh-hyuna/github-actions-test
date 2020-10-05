#!/usr/bin/env bash

export $(grep -v '^#' .env | xargs)

docker build --no-cache --build-arg type=${TYPE} -t ${NAME}:${VERSION} -f ./Dockerfile-from-dist ../
#docker image prune

unset $(grep -v '^#' .env | sed -E 's/(.*)=.*/\1/' | xargs)
