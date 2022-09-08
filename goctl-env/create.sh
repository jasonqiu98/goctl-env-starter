#!/bin/bash

# build an image goctl:v1
docker build -t goctl:v1 .

# map port 8081 (in container) to 8081 (on local machine)
docker run -it --name goctl-env \
  -v $PWD/../src:/go/src \
  -p 8081:8081/tcp \
  goctl:v1

