{ pkgs, ... }:
{
  programs.vicinae = {
    enable = true;

    settings = {
      close_on_focus_loss = true;
      pop_to_root_on_close = true;
      keybinding = "emacs";

      font = {
        normal = {
          family = "Outfit";
          size = 11;
        };
      };

      launcher_window = {
        rounding = 0;
      };
    };
  };
}
