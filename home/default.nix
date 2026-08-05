{ inputs, pkgs, ... }: {
  home.username = "xonlinex";
  home.homeDirectory = "/home/xonlinex";
  home.stateVersion = "26.05";

  imports = [
    (inputs.import-tree ./packages)
    (inputs.import-tree ./fonts)
    ./terminal
    ./editors/editorconfig.nix
  ];

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
}
