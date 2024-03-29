#!/usr/bin/env bash

CURRENT="$(
  cd "$(dirname "$0")"
  pwd
)"

# Stop service
docker-compose -p discovery \
  -f "$CURRENT/src/main/docker/docker-compose.yml" \
  -f "$CURRENT/src/main/docker/docker-compose.dev.yml" \
  down

# Remove network
docker network inspect fae_backend &>/dev/null && docker network rm fae_backend
