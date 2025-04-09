# hyprland-dotfiles

Hyprland simple files with nvidia

Included:

- Hyprland
- Hyprpaper
- Waybar
- Copyq
- Wofi
- Kitty
- Thunar

## Installation

1.  Clone the repository:

    ```bash
    git clone https://github.com/muhammedozby/hyprland-dotfiles.git
    ```

2.  Copy the files to your home directory:

    ```bash
    cp -r hyprland-dotfiles/* ~/.config/hypr
    ```

3.  Install the required packages:

    ```bash
    sudo pacman -S hyprland hyprpaper waybar copyq wofi kitty thunar
    ```

4.  Configure your system to use Hyprland.

## Usage

- Start Hyprland by logging in with your display manager or using `Hyprland` command.
- Use `Super + Shift + Q` to close a window.
- Use `Super + Enter` to open a terminal.
- Use `Super + Space` to open wofi.
- Use `Super + V` to open copyq.

## Customization

- Edit the files in `~/.config/hypr` to customize the look and feel of your desktop.
- Change the keybindings in `~/.config/hypr/hyprland.conf`.
- Change the waybar in `~/.config/hypr/waybar.json`.
- Change the waybar in `~/.config/hypr/hyprpaper.conf`.

## License

MIT
