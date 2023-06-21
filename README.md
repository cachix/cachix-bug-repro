This repo runs a Nix build with `cachix watch-exec`, triggering a Cachix bug.

See the Cirrus CI build log for error output.

## Reproduce locally

- Set `cachixCache` in `./build-with-cachix.sh`
- Run the following in an environment (like a VM) with an empty Nix store:
  ```
  CACHIX_AUTH_TOKEN=<auth token> ./run.sh
  ```
