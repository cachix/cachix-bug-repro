{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";

  outputs = { self, ... }: {
    nixosModules.vm = {config, ...}: {
      services.getty.autologinUser = "root";

      environment.variables.reprodir = "${self}";

      nixos-shell.mounts.mountHome = true;
      virtualisation.memorySize = 1500;
      virtualisation.diskSize = 5000;
      virtualisation.cores = 6;
      virtualisation.writableStoreUseTmpfs = true;
      nix.settings.experimental-features = "nix-command flakes";

      system.stateVersion = config.system.nixos.release;
    };
  };
}
