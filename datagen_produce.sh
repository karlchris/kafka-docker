#!/bin/bash

echo "Waiting for Kafka to be ready..."
cub kafka-ready -b broker:29092 1 40

echo "Waiting for Confluent Schema Registry to be ready..."
cub sr-ready schema-registry 8081 40

echo "Waiting a few seconds for topic creation to finish..."
sleep 11

tail -f /dev/null
