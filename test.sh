#!/bin/bash

# create container
docker rm -f ubuntu-cn || echo catch the error; docker run -dt --name ubuntu-cn  dongzhuoer/ubuntu-cn:rolling

# test
docker exec ubuntu-cn ls /usr/* -d
# to do: test utf8