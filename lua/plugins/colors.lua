COLORS = {"catppuccin-latte", "catppuccin-frappe", "catppuccin-macchiato", "catppuccin-mocha", "tokyonight", "gruvbox", "dracula"}

local lualine = require("lualine")

function ChooseTheme(theme)

  theme = theme or "dark"
  theme = string.lower(theme)

  if (theme == "dark") then
    vim.o.background = "dark"
    vim.cmd.colorscheme("dracula")
    lualine.setup({options={theme = "dracula"}})
  elseif (theme == "light") then
    vim.o.background = "light"
    vim.cmd.colorscheme("gruvbox")
    lualine.setup({options={theme = "gruvbox_light"}})
  
  else
    print("Please choose one of this themes:")
    print("   - Light")
    print("   - Dark")
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
