#!/usr/bin/env bash

# Using noctalia
current_mode=$(noctalia msg theme-mode-get)

if [ "$current_mode" = "light" ]; then
  gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
else
  gsettings set org.gnome.desktop.interface color-scheme 'default'
fi
