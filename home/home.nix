{ pkgs, ... }:

{
  home.username = "xonlinex";
  home.homeDirectory = "/home/xonlinex";
  home.stateVersion = "26.05";

  imports = [
    ./programs/fish.nix
    ./programs/fonts.nix
    ./programs/ghostty/ghostty.nix
    ./programs/noctalia.nix
    ./programs/niri/default.nix
    ./programs/vicinae.nix
  ];
  # Configuración del Cursor para todo el entorno
  # home.pointerCursor = {
  #   enable = true;
  #   gtk.enable = true;
  #   x11.enable = true;
  #   name = "Bibata-Modern-Ice"; # O "Bibata-Modern-Classic", "Bibata-Original-Ice", etc.
  #   package = pkgs.bibata-cursors;
  #   size = 24;
  # };

  # Forzar soporte GTK3 / GTK4
  # gtk = {
  #   enable = true;
  #   cursorTheme = {
  #     name = "Bibata-Modern-Ice";
  #     package = pkgs.bibata-cursors;
  #     size = 24;
  #   };
  # };

  home.packages = with pkgs; [
    ripgrep
    fd
    bat
    eza
  ];

  programs.home-manager.enable = true;
}
