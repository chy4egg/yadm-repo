#!/bin/bash

if [ "$1" == "start" ]; then
  docker-machine start;
  eval "docker-machine env";
  docker-compose up -d;
  docker-compose restart;
elif [ "$1" == "stop" ]; then
  docker-compose stop;
  docker-machine stop;
else
  echo "arguments required (start or stop)"
fi
