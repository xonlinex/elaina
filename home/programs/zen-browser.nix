{ pkgs,inputs, ... }:
{
  programs.zen-browser = {
    enable = true;
    profiles.xonlinex = {
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
        ublock-origin
        bitwarden
        surfingkeys
        darkreader
      ];
      settings = {
        "zen.view.experimental-no-window-controls" = true;
      };
    };
  };
}
