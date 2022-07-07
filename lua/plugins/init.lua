-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use { 'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = "require('treesitter-config')"
  }
  use {
    'tamton-aquib/staline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = "require('staline-config')"
  }
  -- using packer.nvim
  use { 'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
    config = "require('bufferline-config')"
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = "require('nvim-tree-config')"
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
    config = "require('autopairs-config')",
    after = 'nvim-cmp'
  }
  use {
    'folke/which-key.nvim',
    event = 'BufWinEnter', config = "require('whichkey-config')"
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    cmd = 'Telescope', config = "require('telescope-config')"
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
    event = 'BufRead', config = "require('colorizer-config')"
  }
  use {
    'lewis6991/gitsigns.nvim',
    config = "require('gitsigns-config')"
  }
  use {
    'glepnir/dashboard-nvim',
    config = "require('dashboard-config')"
  }
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead', config = "require('blankline-config')"
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = "require('null-ls-config')"
  }
  use { "folke/zen-mode.nvim", config = "require('zen-mode-config')" }
  use { "folke/twilight.nvim", config = "require('twilight-config')" }
  use {
    'akinsho/toggleterm.nvim',
    tag = 'v2.*',
    config = "require('toggleterm-config')"
  }
  use {
    'numToStr/Comment.nvim',
    config = "require('comment-config')"
  }
  use {
    'lewis6991/impatient.nvim'
  }
  use {
    'glepnir/lspsaga.nvim',
    branch = 'main',
    config = "require('lspsaga-config')"
  }
end)
