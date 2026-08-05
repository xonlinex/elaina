{ pkgs, ... }:

{
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
    options = [
      "--cmd cd" # Reemplaza el comando 'cd' nativo por zoxide (z / cdi)
    ];
  };
}
