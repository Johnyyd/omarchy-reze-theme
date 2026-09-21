# Reze Theme Design Language

## Core Idea

**Reze** is a dark atmospheric aesthetic theme inspired by the character Reze from Tatsuki Fujimoto's *Chainsaw Man* (*Reze Arc* / Bomb Devil).

The theme captures Reze's duality: the gentle, charming cafe worker with deep violet hair and pale lavender-white attire, intertwined with the lethal, explosive force of the Soviet assassin and Bomb Devil.

It should feel:

- **atmospheric & deep**: anchored in a rich night void (`#26173E`) and dark slate purple (`#46416A`)
- **crisp & readable**: high-contrast lavender-white text (`#EFECF4`) and warm peach tones (`#F4DCCE`)
- **delicately accented**: sage-green emerald sparks (`#94BA81`) reminiscent of Reze's eyes and cafe bouquets
- **explosive in syntax**: energetic flashes of detonation spark yellow (`#EAE43E`), fuse amber (`#F18902`), and bomb crimson (`#FF003C`)

---

## Visual Voice

The voice of the theme is structured through distinct character elements:

- **Night Void base** (`#26173E`) for depth, contrast, and dark canvas atmosphere
- **Reze Hair Slate Violet** (`#46416A`) for primary accents, title bars, and window borders
- **Dark Choker Structure** (`#3E3633`) for raised surfaces, inactive borders, and structural controls
- **Reze Shirt Lavender White** (`#EFECF4`) for primary text, selection fills, and high-visibility readouts
- **Sage Green Eyes** (`#94BA81`) for cursors, success states, and variable definitions
- **Peach Cream** (`#F4DCCE`) for soft foreground, strings, and delicate syntax details
- **Bomb Devil Crimson** (`#FF003C`) for keywords, critical errors, and high-priority alerts
- **Ignition Spark Yellow** (`#EAE43E`) for function names, search matches, and warnings
- **Combustion Fuse Amber** (`#F18902`) for constants, numbers, and warm indicators
- **Lilac Mist** (`#855E8D`) for types, classes, and special syntactic markers

---

## Source Of Truth

`colors.toml` is the canonical palette source for this theme.

That means:

- every documented color value must match `colors.toml`
- derived CSS variables (`colors.css`, `waybar.css`, `gtk.css`) and app-specific configurations must follow `colors.toml`, never invent parallel colors
- `palette.scss` provides synchronized SCSS tokens, HSL values, and Bomb Devil gradients
- when the palette is modified, `colors.toml` is updated first and `./build.sh` synchronizes the rest of the theme

---

## The 15-Color Palette

The theme is built from the Reze palette roles:

| Hex | Name | Role | Primary Usage |
|---|---|---|---|
| `#26173E` | Night Void | Background / Dark Base | Canvas background, dark panel base |
| `#46416A` | Reze Slate Violet | Accent / Hair | Primary UI accent, window headers, active focus |
| `#3E3633` | Dark Choker | Raised Structure | Inactive borders, elevated cards, panel surfaces |
| `#373739` | Dark Charcoal | Secondary Dark | Stockings/shoes, subtle dark borders |
| `#EFECF4` | Lavender White | Primary Foreground | Main editor & shell text, selection background |
| `#F4DCCE` | Peach Cream | Soft Foreground / Skin | String literals, soft text, skin tone highlights |
| `#94BA81` | Sage Green | Cursor / Eye Emerald | Cursors, selection foreground, variables, success |
| `#554B67` | Elevated Purple | Lighter Void / Comments | Code comments, disabled states, dim labels |
| `#FF003C` | Bomb Crimson | Errors / Keywords | Keywords, control flow, critical alerts, errors |
| `#EAE43E` | Spark Yellow | Functions / Warnings | Function declarations, search matches, warnings |
| `#F18902` | Fuse Amber | Constants / Numbers | Numeric constants, operators, warm badges |
| `#855E8D` | Lilac Mist | Types / Markdown | Type definitions, interfaces, special headings |
| `#FE4646` | Blast Coral | Heat Flare | High-intensity bright accents |
| `#5468FF` | Electric Periwinkle | High-Voltage Spark | Blue syntax tokens, active link decoration |
| `#00E131` | Chemical Green | ANSI Green | Shell utility green, telemetry additions |

---

## Surface & Border Language

- Panels and bars use dark night-purple (`#26173E`) with subtle translucency (`0.80`–`0.85` opacity).
- Active window borders feature an authentic Reze gradient: `rgba(46416Aff) rgba(855E8Dee) rgba(94BA81cc) 45deg` (Slate Violet -> Lilac -> Sage Green).
- Inactive window borders use dark choker charcoal (`rgba(3E363399)`) to keep windows distinct without visual noise.
- Cursors use high-visibility sage green (`#94BA81`).
- Selections use high-contrast lavender-white (`#EFECF4`) with dark text (`#26173E`) or sage green text (`#94BA81`).

---

## Contrast & Accessibility

- Contrast ratio between primary text (`#EFECF4`) and background (`#26173E`) is **14.2:1** (exceeding WCAG AAA standards for all text sizes).
- Contrast ratio between peach text (`#F4DCCE`) and background (`#26173E`) is **11.5:1** (WCAG AAA compliant).
- Contrast ratio between selection fill (`#EFECF4`) and dark text (`#26173E`) is **14.2:1**.
- Comments (`#554B67`) against `#26173E` provide a comfortable, non-fatiguing contrast for secondary syntax elements.
