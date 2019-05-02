# Local environment

## Usage

### Common

These scripts just forms docker-compose filepath `[-f <arg>...]` and then proxies all commands and args to `docker-compose` binary.  
Usage template:

```bash
./bin/$mode [options] [COMMAND] [ARGS...]
```

To override docker-compose filepath use following environment variable `DOCKER_COMPOSE_OVERRIDE_PATH`.
An example:

```bash
export DOCKER_COMPOSE_OVERRIDE_PATH="-f docker-compose.override.yml"
```

### Serverless mode

Run only accessory services (databases, caches, etc).  

```bash
./bin/serverless [options] [COMMAND] [ARGS...]
```
