#!/bin/bash

# A helper script to build the images and push them to the registry

for img in base app db; do
    docker build -t agitation/$img:latest $img

    # NOTE: For pushing, `docker login` must be run
    [ "$1" = "push" ] && docker push agitation/$img:latest
done
