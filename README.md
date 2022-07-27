# DevTools
This is a docker comopse project to setup:

1. CoreDNS for local DNS
1. Traefik for reverse Proxy and TLS
1. Httpbin for HTTP echo testing
1. DWPlayground for DataWeave testing

# Preconfig
You must first create the `proxy` network by running
```
docker network create proxy
```
# Running
You can then start the containers with
```
docker compose up -d
```
(note: docker version 20.10.16)

# Testing
You can then test this by running the `whoami` container.
You can do this by running
```
docker run --rm -itd --name whoami --network proxy --label traefik.http.routers.whoami.tls=true traefik/whoami:latest
```
or by using the included script
```
./proxy-container.sh traefik/whoami:latest
```
Validate by checking the container at
https://whoami.l.geeksophere.net

