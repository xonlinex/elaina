{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gapless
    wl-clipboard
    libnotify
    vesktop
    loupe
    nautilus
    papers
    # Software for Programming
    dbeaver-bin
    postman
    neovim
    fastfetch
    ghostty
    git
    #x11
    xwayland-satellite
  ];
}
