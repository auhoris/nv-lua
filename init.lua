-- imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"
-- Main settings
require('plugins')
require('keymappings')
require('colorscheme')
require('settings')
--
---- plugins
require('nv-compe')
require('nv-treesitter')
require('nv-telescope')
require('nv-gitsigns')
require('nv-barbar')
require('nv-autopairs')
require('nv-kommentary')
require('nv-hop')
require('nv-lspkind')
require('nv-startify')
require('nv-ultisnips')
require('nv-floaterm')
require('nv-deoplete')
require('nv-dashboard')
require('nv-nvimtree')
require('nv-toggleterm')
require('nv-lualine')

-- vim scripts
vim.cmd('source ~/.config/nvim/vimscript/42header.vim')
-- vim.cmd('source ~/.config/nvim/vimscript/python.vim')
vim.cmd('packadd! gruvbox-material')

-- Debug
require('nv-dapconfig')
require('nv-dapconfig.my_debug')
require('nv-dapconfig.mappings')
-- require('nv-dapconfig.lldbconfig')
--
--lsp
require('lsp')
-- require('lsp.clangd-ls')
require('lsp.python-ls')
--require('lsp.lua-ls')
