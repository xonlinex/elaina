{
  description = "Mi configuración completa de NixOS + Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
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
      modules = [ ./home/home.nix ];
    };
  };
}
