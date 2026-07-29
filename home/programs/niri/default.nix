{ config, lib, pkgs, ... }:

let
  toKDL = import ./_to-KDL.nix { inherit lib pkgs; };
  monitors = import ./monitors.nix;
  keybinds = import ./binds.nix;
  inputs = import ./input.nix;
  layout = import ./layout.nix;
  rules = import ./rules.nix;
  autostart = import ./autostart.nix;
  noctalia-settings = import ./noctalia-settings.nix;

  # recursiveUpdate une los sets profundos y combina listas sin sobreescribir
  myNiriConfig = lib.foldl' lib.recursiveUpdate {} [
    monitors
    keybinds
    inputs
    layout
    rules
    autostart
    noctalia-settings
  ];

  finalConfig = toKDL.generate "config.kdl" myNiriConfig;
in
{
  home.packages = with pkgs; [ niri ];

  xdg.configFile."niri/config.kdl".text = builtins.readFile finalConfig;
}
