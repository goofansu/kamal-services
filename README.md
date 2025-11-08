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
- [Atuin](https://docs.atuin.sh/self-hosting/docker/) (version: v18.10.0)
