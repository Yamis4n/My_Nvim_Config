local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  -- You can "comment out" the line below after lazy.nvim is installed
  lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)
  require('lazy').setup(plugins, lazy.opts)
end 


lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
  
  {"folke/tokyonight.nvim"},   -- Colorschemes
  {"catppuccin/nvim"},
  {"ellisonleao/gruvbox.nvim"},
  {"Mofiqul/dracula.nvim"},

  {'nvim-treesitter/nvim-treesitter'}, -- colors to my text

  { 
    'stevearc/dressing.nvim',
    opts = {},
  },

  {'nvim-lualine/lualine.nvim'},

  {'kyazdani42/nvim-web-devicons'},  -- icons for nvim tree
  {'kyazdani42/nvim-tree.lua'}, -- File explorer

  { -- Telescope
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = {'nvim-lua/plenary.nvim'}
  },
  {'m4xshen/autoclose.nvim'}, -- autoclose {[("''")]}
  {
    "VonHeikemen/lsp-zero.nvim",
    banch = "v2.x",
    dependencies = {
      -- Lsp Support
      {"neovim/nvim-lspconfig"},
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},
      {"hrsh7th/cmp-nvim-lsp"},
      {"L3MON4D3/LuaSnip"},
    }
  }
})


