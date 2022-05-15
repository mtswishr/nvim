local vim = vim

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end


vim.cmd('packadd packer.nvim')

local packer = require'packer'
local util = require'packer.util'


packer.startup(function(use)

  use 'wbthomason/packer.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'morhetz/gruvbox'
  use 'kyazdani42/nvim-web-devicons' 
  use 'nvim-lua/plenary.nvim'
  use "BurntSushi/ripgrep"
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-cmdline'
  use 'onsails/lspkind-nvim'
  use 'ray-x/go.nvim'

  use {
	  'nvim-lualine/lualine.nvim',
	  require = { 'kyazdani42/nvim-web-devicons', opt = true },
	  config = [[ require('config.lualine') ]]
  }

  use {
	  'neovim/nvim-lspconfig',
	  config = [[ require('config.lspconfig') ]]
  }

  use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} } ,
	  config = [[ require('config.telescope') ]]
  }

  use {
          'L3MON4D3/LuaSnip',
          config = [[ require('config.luasnips') ]]
  }

  use {
          'hrsh7th/nvim-cmp',
          config = [[ require('config.completion') ]]
  }

  use { 
          'startup-nvim/startup.nvim',
          config = [[ require('config.startup') ]]
  }

end
)
