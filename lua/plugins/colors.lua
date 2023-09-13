COLORS = {"catppuccin-latte", "catppuccin-frappe", "catppuccin-macchiato", "catppuccin-mocha", "tokyonight", "gruvbox", "dracula"}

local lualine = require("lualine")

function ChooseTheme(theme)
  theme = theme or "dark"

  if (theme == "dark") then
    vim.o.background = "dark"
    vim.cmd.colorscheme("dracula")
    lualine.setup({options={theme = "dracula"}})
  end
  if (theme == "light") then
    vim.o.background = "light"
    vim.cmd.colorscheme("gruvbox")
    lualine.setup({options={theme = "gruvbox_light"}})
  end
end



function Colorize(color)
  color = color or 4
  vim.cmd.colorscheme(COLORS[color])
end

function ShowColors()
  for color = 1, #COLORS, 1 do
    print(color,"-", COLORS[color])
  end
end

ChooseTheme()
