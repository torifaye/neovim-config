local wk = require('which-key')
local mappings = {
  q = {":q<cr>", "Quit"},
  Q = {":wq<cr>", "Save and Quit"},
  w = {":w<cr>", "Save"},
  x = {":bdelete<cr>", "Close"},
  E = {":e ~/.config/nvim/init.lua", "Edit Root Config"}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
