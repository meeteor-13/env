# Local environment

## Usage

### Available modes

- **severless**
- **full**
- **full-remote**

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
./bin/full [options] [COMMAND] [ARGS...]
```

### Full Remote mode

Run fully dockerized application stack with exposed public urls via ssh-proxy.
All public urls can be found in the file `./tmp/output.txt`.

```bash
./bin/full-remote [options] [COMMAND] [ARGS...]
```
