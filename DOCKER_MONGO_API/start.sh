#!/bin/bash

if [ -z "${DOCKER_HOST_IP}" ]; then
    echo "DOCKER_HOST_IP env variable not set"
    exit 1
fi

java -jar event-repository-api-1.2.5.RELEASE.jar --spring.data.mongodb.host="${DOCKER_HOST_IP}" --spring.data.mongodb.uri=mongodb://"${DOCKER_HOST_IP}"/customer_event_repository

