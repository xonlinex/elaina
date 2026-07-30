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

  # Función para fusionar attrsets que concatena las listas automáticamente
  combineConfigs = lib.zipAttrsWith (name: values:
    if builtins.isList (builtins.head values)
    then lib.concatLists values
    else if builtins.isAttrs (builtins.head values)
    then combineConfigs values
    else lib.last values
  );

  myNiriConfig = combineConfigs [
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
