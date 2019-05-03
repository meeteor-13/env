source ./bin/helpers.sh

COMPOSE_PATH_OVERRIDE="-f docker-compose.serverless.yml $COMPOSE_PATH_OVERRIDE"

start
