# JSON-Server

A [Docker](http://docker.com) file to build images for AMD & ARM devices with a installation of [JSON Server](https://github.com/typicode/json-server) that is a fast and simple to deploy a full fake REST API with zero coding.

> Be aware! You should read carefully the usage documentation of every tool!

## Thanks to

- [JSON Server](https://github.com/typicode/json-server)

## Details

- [GitHub](https://github.com/deftwork/json-server)
- [Deft.Work my personal blog](http://deft.work)

| Docker Hub | Docker Pulls | Docker Stars | Size/Layers |
| --- | --- | --- | --- |
| [json-server](https://hub.docker.com/r/elswork/json-server "elswork/json-server on Docker Hub") | [![](https://img.shields.io/docker/pulls/elswork/json-server.svg)](https://hub.docker.com/r/elswork/json-server "json-server on Docker Hub") | [![](https://img.shields.io/docker/stars/elswork/json-server.svg)](https://hub.docker.com/r/elswork/json-server "json-server on Docker Hub") | [![](https://images.microbadger.com/badges/image/elswork/json-server.svg)](https://microbadger.com/images/elswork/json-server "json-server on microbadger.com") |

## Features

Get a full fake REST API with zero coding in less than 30 seconds (seriously). 

## Build Instructions

Build for amd64 or armv7l architecture (thanks to its [Multi-Arch](https://blog.docker.com/2017/11/multi-arch-all-the-things/) base image)

``` sh
docker build -t elswork/json-server .
```

## Run 

Start the live-reloading docs server to preview site while perform changes.

``` sh
make run
``` 
Or
``` sh
docker run -d -p 3000:3000 -v `pwd`:/data  \
    --name my_JSON-Server elswork/json-server
    --watch db.json
``` 
Point your browser to `http://host-ip:3000` to preview site.
