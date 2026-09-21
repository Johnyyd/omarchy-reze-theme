# Omarchy Reze Theme

Reze is a dark atmospheric Omarchy theme inspired by Tatsuki Fujimoto's *Chainsaw Man* (*Reze Arc*), featuring iconic Reze slate violet hair, crisp lavender-white, sage green, and vivid bomb crimson/spark yellow accents against a deep dark purple void (`#26173E`). Rounded glass surfaces with glowing chromatic borders and luminous UI treatments capture the delicate yet explosive atmosphere of the Bomb Devil.

## Preview

![Reze preview](preview.png)

## Install

### Option 1: Complete local install (Recommended)
For a complete install with automatic backups, VS Code theme extension synchronization, transparent background window rules, and a clean uninstall path, run:

```bash
./install.sh
```

- Installs Reze as an Omarchy theme matching official template specifications.
- Configures Kitty, Alacritty, Ghostty, Foot, and Warp with clean transparent backgrounds (`background_opacity 0.80`).
- Configures Hyprland with chromatic border gradients (`#46416A` -> `#855E8D` -> `#94BA81`) and transparency rules for VS Code, Cursor, and VSCodium.
- Automatically generates and synchronizes the rich Reze color theme extension for VS Code / Cursor.
- Creates automatic backups of previous theme, wallpaper, and editor settings.

Restore previous configuration at any time with:

```bash
./uninstall.sh
```

### Option 2: Standard Omarchy installer
To install directly from the remote git repository:

```bash
omarchy-theme-install https://github.com/tringuyen/omarchy-reze-theme
```

## What's Included

- **Hyprland Window Rules**: Window transparency rules (`0.80` active, `0.75` inactive) for VS Code, Cursor, VSCodium, Antigravity IDE, GitHub Desktop, Obsidian, Zed, Discord, Slack, Telegram, Spotify, and Nautilus.
- **Terminals**: Clean transparent background configurations (`0.80` opacity, blur disabled) for Kitty, Alacritty, Ghostty, Foot, and Warp.
- **TUIs & Monitors**: Native transparent terminal backgrounds for `btop` (`main_bg=""`), `helix` (`ui.background={}`), and `neovim`. Custom meter gradients and audio waveforms in `btop` and `cava`.
- **VS Code / Cursor / VSCodium**: Full multi-color syntax highlighting (`vscode-theme.json`) covering TextMate scopes and semantic tokens:
  - **Keywords & Control Flow**: `#FF003C` (Bomb Devil Crimson)
  - **Functions & Methods**: `#EAE43E` (Detonation Spark Yellow)
  - **Types & Interfaces**: `#855E8D` (Lilac Mist)
  - **Strings & Secondary Accents**: `#F4DCCE` (Peach Cream)
  - **Variables & Parameters**: `#94BA81` (Sage Green Eyes)
  - **Numbers & Constants**: `#F18902` (Fuse Amber)
  - **Comments & Documentation**: `#554B67` (Elevated Purple Slate)
- **Editors & TUIs**: Native configurations for Neovim (`aether.nvim` v3 with LazyVim), Helix, Zed, Pi, and Claude CLI.
- **Fastfetch**: Custom Reze logo with slate violet, lilac, and spark yellow color accents (`fastfetch.jsonc`).
- **Desktop Integrations**: Styled layouts for Waybar, Mako, Walker, SwayOSD, and Hyprlock.
- **Vencord Theme**: Standalone [Vencord theme](vencord.theme.css) with custom layered treatment for Discord.

### Fastfetch Theme Setup

Apply the Reze logo and color scheme to Fastfetch:

```bash
./install-fastfetch-logo.sh
```

To restore your previous Fastfetch configuration or system default:

```bash
./uninstall-fastfetch-logo.sh
```

## Wallpapers

### Static Wallpapers

<table>
  <tr>
    <td><img src="backgrounds/01-reze.jpg" width="220" alt="Reze 01"></td>
    <td><img src="backgrounds/02-reze.jpg" width="220" alt="Reze 02"></td>
    <td><img src="backgrounds/03-reze.jpg" width="220" alt="Reze 03"></td>
  </tr>
  <tr>
    <td><img src="backgrounds/04-reze.jpg" width="220" alt="Reze 04"></td>
    <td><img src="backgrounds/05-reze.jpg" width="220" alt="Reze 05"></td>
    <td><img src="backgrounds/06-reze.jpg" width="220" alt="Reze 06"></td>
  </tr>
  <tr>
    <td><img src="backgrounds/07-reze.jpg" width="220" alt="Reze 07"></td>
    <td><img src="backgrounds/08-reze.jpg" width="220" alt="Reze 08"></td>
    <td><img src="backgrounds/09-reze.jpg" width="220" alt="Reze 09"></td>
  </tr>
</table>

### Live Wallpapers (.mp4)

The theme supports animated video wallpapers located in `backgrounds/`:

- `reze-cafe-ambient.mp4` (Reze Cafe Ambient)
- `reze-bomb-devil-transformation.mp4` (Bomb Devil Transformation)
- `reze-night-sky.mp4` (Reze Night Sky)
- `reze-fireworks-festival.mp4` (Fireworks Festival)

These looping video wallpapers are directly compatible with the [Omarchy Live Wallpaper plugin](https://github.com/yesheytenzin/live-wallpaper). Once the plugin is installed:
1. Open **Style → Background** (or double-click an empty area on your desktop).
2. Select any video preview to start playback immediately.

## Requirements

- Omarchy 4.0 (Quattro) for native shell and Hyprland Lua treatment
- `Yaru-magenta` icon theme
