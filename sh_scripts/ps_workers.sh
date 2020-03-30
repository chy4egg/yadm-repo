#!/bin/bash

rmWorkers() {
  echo $1
  docker-compose stop $1; docker-compose rm -f $1;
}

rmWorkers worker-SaveActionDetailsQueue
rmWorkers worker-dk
rmWorkers worker-esd
rmWorkers worker-od
rmWorkers worker-schd
rmWorkers worker-sd

