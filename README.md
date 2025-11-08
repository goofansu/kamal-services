# kamal-services

My self-hosted services deployed using [Kamal accessory](https://kamal-deploy.org/docs/commands/accessory/).

## Requirements
- [Kamal](https://kamal-deploy.org/docs/installation/)

## Usage
1. Pull the repository.
2. Change the host key in the deploy YAMLs (default: `hetzner`).
3. Check [Makefile](Makefile) to deploy a specific service.

## Services
- [Atuin](https://docs.atuin.sh/self-hosting/docker/) (version: v18.10.0)
