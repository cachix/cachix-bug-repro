let
  pkgs = (builtins.getFlake "github:nixos/nixpkgs/bb8b5735d6f7e06b9ddd27de115b0600c1ffbdb4").legacyPackages.${builtins.currentSystem};
in
  # Force systemd build
  pkgs.systemd.overrideAttrs (_: { dummy = 1; })
