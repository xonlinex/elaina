{ pkgs, ... }:
{
  programs.vicinae = {
    enable = true;

    settings = {
      close_on_focus_loss = true;
      pop_to_root_on_close = true;
      keybinding = "emacs";

      theme = {
        dark = {
          name = "noctalia";  # ajustar según lo que veas en ls
            icon_theme = "auto";
        };
        light = {
          name = "noctalia";
          icon_theme = "auto";
        };
      };
      font = {
        normal = {
          family = "Outfit";
          size = 11;
        };
      };

      launcher_window = {
        rounding = 14;
        opacity = 0.80;
      };
    };
  };
}
