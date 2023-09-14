
local lualine = require("lualine")

local THEMES = {"(dark)  dracula;", "(dark)  catppuccin-mocha;", "(dark)  tokyonight;", "(dark)  gruvbox;", "(light) gruvbox;", "(light) catppuccin-latte;", nil}

function ChooseTheme()
    vim.ui.select( THEMES, {prompt = "Choose what theme you want to use: "}, function (item, idx) SelectingTheme(item) end)
end

function SelectingTheme(theme)

  if (theme == THEMES[1]) then
    vim.o.background = "dark"
    vim.cmd.colorscheme("dracula")
    lualine.setup({options={theme = "dracula"}})

  elseif (theme == THEMES[2]) then
    vim.o.background = "dark"
    vim.cmd.colorscheme("catppuccin-mocha")
    lualine.setup({options={theme = "auto"}})

  elseif (theme == THEMES[3]) then
    vim.o.background = "dark"
    vim.cmd.colorscheme("tokyonight")
    lualine.setup({options={theme = "auto"}})

  elseif (theme == THEMES[4]) then
    vim.o.background = "dark"
    vim.cmd.colorscheme("gruvbox")
    lualine.setup({options={theme = "gruvbox"}})

  elseif (theme == THEMES[5]) then
    vim.o.background = "light"
    vim.cmd.colorscheme("gruvbox")
    lualine.setup({options={theme = "gruvbox"}})

  elseif (theme == THEMES[6]) then
    vim.o.background = "light"
    vim.cmd.colorscheme("catppuccin-latte")
    lualine.setup({options={theme = "auto"}})

  else
    print(theme)
    vim.o.background = "dark"
    vim.cmd.colorscheme("gruvbox")
    lualine.setup({options={theme = "auto"}})

  end
end


SelectingTheme(THEMES[5])




