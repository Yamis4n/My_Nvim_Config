
local lualine = require("lualine")

function ChooseTheme()

    local theme  = "dark"
    vim.ui.select({"dracula (dark)", "catppuccin-mocha (dark)", "tokyonight (dark)", "gruvbox (dark)",
                   "gruvbox (light)", "catppuccin-latte (light)", nil}, {prompt = "Select: "}, function (item, idx) theme = item end)

  if (theme == "dracula (dark)") then
    vim.o.background = "dark"
    vim.cmd.colorscheme("dracula")
    lualine.setup({options={theme = "dracula"}})

  elseif (theme == "catppuccin-mocha (dark)") then
    vim.o.background = "dark"
    vim.cmd.colorscheme("catppuccin-mocha")
    lualine.setup({options={theme = "auto"}})
  
  elseif (theme == "tokyonight (dark)") then
    vim.o.background = "dark"
    vim.cmd.colorscheme("tokyonight")
    lualine.setup({options={theme = "auto"}})
  
  elseif (theme == "gruvbox (dark)") then
    vim.o.background = "dark"
    vim.cmd.colorscheme("gruvbox")
    lualine.setup({options={theme = "gruvbox-dark"}})

  elseif (theme == "gruvbox (light)") then
    vim.o.background = "light"
    vim.cmd.colorscheme("gruvbox")
    lualine.setup({options={theme = "gruvbox-light"}})

  elseif (theme == "catppuccin-latte (light)") then
    vim.o.background = "light"
    vim.cmd.colorscheme("catppuccin-latte")
    lualine.setup({options={theme = "auto"}})

  end
end
