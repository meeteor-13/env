source ./bin/helpers.sh

DOCKER_COMPOSE_OVERRIDE_PATH="-f docker-compose.serverless.yml $DOCKER_COMPOSE_OVERRIDE_PATH"

start
