-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use 'folke/tokyonight.nvim'

  use('vv9k/vim-github-dark')

  use({
    'tomasiser/vim-code-dark',
    config = function()
      -- vim.cmd('colorscheme codedark')
    end
  })

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      require("rose-pine").setup()
      --vim.cmd('colorscheme rose-pine')
    end
  })

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'nvim-treesitter/playground'

  -- Harpoon
  use('theprimeagen/harpoon')

  -- Undotree
  use('mbbill/undotree')

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }
-- Zen Mode
use {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

  use 'janko-m/vim-test'
  use 'pangloss/vim-javascript'
  use 'pbrisbin/vim-mkdir'
  use 'slim-template/vim-slim'
  use 'tpope/vim-bundler'
  use 'tpope/vim-endwise'
  use 'tpope/vim-eunuch'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-projectionist'
  use 'tpope/vim-rails'
  use 'tpope/vim-rake'
  use 'tpope/vim-repeat'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-surround'
  use 'vim-ruby/vim-ruby'
  use 'vim-scripts/tComment'
  use 'ngmy/vim-rubocop'
  use 'thoughtbot/vim-rspec'
  use 'christoomey/vim-tmux-runner'
  use 'christoomey/vim-tmux-navigator'
  use 'github/copilot.vim'
end)



  -- use({
  --   'rose-pine/neovim',
  --   as = 'rose-pine',
  --   config = function()
  --     require("rose-pine").setup()
  --     vim.cmd('colorscheme rose-pine')
  --   end
  -- })
  --
  -- use({
  --   'folke/tokyonight.nvim',
  --   config = function()
  --     vim.cmd('colorscheme tokyonight')
  --     require("tokyonight").setup({
  --       -- use the night style
  --       -- style = "night",
  --       -- disable italic for functions
  --       -- styles = {
  --       --   functions = {}
  --       -- },
  --       -- sidebars = { "qf", "vista_kind", "terminal", "packer" },
  --
  --       -- change the background color to match terminal
  --       on_colors = function(colors)
  --         colors.bg = "#1d1d1d"
  --         colors.bg_dark = "#1d1d1d"
  --       end,
  --     })
  --   end
  -- })

  -- use ({
  --   'nanotech/jellybeans.vim',
  --   config = function()
  --     vim.cmd('colorscheme jellybeans')
  --   end
  -- })
