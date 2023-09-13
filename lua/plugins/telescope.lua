local keymap = vim.keymap

keymap.set('n', '<leader><space>', '<cmd>Telescope buffers<cr>')
keymap.set('n', '<leader>?', '<cmd>Telescope oldfiles<cr>')
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
keymap.set('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>')
keymap.set('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>')

