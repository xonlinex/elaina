{ pkgs, ... }:

{
  home.username = "xonlinex";
  home.homeDirectory = "/home/xonlinex";
  home.stateVersion = "26.05";

  imports = [
    ./programs/fish.nix
  ];

  home.packages = with pkgs; [
    ripgrep
    fd
    bat
    eza
  ];

  programs.home-manager.enable = true;
}
