local wk = require('which-key')
local mappings = {
  q = {':q<CR>', 'Quit'},
  Q = {':wq<CR>', 'Save and Quit'},
  w = {':w<CR>', 'Save'},
  x = {':bdelete<CR>', 'Close'},
  E = {':e ~/.config/nvim/init.lua<CR>', 'Edit Root Config'},
  f = {':Telescope find_files<CR>', 'Find'},
  r = {':Telescope live_grep<CR>', 'Grep'}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
