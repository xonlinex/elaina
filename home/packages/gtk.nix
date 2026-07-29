{ pkgs, ... }:

{
  # 1. Instalar los 3 paquetes solicitados + glib (para tener el ejecutable gsettings)
  home.packages = with pkgs; [
    gsettings-desktop-schemas
    xdg-user-dirs
    adw-gtk3
    glib
  ];
}
