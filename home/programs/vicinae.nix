{ pkgs, ... }:

{
  programs.vicinae = {
    enable = true;

    settings = {
      close_on_focus_loss = true;
      pop_to_root_on_close = true;

      theme = {
        dark = {
          name = "vicinae-dark";
          icon_theme = "default";
        };
      };

      launcher_window = {
        opacity = 0.90;
      };
    };
  };
}
