#!/bin/bash

# get the docker repository
$DOCKER_REPO=$DOCKER_REPO
$DOCKER_USERNAME=$DOCKER_USERNAME
$DOCKER_PASSWORD=$DOCKER_PASSWORD

# build image
docker build -f ./homework2/docker/api.Dockerfile -t api:latest ./homework1/api

# tag image
docker tag api:latest $DOCKER_REPO:latest

# docker login
docker login --username=$DOCKER_USERNAME --password=$DOCKER_PASSWORD

# publish image
docker push $DOCKER_REPO:latest