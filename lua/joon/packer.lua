-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use('neovim/nvim-lspconfig')

  -- use('hrsh7th/nvim-cmp')
  -- use('hrsh7th/cmp-buffer')          -- Buffer completions
  -- use('hrsh7th/cmp-path')            -- Path completions
  -- use('hrsh7th/cmp-nvim-lsp')        -- LSP completions
  -- use('hrsh7th/cmp-cmdline')         -- Command line completions
  use('mattn/emmet-vim')
  use {
    "saghen/blink.cmp",
    run = "cargo build --release"
  }

  -- Optional: snippet engine
  use('L3MON4D3/LuaSnip')
  -- use('saadparwaiz1/cmp_luasnip')
  --use('nvim-treesitter/playground')
end)


