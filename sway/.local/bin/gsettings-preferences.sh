#!/bin/sh

gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface monospace-font-name 'Noto Sans Mono 10'
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans Display 11'
gsettings set org.gnome.desktop.interface font-name 'Noto Sans Display 11'

# TODO: Does it apply to wayland flatpak applications?
#       Is xsettingsd required?
gsettings set org.gnome.settings-daemon.plugins.xsettings antialiasing 'rgba'
gsettings set org.gnome.settings-daemon.plugins.xsettings hinting 'slight'
gsettings set org.gnome.settings-daemon.plugins.xsettings rgba-order 'rgb'
