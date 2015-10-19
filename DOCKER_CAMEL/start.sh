#!/bin/bash

if [ -z "${DOCKER_HOST_IP}" ]; then
    echo "DOCKER_HOST_IP env variable not set"
    exit 1
fi

if [ -z "${KAFKA_TOPIC_NAME}" ]; then
    echo "KAFKA_TOPIC_NAME env variable not set"
    exit 1
fi

java -jar event-publisher-api.war

