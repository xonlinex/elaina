{
  description = "Mi configuración completa de NixOS + Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # Input de Noctalia apuntando a la rama cachix para binarios precompilados
    noctalia = {
      url = "github:noctalia-dev/noctalia/cachix";
    };
  };

  outputs = { nixpkgs, home-manager, noctalia, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    # Configuración del sistema (equivalente a /etc/nixos)
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./hosts/nixos/configuration.nix
      ];
    };

    # Configuración de usuario (Home Manager standalone)
    homeConfigurations.xonlinex = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      extraSpecialArgs = { inherit inputs; };
      modules = [ 
        ./home/home.nix
      ];
    };
  };
}
