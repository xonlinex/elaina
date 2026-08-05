#!/usr/bin/env bash

# Using noctalia
current_mode=$(noctalia msg theme-mode-get)

gsettings set org.gnome.desktop.interface color-scheme "prefer-$current_mode"
