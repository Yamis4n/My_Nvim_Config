require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local keymap = vim.keymap

keymap.set('n','<leader>ee',':NvimTreeToggle<cr>')
keymap.set('n', '<leader>ef', ':NvimTreeFocus<cr>')
