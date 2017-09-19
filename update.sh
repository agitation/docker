#!/bin/bash

set -e

# A helper script to build the images and push them to the registry

docker build -t agitation/base:latest base
docker build -t agitation/db:latest db
docker build --build-arg SYMFONY_ENV=dev -t agitation/app:dev app
docker build --build-arg SYMFONY_ENV=prod -t agitation/app:prod app

if [ "$1" = "push" ]; then
    docker push agitation/base
    docker push agitation/db
    docker push agitation/app:prod
    docker push agitation/app:dev
fi
