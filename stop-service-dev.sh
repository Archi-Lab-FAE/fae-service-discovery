#!/usr/bin/env bash
CURRENT=$(pwd)

# start service
docker-compose -p discovery \
  -f "$CURRENT/src/main/docker/docker-compose.yml" \
  -f "$CURRENT/src/main/docker/docker-compose-dev.yml" \
  down