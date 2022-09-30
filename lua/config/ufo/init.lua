vim.o.foldcolumn = '1'
vim.o.foldnestmax = '0'
vim.o.foldlevel = 99 -- Using ufo provider requires a large value to be used here
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

require('ufo').setup()
