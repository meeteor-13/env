COMPOSE_ARGS=${@}

function start {
    COMPOSE_PATH=$(find ../.repos/ -type f -name "docker-compose.yml" -printf ' -f %p')
    local cmd="docker-compose $COMPOSE_PATH $COMPOSE_PATH_OVERRIDE $COMPOSE_ARGS"
    echo $cmd
    exec $cmd
}
