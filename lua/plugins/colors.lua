COLORS = {"catppuccin-latte", "catppuccin-frappe", "catppuccin-macchiato", "catppuccin-mocha", "tokyonight", "gruvbox", "dracula"}

local lualine = require("lualine")

function ChooseTheme()

    local theme  = "dark"
    vim.ui.select({"dark-default", "light-default", "catppuccin-latte", nil}, {prompt = "Select: "}, function (item, idx) theme = item end)
--  theme = theme or "dark"
 -- theme = string.lower(theme)

 print(theme)
  if (theme == "dark-default") then
    vim.o.background = "dark"
    vim.cmd.colorscheme("dracula")
    lualine.setup({options={theme = "auto"}})
  elseif (theme == "light-default") then
    vim.o.background = "light"
    vim.cmd.colorscheme("gruvbox")
    lualine.setup({options={theme = "auto"}})
  
  else
    vim.o.background = "light"
    vim.cmd.colorscheme("catppuccin-latte")
    lualine.setup({options={theme = "auto"}})
  
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
