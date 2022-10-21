vim.keymap.set('n', '<leader>du', function()
  require("duck").hatch('ඞ')
end, {})

vim.keymap.set('n', '<leader>dk', function()
  require("duck").cook()
end, {})
