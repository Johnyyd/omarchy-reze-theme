local active_border_color = { colors = { "rgba(46416Aff)", "rgba(855E8Dee)", "rgba(94BA81cc)" }, angle = 45 }
local inactive_border_color = "rgba(3E363399)"

hl.config({
  general = {
    border_size = 2,
    gaps_in = 8,
    gaps_out = 14,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  decoration = {
    rounding = 12,
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})

-- Transparent background (opacity 80% active, 75% inactive) for GUI apps & IDEs
local transparent_apps = {
  "code", "Code", "code-url-handler", "cursor", "VSCodium", "codium",
  "antigravity-ide", "antigravity-ide-url-handler",
  "GitHub Desktop", "github-desktop",
  "obsidian", "Obsidian",
  "dev.zed.Zed", "zed", "Zed", "sublime_text",
  "discord", "vesktop", "WebCord",
  "org.telegram.desktop", "telegram-desktop",
  "Slack", "slack", "WhatsApp",
  "org.gnome.Nautilus", "nautilus",
  "spotify", "Spotify",
}

for _, app in ipairs(transparent_apps) do
  o.window("^" .. app .. "$", { tag = "-default-opacity", opacity = "0.80 0.75" })
  o.window({ class = "^" .. app .. "$" }, { tag = "-default-opacity", opacity = "0.80 0.75" })
end
