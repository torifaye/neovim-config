-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "Shatur/neovim-ayu" }
  use { "savq/melange" }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = "require('config.treesitter')"
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'nvim-treesitter/playground'
  use {
    'tamton-aquib/staline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = "require('config.staline')"
  }
  -- using packer.nvim
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
    config = "require('config.bufferline')"
  }
  -- use {
  --   'kyazdani42/nvim-tree.lua',
  --   requires = {
  --     'kyazdani42/nvim-web-devicons' -- optional, for file icons
  --   },
  --   tag = 'nightly', -- optional, updated every week. (see issue #1193)
  --   config = "require('config.nvim-tree')"
  -- }
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = { 'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons', 'MunifTanjim/nui.nvim' },
    config = "require('config.neo-tree')"
  }
  use { 'windwp/nvim-ts-autotag', event = 'InsertEnter', after = 'nvim-treesitter' }
  use { 'p00f/nvim-ts-rainbow', after = 'nvim-treesitter' }
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-surround' }
  use { 'windwp/nvim-autopairs', config = "require('config.autopairs')", after = 'nvim-cmp' }
  use { 'folke/which-key.nvim', event = 'BufWinEnter', config = "require('config.whichkey')" }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    cmd = 'Telescope',
    config = "require('config.telescope')"
  }
  use { 'https://github.com/nvim-telescope/telescope-fzy-native.nvim' }
  use { 'neovim/nvim-lspconfig', config = "require('lsp')" }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-vsnip' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
  use { 'onsails/lspkind-nvim' }
  use { 'williamboman/mason.nvim', config = "require('config.mason')" }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'norcalli/nvim-colorizer.lua', event = 'BufRead', config = "require('config.colorizer')" }
  use { 'lewis6991/gitsigns.nvim', config = "require('config.gitsigns')" }
  use { 'glepnir/dashboard-nvim', config = "require('config.dashboard')" }
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead',
    config = "require('config.blankline')"
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = "require('config.null-ls')"
  }
  use { "folke/zen-mode.nvim", config = "require('config.zen-mode')" }
  use { "folke/twilight.nvim", config = "require('config.twilight')" }
  use { 'akinsho/toggleterm.nvim', tag = 'v2.*', config = "require('config.toggleterm')" }
  use { 'numToStr/Comment.nvim', config = "require('config.comment')" }
  use { 'lewis6991/impatient.nvim' }
  use {
    'folke/trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons",
    config = "require('config.trouble')"
  }
  use {
    'RobertYost/navigator.lua',
    requires = { { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' }, { 'neovim/nvim-lspconfig' } },
    config = "require('config.navigator')"
  }
  -- use {
  --   'mhanberg/elixir.nvim',
  --   requires = {
  --     'neovim/nvim-lspconfig',
  --     'nvim-lua/plenary.nvim'
  --   },
  --   config = "require('config.languages')"
  -- }
  use { 'mg979/vim-visual-multi' }
  use {
    'ggandor/leap.nvim',
    requires = { 'tpope/vim-repeat' },
    config = function()
      require('leap').set_default_keymaps()
    end
  }
  use {
    'luukvbaal/stabilize.nvim',
    config = function()
      require('stabilize').setup()
    end
  }
  use { 'rmagatti/auto-session', config = "require('config.sessions')" }
  use {
    'rmagatti/session-lens',
    requires = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' }
  }
  use 'famiu/bufdelete.nvim'
end)
