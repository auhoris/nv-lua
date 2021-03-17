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
  use 'hrsh7th/nvim-compe'
  use 'glepnir/lspsaga.nvim'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Colorschemes
  use 'christianchiarulli/nvcode-color-schemes.vim'
--  use 'norcalli/nvim-colorizer.lua'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- galaxyline
  use 'glepnir/galaxyline.nvim'
--  use 'kyazdani42/nvim-tree.lua'

  use 'akinsho/nvim-bufferline.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'windwp/nvim-autopairs'

  use 'nvim-lua/plenary.nvim'
  use 'lewis6991/gitsigns.nvim'
end)
