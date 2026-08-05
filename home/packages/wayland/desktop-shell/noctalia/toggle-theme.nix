{
  pkgs,
  config,
  ...
}:
{
  # FIX: Verify if Noctalia created the directories before running this
  home.file.".config/noctalia/toggle-theme.sh" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash

      # Script to toggle between dark and light mode in Noctalia

      current_mode=$(noctalia msg theme-mode-get)

      gsettings set org.gnome.desktop.interface color-scheme "prefer-$current_mode"
    '';
  };
}
