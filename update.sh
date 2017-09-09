#!/bin/bash

# A helper script to build the images and push them to the registry
# NOTE: You must run `docker login` before this script, otherwise pushing won’t work

for img in base app db; do
    docker build -t agitation/$img:latest $img
    docker push agitation/$img:latest
done
