vim.g.mapleader = " "
require('keybinds')
require('plugins')
require('options')
require('treesitter-config')
require('lualine-config')
require('bufferline-config')
require('nvim-tree-config')
require('autopairs-config')
require('whichkey-config')
require('telescope-config')
require('nvim-lsp-installer-config')
require('colorizer-config')
require('gitsigns-config')
require('lsp')
require('catppuccin').setup()
vim.g.catppuccin_flavour = "macchiato"
-- require('lsp-configs.elixir')
vim.cmd[[colorscheme catppuccin]]

