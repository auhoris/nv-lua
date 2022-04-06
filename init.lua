-- imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"
-- Main settings

--lsp
require('lsp')
-- require('lsp.saga') -- works slow
require('lsp.goto_prev')
require('lsp.lua-ui')
--require('nv-navigator') -- too bright, but looks awesome

require('plugins')
require('keymappings')
require('colorscheme')
require('settings')

-- plugins
require('nv-cmp')
require('nv-treesitter')
require('nv-treesitter.context')
require('nv-fzf')
require('nv-gitsigns')
require('nv-barbar')
require('nv-autopairs')
require('nv-kommentary')
require('nv-hop')
-- require('nv-startify')
require('nv-ultisnips')
require('nv-dashboard')
require('nv-nvimtree')
-- require('nv-toggleterm')
require('nv-lualine')
require('nv-neoformat')
require('nv-vimformat')
require('nv-lspkind')
--[[ require('nv-dap')
require('nv-dap.keymappings')
require('nv-dap.dap-ui') ]]
-- require('nv-vimspector')

-- vim scripts
vim.cmd('source ~/.config/nvim/vimscript/42header.vim')
vim.cmd('source ~/.config/nvim/vimscript/trail_wspace.vim')
vim.cmd('source ~/.config/nvim/vimscript/folding.vim')
vim.cmd('packadd! gruvbox-material')
-- vim.cmd('source ~/.config/nvim/vimscript/bg.vim')
-- vim.cmd('source ~/.config/nvim/vimscript/python.vim')

