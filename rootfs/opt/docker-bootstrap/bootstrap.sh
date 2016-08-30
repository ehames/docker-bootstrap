#!/bin/sh

set -o nounset

if [ -z "$COMPOSE_FILE" ] ; then
  echo "COMPOSE_FILE variable is not defined"
  exit 1
fi

echo "Bootstrapping $COMPOSE_FILE"

echo "docker-compose -f '$COMPOSE_FILE' $@"
