if status --is-login; and test (tty) = "/dev/tty1"
  systemctl --user unset-environment SWAYSOCK WAYLAND_DISPLAY
  systemctl --user import-environment XDG_SEAT XDG_SESSION_ID XDG_VTNR
  exec systemctl --wait --user start sway
end

