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
  use 'mfussenegger/nvim-dap'
  use 'puremourning/vimspector'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'

  -- Linters and formatters
  use 'mindriot101/vim-yapf'
  use 'nvie/vim-flake8'
  use 'sbdchd/neoformat'    -- Clang formatter
  use 'rhysd/vim-clang-format'

  -- Python
  --[[ use {'Shougo/deoplete.nvim', run = ':UpdateRemotePlugins' }
  use 'roxma/nvim-yarp'
  use 'roxma/vim-hug-neovim-rpc' ]]
  -- use 'davidhalter/jedi-vim'

  -- Completion and snippets
  use {'hrsh7th/nvim-cmp', 
      requires = {
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
        "saadparwaiz1/cmp_luasnip",
        "L3MON4D3/LuaSnip",
        "quangnguyen30192/cmp-nvim-ultisnips",
      }}
  use 'honza/vim-snippets'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'hrsh7th/cmp-vsnip'
  use 'SirVer/ultisnips'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Colorschemes
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'sainnhe/gruvbox-material'
  use 'mhartington/oceanic-next'
  use 'sainnhe/sonokai'
  use 'RRethy/nvim-base16'
  use 'Th3Whit3Wolf/one-nvim'
  use 'tanvirtin/monokai.nvim'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- UI
  use 'romgrk/barbar.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'glepnir/dashboard-nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'hoob3rt/lualine.nvim'

-- General
  use 'b3nj5m1n/kommentary'
  use 'windwp/nvim-autopairs'
  use 'phaazon/hop.nvim'
  use 'mhinz/vim-startify'
  use 'brooth/far.vim'
  use 'voldikss/vim-floaterm'
  use '42Paris/42header'
  use 'akinsho/toggleterm.nvim'
  -- use 'pbondoer/vim-42header'

-- Something for git
  use 'lewis6991/gitsigns.nvim'

end)
