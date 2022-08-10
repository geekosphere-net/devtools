#!/bin/bash

#
# Example Usage:
# ./proxy-container.sh traefik/whoami whoami


#
# Get image name and optional name of the container

IMAGE=$1
NAME=$2


#
# If name is not provided derrive it
#NAME=${2-:${${1%%:*}##*/}}

if [[ -z ${NAME} ]]
then
	NAME=${IMAGE%%:*}
	NAME=${NAME##*/}
fi


#
# Run the image exposing to Traefik

docker run --rm -itd --name "${NAME}" --network "proxy" --label "traefik.http.routers.${NAME}.tls=true" ${IMAGE}

