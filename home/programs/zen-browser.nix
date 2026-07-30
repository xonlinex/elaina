{ pkgs, ... }:
{
  programs.zen-browser = {
    enable = true;
    profiles.xonlinex = {
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
        ublock-origin
        bitwarden
        surfingkeys_ff
        darkreader
      ];
    };
  };
}
