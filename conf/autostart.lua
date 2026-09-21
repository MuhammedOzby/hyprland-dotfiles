-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    hl.exec_cmd("waybar --config /home/ozbay/.config/hypr/waybar.json -s /home/ozbay/.config/hypr/waybar.css")

    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("copyq --start-server")
    hl.exec_cmd("hyprpolkitagent")
    hl.exec_cmd("swaync")
    hl.exec_cmd("hypridle")
end)