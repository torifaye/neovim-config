vim.g.mapleader = " "
require('impatient').enable_profile()
require('plugins')
require('keybinds')
require('options')
-- require('catppuccin').setup()
-- vim.g.catppuccin_flavour = "macchiato"
require('ayu').setup({ mirage = true })
vim.cmd [[colorscheme ayu]]
