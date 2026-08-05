{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gapless
    wl-clipboard
    libnotify
    imagemagick
    vesktop
  ];
}
