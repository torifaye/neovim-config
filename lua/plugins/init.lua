-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use { 'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = "require('config.treesitter')"
  }
  use {
    'tamton-aquib/staline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = "require('config.staline')"
  }
  -- using packer.nvim
  use { 'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
    config = "require('config.bufferline')"
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = "require('config.nvim-tree')"
  }
  use {
    'windwp/nvim-ts-autotag',
    event = 'InsertEnter',
    after = 'nvim-treesitter'
  }
  use {
    'p00f/nvim-ts-rainbow',
    after = 'nvim-treesitter'
  }
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-surround' }
  use {
    'windwp/nvim-autopairs',
    config = "require('config.autopairs')",
    after = 'nvim-cmp'
  }
  use {
    'folke/which-key.nvim',
    event = 'BufWinEnter', config = "require('config.whichkey')"
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    cmd = 'Telescope', config = "require('config.telescope')"
  }
  use { 'neovim/nvim-lspconfig', config = "require('lsp')" }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-vsnip' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'onsails/lspkind-nvim' }
  use { 'williamboman/nvim-lsp-installer' }
  use {
    'norcalli/nvim-colorizer.lua',
    event = 'BufRead', config = "require('config.colorizer')"
  }
  use {
    'lewis6991/gitsigns.nvim',
    config = "require('config.gitsigns')"
  }
  use {
    'glepnir/dashboard-nvim',
    config = "require('config.dashboard')"
  }
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead', config = "require('config.blankline')"
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = "require('config.null-ls')"
  }
  use { "folke/zen-mode.nvim", config = "require('config.zen-mode')" }
  use { "folke/twilight.nvim", config = "require('config.twilight')" }
  use {
    'akinsho/toggleterm.nvim',
    tag = 'v2.*',
    config = "require('config.toggleterm')"
  }
  use {
    'numToStr/Comment.nvim',
    config = "require('config.comment')"
  }
  use {
    'lewis6991/impatient.nvim'
  }
  use {
    'glepnir/lspsaga.nvim',
    branch = 'main',
    config = "require('config.lspsaga')"
  }
end)
