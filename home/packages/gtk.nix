{ pkgs, ... }:
{
  # 1. Instalar los paquetes solicitados + glib (para tener el ejecutable gsettings)
  home.packages = with pkgs; [
    gsettings-desktop-schemas
    xdg-user-dirs
    adw-gtk3
    glib
    papirus-icon-theme
    nautilus
  ];

  gtk = {
    enable = true;
    font = {
      name = "Outfit";
      size = 12;
    };
    iconTheme = {
      name = "Papirus";
    };
  };
}
