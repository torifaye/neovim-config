-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {'windwp/nvim-ts-autotag', event = 'InsertEnter', after = 'nvim-treesitter'}
  use {'p00f/nvim-ts-rainbow', after = 'nvim-treesitter'}
  use {'tpope/vim-surround'}
  use {'windwp/nvim-autopairs', config = "require('config.autopairs')", after = 'nvim-cmp'}
  use {'folke/which-key.nvim', event = 'BufWinEnter', config = "require('config.whichkey')"}
  use {'norcalli/nvim-colorizer.lua', event = 'BufRead', config = "require('config.colorizer')"}
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead',
    config = "require('config.blankline')"
  }
  use {'numToStr/Comment.nvim', config = "require('config.comment')"}
  use {'mg979/vim-visual-multi'}
  use {
    'ggandor/leap.nvim',
    requires = {'tpope/vim-repeat'},
    config = function()
      require('leap').set_default_keymaps()
    end
  }
end)
