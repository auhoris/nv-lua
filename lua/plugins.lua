local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'


if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Lsp and autocomplete
  use 'neovim/nvim-lspconfig'
  use 'anott03/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'
  use 'glepnir/lspsaga.nvim'
  use 'norcalli/snippets.nvim'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'onsails/lspkind-nvim'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Colorschemes
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'ayu-theme/ayu-vim'
  use 'yonlu/omni.vim'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- UI
  use 'glepnir/galaxyline.nvim'
  use 'romgrk/barbar.nvim'
  use 'kyazdani42/nvim-web-devicons'
--  use 'kyazdani42/nvim-tree.lua'

-- General
  use 'b3nj5m1n/kommentary'
  use 'windwp/nvim-autopairs'
  use 'phaazon/hop.nvim'
  use 'mhinz/vim-startify'
  use 'brooth/far.vim'

-- Something for git
  use 'lewis6991/gitsigns.nvim'

end)
