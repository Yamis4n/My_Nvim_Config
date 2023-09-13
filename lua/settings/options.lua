-- Basic configuration for nvim:

local opt = vim.opt


-- Saves/loads changes automaticly 
opt.autochdir = true
opt.autoread  = true
opt.autowrite = true

-- Indentation and tabstop
opt.autoindent  = true
opt.breakindent = true
opt.expandtab   = true
opt.smartindent = true
opt.smarttab    = true
opt.tabstop     = 2
opt.shiftwidth  = 2
opt.softtabstop = 2


-- Search and syntax
opt.ignorecase = true
opt.incsearch  = true
opt.hlsearch   = false
opt.smartcase  = true
opt.syntax     = "on"


-- Cursor and mouse
opt.mouse      = 'a'
opt.mousehide  = true
opt.cursorline = true
opt.cursorlineopt = "number,line"

-- Viewing
opt.number         = true
opt.relativenumber = true
opt.scrolloff      = 8
opt.sidescrolloff  = 8
opt.wrap           = true
opt.splitbelow     = true
opt.splitright     = true
opt.termguicolors  = true









