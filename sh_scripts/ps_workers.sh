#!/bin/bash

# workers
docker-compose stop worker-SaveActionDetailsQueue,
docker-compose stop worker-dk,
docker-compose stop worker-esd,
docker-compose stop worker-od,
docker-compose stop worker-schd,
docker-compose stop worker-sd,
# services
docker-compose stop kibana,
docker-compose stop elasticsearch,
docker-compose stop mailhog,
