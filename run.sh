# Non-affected versions
nixpkgs_cachix_1_1=e9ade2c8240e00a4784fac282a502efff2786bdc

# Affected versions
nixpkgs_cachix_1_2=ed65e11bac2fde631de8b76a5dddef8aabef2761
nixpkgs_cachix_1_3_3=fc95eb4fc3c978e92f28c0aa382dd70f79526cd4
nixpkgs_cachix_1_5=bb8b5735d6f7e06b9ddd27de115b0600c1ffbdb4

nixpkgs_rev=$nixpkgs_cachix_1_3_3
nix shell github:nixos/nixpkgs/$nixpkgs_rev#{bash,coreutils,cachix} -c ./build-with-cachix.sh
