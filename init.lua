vim.g.mapleader = " "
require('impatient').enable_profile()
require('plugins')
require('keybinds')
require('options')
require('catppuccin').setup()
vim.g.catppuccin_flavour = "macchiato"
-- require('lsp-configs.elixir')
vim.cmd [[colorscheme catppuccin]]
