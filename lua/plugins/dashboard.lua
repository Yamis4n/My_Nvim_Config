local db = require("dashboard").setup({
  theme = 'doom',
  config = {
    week_header = {
      enable = true
    }, --your header
    center = {
      {
        icon = '>>-> ',
        icon_hl = "Title",
        desc = 'New File',
        desc_hl = 'String',
        key = 'n',
        keymap = 'SPC n',
        action = 'enew'
      },
      {
        icon = '>>-> ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'b',
        keymap = 'SPC ff',
        key_hl = 'Number',
        action = "Telescope find_files"
      },
      {
        icon = '>>-> ',
        icon_hl = "Title",
        desc = 'Quit',
        desc_hl = 'String',
        key = 'q',
        keymap = 'SPC qq',
        action = 'q!'
      },
    },
    footer = {"...thinking..."}  --your footer
  }
})

