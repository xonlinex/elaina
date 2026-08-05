{ inputs, ... }:

{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia = {
    enable = true;

    settings = {
      backdrop = {
        enabled = true;
      };

      bar = {
        default = {
          font_family = "Outfit";
          font_weight = 400;
          background_opacity = 0.8;
          capsule = true;
          capsule_padding = 10.0;
          capsule_radius = 14;
          capsule_thickness = 0.8;
          thickness = 40;
          padding = 10;
          radius = 14;
          margin_ends = 300;
          widget_spacing = 5;

          start = [ "launcher" "workspaces" "taskbar" ];
          center = [ "media" ];
          end = [
            "tray"
            "keyboard_layout"
            "privacy"
            "group:g2"
            "clock"
            "weather"
            "nix-monitor"
            "volume"
            "notifications"
            "control-center"
          ];

          capsule_group = [
            {
              id = "g2";
              enabled = true;
              fill = "surface_variant";
              members = [ "cpu" "ram" "sysmon" ];
              opacity = 1.0;
              padding = 10.0;
              radius = 10.0;
            }
          ];
        };
      };

      control_center = {
        shortcuts = [
          { type = "wifi"; }
          { type = "bluetooth"; }
          { type = "caffeine"; }
          { type = "nightlight"; }
          { type = "dark_mode"; }
          { type = "power_profile"; }
        ];
      };

      dock = {
        enabled = true;
        background_opacity = 0.7;
        cross_axis_padding = 10;
        icon_size = 40;
        inactive_opacity = 0.8;
        inactive_scale = 1.0;
        item_spacing = 5;
        magnification = false;
        main_axis_padding = 10;
        margin_edge = 10;
        pinned = [ "zen-beta" "com.mitchellh.ghostty" "org.gnome.Nautilus" "dev.noctalia.Noctalia" ];
        radius = 10;
        show_dots = true;
      };

      hooks = {
        colors_changed = "~/elaina/extras/mode-noctalia.sh";
      };

      location = {
        auto_locate = true;
      };

      nightlight = {
        enabled = true;
      };

      osd = {
        background_opacity = 0.8;
        offset_x = 0;
        offset_y = 15;
      };

      plugins = {
        enabled = [ ];
      };

      shell = {
        avatar_path = "/home/xonlinex/Pictures/elaine-dev.png";
        font_family = "Outfit";
        shadow = {
          direction = "center";
        };
      };

      theme = {
        builtin = "Noctalia";
        community_palette = "Oxocarbon";
        mode = "auto";
        source = "wallpaper";
        wallpaper_scheme = "m3-content";
        templates = {
          builtin_ids = [ "cava" "gtk3" "gtk4" ];
          community_ids = [ "pywalfox" "discord" "papirus-icons" "vicinae" ];
        };
      };

      wallpaper = {
        default = {
          path = "/home/xonlinex/Pictures/Wallpapers/wallhaven-3lmj1y.jpg";
        };
        last = {
          path = "/home/xonlinex/Pictures/Wallpapers/wallhaven-3lmj1y.jpg";
        };
        monitors = {
          "HDMI-A-2" = {
            path = "/home/xonlinex/Pictures/Wallpapers/wallhaven-3lmj1y.jpg";
          };
        };
      };

      widget = {
        clock = {
          format = " {:%d %b, %H:%M}";
        };
        control-center = {
          capsule = true;
          capsule_padding = 2;
          custom_image = "/home/xonlinex/Pictures/elaine-dev-rounded.png";
          scale = 1.6;
        };
        cpu = {
          display = "text";
          stat = "disk_used_pct";
        };
        media = {
          title_scroll = "always";
        };
        nix-monitor = {
          type = "avivbintangaringga/nix-monitor:nix-monitor";
        };
        privacy = {
          hide_inactive = true;
        };
        ram = {
          display = "text";
        };
        sysmon = {
          display = "text";
          stat = "disk_used";
        };
        taskbar = {
          inactive_opacity = 0.7;
          only_active_workspace = true;
          show_active_indicator = false;
        };
        workspaces = {
          labels_only_when_occupied = true;
        };
      };
    };
  };
}
