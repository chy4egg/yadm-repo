#!/bin/bash

if [ "$1" == "start" ]; then
  docker-machine start &&
  eval "docker-machine env" &&
  docker-compose up -d &&
  docker-compose restart
elif [ "$1" == "stop" ]; then
  docker-compose stop &&
  docker-machine stop
elif [ "$1" == "restart" ]; then
  eval "docker-machine env" &&
  docker-compose restart
else
  echo "arguments required (start or stop)"
fi
