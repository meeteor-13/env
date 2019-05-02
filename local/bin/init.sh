ARGS=${@}

function start {
    DOCKER_COMPOSE_PATH=$(find ../.repos/ -type f -name "docker-compose.yml" -printf ' -f %p')
    local cmd="docker-compose $DOCKER_COMPOSE_PATH -f $DOCKER_COMPOSE_FILE $DOCKER_COMPOSE_OVERRIDE_PATH $ARGS"
    echo $cmd
    exec $cmd
}
