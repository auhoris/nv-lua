local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'


if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

-- vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function()
-- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

-- Debug
  --[[ use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'puremourning/vimspector' ]]

-- LSP
  use 'neovim/nvim-lspconfig'
  use { 'tami5/lspsaga.nvim' }
  use { 'ray-x/lsp_signature.nvim'}
  use { 'rmagatti/goto-preview' }
  use {'kevinhwang91/nvim-bqf'}
--LSP installer
  use { "williamboman/mason.nvim" }
  use { 'stevearc/aerial.nvim' }
  -- use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}}
  -- rust
  use 'simrat39/rust-tools.nvim'

-- Completion and snippets
  use {'hrsh7th/nvim-cmp',
      requires = {
		"hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"hrsh7th/cmp-path",
		'L3MON4D3/LuaSnip',
		"saadparwaiz1/cmp_luasnip",
      }}

-- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'romgrk/nvim-treesitter-context' }

-- Colorschemes
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'sainnhe/gruvbox-material'
  use 'tanvirtin/monokai.nvim'

-- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim',
	  run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }

-- Fzf
  --[[ use { 'ibhagwan/fzf-lua', -- optional for icon support
	  requires = { 'kyazdani42/nvim-web-devicons' }
  } ]]

-- UI
  use 'romgrk/barbar.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'glepnir/dashboard-nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'hoob3rt/lualine.nvim'
  use { 'xiyaowong/nvim-transparent' }
  use { 'sunjon/shade.nvim' }

-- General
  use 'b3nj5m1n/kommentary'
  use 'windwp/nvim-autopairs'
  use 'phaazon/hop.nvim'
  use 'brooth/far.vim'
  use 'akinsho/toggleterm.nvim'
  use { 'cappyzawa/trim.nvim' }

-- Something for git
  use 'lewis6991/gitsigns.nvim'
  use {'f-person/git-blame.nvim'}

end)
