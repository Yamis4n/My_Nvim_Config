-- Some keybinds for Nvim usage

-- vim.keymap.set({mode}, {keybind}, {command})

local keymap    = vim.keymap
vim.g.mapleader = ' '

-- Save and exit
keymap.set('n', '<leader>ww', ':w<cr>')
keymap.set("n", "<leader>wq", ":wq<cr>")
keymap.set("n", "<leader>qq", ":q!<cr>")
keymap.set("n", "<leader>ss", ":source %<cr>")

-- Copy and Paste
keymap.set({'n', 'x'}, '<leader>cp', '"+y')
keymap.set({'n', 'x'}, '<leader>cv', '"+p')


-- Select all
keymap.set('n', '<leader>aa', 'ggVG')

-- Splits:
keymap.set("n", "<leader>v", ":vsplit<cr>")
keymap.set("n", "<leader>h", ":split<cr>")
keymap.set("n", "<leader>j", "<C-w>h")
keymap.set("n", "<leader>i", "<C-w>k")
keymap.set("n", "<leader>k", "<C-w>j")
keymap.set("n", "<leader>l", "<C-w>l")


