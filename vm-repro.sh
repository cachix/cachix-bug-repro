# Make PWD accessible inside VM
sed -i "s|<reprodir>|$(pwd)|" flake.nix

# Start VM. The host's /home is mounted inside the VM.
nix run github:Mic92/nixos-shell/65489e7eeef8eeea43e1e4218ad1b99d58852c7c -- --flake .#vm

# Run this inside the VM shell
CACHIX_AUTH_TOKEN=<set auth token here> $reprodir/run.sh
