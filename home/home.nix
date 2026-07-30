{ pkgs, ... }:

{
  home.username = "xonlinex";
  home.homeDirectory = "/home/xonlinex";
  home.stateVersion = "26.05";

  imports = [
    ./programs/fonts.nix
    ./programs/niri/default.nix
    ./programs/vicinae.nix
    ./programs/terminal/emulators/ghostty/ghostty.nix
    ./programs/terminal/software/fzf.nix
    ./programs/terminal/software/eza.nix
    ./programs/terminal/software/bat.nix
    ./programs/terminal/software/starship.nix
    ./programs/terminal/software/atuin.nix
    ./programs/terminal/software/zoxide.nix
    ./programs/terminal/software/lazygit.nix
    ./programs/terminal/shell/fish.nix
    ./programs/noctalia.nix
    ./packages/gtk.nix
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
    wl-clipboard
    vesktop
    yazi
  ];

  programs.home-manager.enable = true;
}
