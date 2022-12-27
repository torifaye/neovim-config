-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use {"catppuccin/nvim", as = "catppuccin"}
  use {"Shatur/neovim-ayu"}
  use {"savq/melange"}
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = "require('config.treesitter')"
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'nvim-treesitter/playground'
  use 'nvim-tree/nvim-web-devicons'
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'nvim-tree/nvim-web-devicons',
    config = "require('config.bufferline')"
  }
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons', 'MunifTanjim/nui.nvim'},
    config = "require('config.neo-tree')"
  }
  use {'windwp/nvim-ts-autotag', event = 'InsertEnter', after = 'nvim-treesitter'}
  use {'p00f/nvim-ts-rainbow', after = 'nvim-treesitter'}
  use {'tpope/vim-fugitive'}
  use {'tpope/vim-surround'}
  use {'windwp/nvim-autopairs', config = "require('config.autopairs')", after = 'nvim-cmp'}
  use {'folke/which-key.nvim', event = 'BufWinEnter', config = "require('config.whichkey')"}
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}},
    cmd = 'Telescope',
    config = "require('config.telescope')"
  }
  use {'nvim-telescope/telescope-fzy-native.nvim'}
  use {'neovim/nvim-lspconfig', config = "require('lsp')"}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/nvim-cmp'}
  use {
    'L3MON4D3/LuaSnip',
    tag = "v1.*",
    requires = {"rafamadriz/friendly-snippets"},
    config = "require('config.luasnip')"
  }
  use {'saadparwaiz1/cmp_luasnip'}
  use {'rafamadriz/friendly-snippets'}
  --  use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
  use {'onsails/lspkind-nvim'}
  use {'williamboman/mason.nvim', config = "require('config.mason')"}
  use {'williamboman/mason-lspconfig.nvim'}
  use {'norcalli/nvim-colorizer.lua', event = 'BufRead', config = "require('config.colorizer')"}
  use {'lewis6991/gitsigns.nvim', config = "require('config.gitsigns')"}
  -- use {'glepnir/dashboard-nvim', config = "require('config.dashboard')"}
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead',
    config = "require('config.blankline')"
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = {{'nvim-lua/plenary.nvim'}},
    config = "require('config.null-ls')"
  }
  use {"folke/zen-mode.nvim", config = "require('config.zen-mode')"}
  use {"folke/twilight.nvim", config = "require('config.twilight')"}
  use {'akinsho/toggleterm.nvim', tag = 'v2.*', config = "require('config.toggleterm')"}
  use {'numToStr/Comment.nvim', config = "require('config.comment')"}
  use {'lewis6991/impatient.nvim'}
  use {
    'folke/trouble.nvim',
    requires = "nvim-tree/nvim-web-devicons",
    config = "require('config.trouble')"
  }
  use {
    'ray-x/navigator.lua',
    requires = {{'ray-x/guihua.lua', run = 'cd lua/fzy && make'}, {'neovim/nvim-lspconfig'}},
    config = "require('config.navigator')"
  }
  use {'ray-x/lsp_signature.nvim', config = "require('config.lsp_signature')"}
  -- use { 'glepnir/lspsaga.nvim', branch = "main", config = "require('config.lspsaga')" }
  use {'mg979/vim-visual-multi'}
  use {
    'ggandor/leap.nvim',
    requires = {'tpope/vim-repeat'},
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
  use {
    'rmagatti/session-lens',
    requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
    config = "require('config.sessions')"
  }
  use 'famiu/bufdelete.nvim'
  use {
    'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async',
    config = "require('config.ufo')"
  }
  use {
    'anuvyklack/windows.nvim',
    requires = {"anuvyklack/middleclass", "anuvyklack/animation.nvim"},
    config = "require('config.windows')"
  }
  use {'mfussenegger/nvim-dap'}
  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter", "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-plenary", "jfpedroza/neotest-elixir"
    },
    config = "require('config.neotest')"
  }
  use {
    'rebelot/heirline.nvim',
    config = "require('config.heirline')",
    requires = {'nvim-tree/nvim-web-devicons'}
  }
  -- use {
  --   'folke/noice.nvim',
  --   requires = {"MunifTanjim/nui.nvim", "rcarriga/nvim-notify", "hrsh7th/nvim-cmp"},
  --   config = "require('config.noice')",
  --   cond = vim.g.neovide == nil and vim.g.vscode == nil
  -- }
  use {'j-hui/fidget.nvim', config = "require('config.fidget')"}
  use {'folke/tokyonight.nvim'}
  use {'tamton-aquib/duck.nvim', config = "require('config.duck')"}
  use {'mrjones2014/smart-splits.nvim', config = "require('config.smart_splits')"}
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = "require('config.diffview')"
  }
  use {
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
    config = "require('config.neogit')"
  }
  use {'ggandor/flit.nvim', requires = {'ggandor/leap.nvim'}, config = "require('config.flit')"}
  use {
    'lazytanuki/nvim-mapper',
    config = function()
      require('nvim-mapper').setup {}
    end,
    before = 'telescope.nvim'
  }
end)
