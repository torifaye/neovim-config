function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend("force", options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('i', 'jk', '<Esc>')
map('', '<Space>', '<Nop>')
map("n", "<Leader>sv", ":source $MYVIMRC<CR>")
map('n', "\\", ':Neotree reveal<cr>')
map("n", "<C-J>", "<C-W><C-J>")
map("n", "<C-K>", "<C-W><C-K>")
map("n", "<C-L>", "<C-W><C-L>")
map("n", "<C-H>", "<C-W><C-H>")
map("n", "tn", ":tabnext<cr>")
map("n", "tp", ":tabprevious<cr>")
map("n", "tt", ":ToggleTerm dir=. direction=tab<cr>")
map("t", "<C-N>", "<C-\\><C-n>")
map('v', '<', '<gv')
map('v', '>', '>gv')
