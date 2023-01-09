local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend("force", options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Mapper = require('nvim-mapper')

map('i', 'jk', '<Esc>')
map('', '<Space>', '<Nop>')
map("n", "<Leader>sv", ":source $MYVIMRC<CR>")
map('n', "\\", ':Neotree reveal<cr>')
-- map("n", "<C-J>", "<C-W><C-J>")
-- map("n", "<C-K>", "<C-W><C-K>")
-- map("n", "<C-L>", "<C-W><C-L>")
-- map("n", "<C-H>", "<C-W><C-H>")
map("n", "tn", ":tabnext<cr>")
map("n", "tp", ":tabprevious<cr>")
map("n", "tt", ":ToggleTerm dir=. direction=tab<cr>")
map("n", "<C-D>", "<C-D>zz")
map("n", "<C-U>", "<C-U>zz")
map("t", "<C-N>", "<C-\\><C-n>")
map('v', '<', '<gv')
map('v', '>', '>gv')

-- smart-splits.nvim
-- recommended mappings
-- resizing splits
vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
-- moving between splits
vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
