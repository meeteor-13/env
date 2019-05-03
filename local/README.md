# Local environment

## Usage

### Available modes

- **severless**
- **full**
- **full-remote** //TBD

### Common

These scripts just forms docker-compose filepath `[-f <arg>...]` and then proxies all commands and args to `docker-compose` binary.  
Usage template:

```bash
./bin/$mode [options] [COMMAND] [ARGS...]
```

To override docker-compose filepath use following environment variable `COMPOSE_PATH_OVERRIDE`.  
An example:

```bash
export COMPOSE_PATH_OVERRIDE="-f docker-compose.override.yml"
```

### Serverless mode

Run only accessory services (databases, distributed caches, etc) with exposed ports.

```bash
./bin/serverless [options] [COMMAND] [ARGS...]
```

### Full mode

Run fully dockerized application stack.

```bash
./bin/serverless [options] [COMMAND] [ARGS...]
```
