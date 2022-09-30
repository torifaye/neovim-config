-- Highlight text selection/object when yanking
vim.cmd [[
  augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup=(vim.fn['hlexists']('HighlightedyankRegion') > 0 and 'HighlightedyankRegion' or 'IncSearch'), timeout=500}
  augroup END
]]

-- Disable guihua for autocompletion
vim.cmd("autocmd FileType guihua lua require('cmp').setup.buffer { enabled = false }")
vim.cmd("autocmd FileType guihua_rust lua require('cmp').setup.buffer { enabled = false }")
