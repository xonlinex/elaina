{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gapless
    wl-clipboard
    vesktop
  ];
}
