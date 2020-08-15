#!/bin/bash

docker build --build-arg VER="python:3.8-alpine3.11" -f docker/Dockerfile -t aws-lambda-layers .
