-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "--single-branch",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.runtimepath:prepend(lazypath)

local plugins = {
  {
    'catppuccin/nvim',
    config = function()
      require('catppuccin').setup()
    end
  }, 'Shatur/neovim-ayu', 'folke/tokyonight.nvim',
  {'nvim-treesitter/nvim-treesitter-context', lazy = true},
  'nvim-treesitter/nvim-treesitter-textobjects', {
    'nvim-treesitter/nvim-treesitter',
    cmd = 'TSUpdate',
    config = function()
      require('config.treesitter')
    end
  }, {
    'akinsho/bufferline.nvim',
    config = function()
      require('config.bufferline')
    end
  }, {
    'akinsho/toggleterm.nvim',
    config = function()
      require('config.toggleterm')
    end
  }, {
    'nvim-neo-tree/neo-tree.nvim',
    dependencies = {'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons', 'MunifTanjim/nui.nvim'},
    config = function()
      require('config.neo-tree')
    end
  }, {
    'mrjones2014/smart-splits.nvim',
    config = function()
      require('config.smart_splits')
    end
  }, {
    'folke/which-key.nvim',
    event = 'BufWinEnter',
    dependencies = {'mrjones2014/legendary.nvim'},
    config = function()
      require('config.whichkey')
    end
  }, {'windwp/nvim-ts-autotag', event = 'InsertEnter'}, {
    'windwp/nvim-autopairs',
    config = function()
      require('config.autopairs')
    end
  }, 'p00f/nvim-ts-rainbow', {
    'nvim-telescope/telescope.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    cmd = 'Telescope',
    config = function()
      require('config.telescope')
    end
  }, 'nvim-telescope/telescope-fzy-native.nvim',
  {'nvim-telescope/telescope-frecency.nvim', dependencies = {'kkharji/sqlite.lua'}}, {
    'neovim/nvim-lspconfig',
    config = function()
      require('lsp')
    end
  }, 'tpope/vim-repeat', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline', 'hrsh7th/nvim-cmp', 'hrsh7th/cmp-nvim-lua', 'rafamadriz/friendly-snippets',
  {
    'L3MON4D3/LuaSnip',
    dependencies = {'rafamadriz/friendly-snippets'},
    config = function()
      require('config.luasnip')
    end
  }, 'saadparwaiz1/cmp_luasnip', 'onsails/lspkind-nvim', {
    'williamboman/mason.nvim',
    config = function()
      require('config.mason')
    end
  }, 'williamboman/mason-lspconfig.nvim', {
    'norcalli/nvim-colorizer.lua',
    event = 'BufRead',
    config = function()
      require('config.colorizer')
    end
  }, {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('config.gitsigns')
    end
  }, {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead',
    config = function()
      require('config.blankline')
    end
  }, {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
      require('config.null-ls')
    end
  }, {
    'folke/trouble.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
      require('config.trouble')
    end
  }, {
    'ray-x/navigator.lua',
    dependencies = {{'ray-x/guihua.lua', build = 'cd lua/fzy && make'}, 'neovim/nvim-lspconfig'},
    config = function()
      require('config.navigator')
    end
  }, {
    'ray-x/lsp_signature.nvim',
    config = function()
      require('config.lsp_signature')
    end
  }, {
    'ggandor/leap.nvim',
    dependencies = {'tpope/vim-repeat'},
    config = function()
      require('leap').set_default_keymaps()
    end
  }, {
    'ggandor/flit.nvim',
    dependencies = {'ggandor/leap.nvim'},
    config = function()
      require('config.flit')
    end
  }, {
    'luukvbaal/stabilize.nvim',
    config = function()
      require('stabilize').setup()
    end
  }, 'famiu/bufdelete.nvim', {
    'rebelot/heirline.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
      require('config.heirline')
    end
  }, {
    'anuvyklack/windows.nvim',
    dependencies = {'anuvyklack/middleclass', 'anuvyklack/animation.nvim'},
    config = function()
      require('config.windows')
    end
  }, {
    'kevinhwang91/nvim-ufo',
    dependencies = {'kevinhwang91/promise-async'},
    config = function()
      require('config.ufo')
    end
  }, 'mfussenegger/nvim-dap', {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter', 'antoinemadec/FixCursorHold.nvim',
      'nvim-neotest/neotest-plenary', 'jfpedroza/neotest-elixir'
    },
    config = function()
      require('config.neotest')
    end
  }, {
    'TimUntersberger/neogit',
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
      require('config.neogit')
    end
  }, {
    'sindrets/diffview.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
      require('config.diffview')
    end
  }, {'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu'}, {
    'folke/noice.nvim',
    dependencies = {'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify'},
    config = function()
      require('config.noice')
    end
  }, {
    'mrjones2014/legendary.nvim',
    dependencies = {'kkharji/sqlite.lua'},
    config = function()
      require('config.legendary')
    end
  }, {
    'numToStr/Comment.nvim',
    config = function()
      require('config.comment')
    end
  }
}
local opts = {}

require('lazy').setup(plugins, opts)
