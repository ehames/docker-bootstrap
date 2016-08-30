#!/bin/sh

DEFAULT_COMPOSE_FILE=/etc/docker-compose/docker-compose.yml

if [ -z "$COMPOSE_FILE" ] ; then
  echo "[INFO] COMPOSE_FILE variable is not defined, using default ($DEFAULT_COMPOSE_FILE)"
  COMPOSE_FILE=$DEFAULT_COMPOSE_FILE
fi

if [ ! -e "$COMPOSE_FILE" ] ; then
  echo "[FATAL] File $COMPOSE_FILE doesn't exist in the container"
  exit 1
fi

echo "[INFO] Bootstrapping $COMPOSE_FILE"

docker-compose -f "$COMPOSE_FILE" $@

exit 0
