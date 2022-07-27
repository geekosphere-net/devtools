#!/bin/bash

IMAGE=$1
NAME=$2
#NAME=${2-:${${1%%:*}##*/}}

if [[ -z ${NAME} ]]
then
	NAME=${IMAGE%%:*}
	NAME=${NAME##*/}
fi

docker run --rm -itd --name "${NAME}" --network "proxy" --label "traefik.http.routers.${NAME}.tls=true" ${IMAGE}

