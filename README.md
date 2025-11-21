# kamal-services

My self-hosted services deployed using [Kamal](https://kamal-deploy.org/).

## Requirements
- [Kamal](https://kamal-deploy.org/docs/installation/)

## Usage
1. Pull the repository.
2. Change the `host` in `config/deploy.<service>.yml` (default: `hetzner`).
3. Change the way of fetching secrets in `.kamal/secrets.<service>`.
4. Run a [Makefile](Makefile) target to deploy a specific service.

## Services
- Atuin ([website](https://atuin.sh/), [guide](https://docs.atuin.sh/self-hosting/docker/), [docker-compose.yml](https://github.com/atuinsh/atuin/blob/main/docker-compose.yml))
- Linkding ([website](https://linkding.link/), [guide](https://linkding.link/installation/), [docker-compose.yml](https://github.com/sissbruecker/linkding/blob/master/docker-compose.yml))
