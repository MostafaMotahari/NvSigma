vim.opt.termguicolors = true
local bufferline = require('bufferline')
bufferline.setup {
  options={
    style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        separator = true -- use a "true" to enable the default, or set your own character
      }
    }
  }
}

-- Keymaps
vim.keymap.set('n', '<s-h>', ':bprev<CR>')
vim.keymap.set('n', '<s-l>', ':bnext<CR>')
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<c-b>', ':bdelete<CR>')
