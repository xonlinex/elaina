{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;

    shellAliases = {
      ls = "eza --icons";
      ll = "eza --icons -l";
      la = "eza --icons -la";
      lt = "eza --icons -T";
    };

    shellAbbrs = {
      hms = "home-manager switch --flake .#${config.home.username}";
      nrs = "sudo nixos-rebuild switch";
      c = "clear";
      p = "python";
      g = "git";
      gcl = "git clone";
      gst = "git status";
    };
    # Funciones personalizadas de Fish
    functions = {
      auto_venv = {
        onVariable = "PWD";
        body = ''
          if test -f .venv/bin/activate.fish
              source .venv/bin/activate.fish
          else if set -q VIRTUAL_ENV
              deactivate
          end
        '';
      };
    };

    interactiveShellInit = ''
      set fish_greeting ""

      # Enable vim_mode
      set -g fish_key_bindings fish_vi_key_bindings
      fish_vi_key_bindings
    '';
  };

  programs.bat.enable = true;
  programs.eza = {
    enable = true;
    enableFishIntegration = true;
  };
}
