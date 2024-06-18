-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- OnlyPlug  required if you have Plug acker configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
	  'craftzdog/solarized-osaka.nvim',
	  as = 'solarized-osaka',
	  config = function()
		  vim.cmd('colorscheme solarized-osaka')
	  end
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
end)
