#!/bin/bash

docker run --env-file .env -v $PWD:/builder --rm aws-lambda-layers
