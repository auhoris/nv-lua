local map = vim.api.nvim_set_keymap
map('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ','

--no hl
map('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})


--quit and save mappings
map('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})
map('n', '<C-q>', ':q!<CR>', {noremap = true, silent = true})

-- Better window movement
map('n', '<C-h>', '<C-w>h', {silent = true})
map('n', '<C-j>', '<C-w>j', {silent = true})
map('n', '<C-k>', '<C-w>k', {silent = true})
map('n', '<C-l>', '<C-w>l', {silent = true})
-- map('n', '<Leader>rf', '<Plug>NetrwRefresh', {silent = true})

-- Moving indent
map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})

-- Better ESC
map('i', '<C-c>', '<ESC>', {noremap = true, silent = true})
--[[ map('i', 'jj', '<ESC>', {noremap = true, silent = true})
map('i', 'jk', '<ESC>', {noremap = true, silent = true})
map('i', 'kj', '<ESC>', {noremap = true, silent = true}) ]]


-- Moving lines in every mode
map('x', 'K', ':m \'<-2<CR>gv=gv', {noremap = true, silent = true})
map('x', 'J', ':m \'>+1<CR>gv=gv', {noremap = true, silent = true})
--[[ map('i', '<C-j>', '<ESC>:m .+1<CR>==', {noremap = true, silent = true})
map('i', '<C-k>', '<ESC>:m .-2<CR>==', {noremap = true, silent = true}) ]]
--[[ map('n', '<Leader>j', ':m .+1<CR>', {noremap = true, silent = true})
map('n', '<Leader>k', ':m .-2<CR>', {noremap = true, silent = true}) ]]

-- Undoo breakpoints
-- map('i', ',', ',<c-g>u', {noremap = true, silent = true})

-- Keeping centered when jump to next search
map('n', 'n', 'nzzzv', {noremap = true, silent = true})
map('n', 'n', 'nzzzv', {noremap = true, silent = true})

-- Create new file in curr dir

-- map('n', '<C-e>', ':tabnew <C-r>=expand("%:p:h")<CR>/', {noremap = true, silent = true})
--map('n', '<Leader>md', ':!mkdir -p ', {noremap = true, silent = true})
--map('n', '<Leader>nf', ':!touch ', {noremap = true, silent = true})

-- Splits
map('n', '<Leader>v', ':vsplit<CR>', {silent = true})
map('n', '<Leader>s', ':split<CR>', {silent = true})

-- resize with arrows
vim.cmd([[
  nnoremap <silent> <C-Up>    :resize +2<CR>
  nnoremap <silent> <C-Down>  :resize -2<CR>
  nnoremap <silent> <C-Left>  :vertical resize +2<CR>
  nnoremap <silent> <C-Right> :vertical resize -2<CR>
]])

-- UltiSnip
-- map('i', '<Leader>i', ':split<CR>', {silent = true})
--
-- Linters and formatters
map('n', '<Leader>y', ':Yapf<CR>', {noremap = true, silent = true})
--vim.cmd('imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"')
-- imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"

-- Refresh current file
map('n', '<Leader>R', ':e %', {noremap = true, silent = true})
