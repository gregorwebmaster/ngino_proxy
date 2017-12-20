#!/bin/bash

#set variables
PROJECT_DIR=$(pwd)
SERVER_IMAGE=ngino_proxy
SERVER_CONTAINER=ngino_proxy

echo rebuild server image
docker build --no-cache -t $SERVER_IMAGE .

echo Prepare web-server container ....
# check or web-server container is running
if [ "$(docker ps -q -f name=$SERVER_CONTAINER)" ]; then
    echo Stop old container...
    docker stop $SERVER_CONTAINER
fi

if [ "$(docker ps -aq -f name=$SERVER_CONTAINER)" ]; then
        echo Remove old container
        docker rm -f $SERVER_CONTAINER
    fi

echo Create new container
        docker run \
            --name $SERVER_CONTAINER \
            --net="host" \
            -d \
                $SERVER_IMAGE


echo "DONE. If you don't see any errors, then the project is ready to work."

