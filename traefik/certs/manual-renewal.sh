#!/bin/bash

mkdir ./certbot.$$
docker run -v $PWD/certbot.$$:/etc/letsencrypt/archive -it certbot/certbot certonly --preferred-challenges dns --manual  -m webmaster@geekosphere.net -d 'l.geekosphere.net' -d '*.l.geekosphere.net'

