vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

--no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

--explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':Vex<CR>', {noremap = true, silent = true})

--quit and save mappings
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', {noremap = true, silent = true})

-- Better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>rf', '<Plug>NetrwRefresh', {silent = true})

-- Moving indent
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- Better ESC
vim.api.nvim_set_keymap('i', '<C-c>', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})


-- Moving lines in vis mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-1<CR>gv-gv\'', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv\'', {noremap = true, silent = true})

-- Create new file in curr dir

-- vim.api.nvim_set_keymap('n', '<C-e>', ':tabnew <C-r>=expand("%:p:h")<CR>/', {noremap = true, silent = true})
--vim.api.nvim_set_keymap('n', '<Leader>md', ':!mkdir -p ', {noremap = true, silent = true})
--vim.api.nvim_set_keymap('n', '<Leader>nf', ':!touch ', {noremap = true, silent = true})

-- Splits
vim.api.nvim_set_keymap('n', '<Leader>v', ':vsplit<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>s', ':split<CR>', {silent = true})

-- resize with arrows
vim.cmd([[
  nnoremap <silent> <C-Up>    :resize +2<CR>
  nnoremap <silent> <C-Down>  :resize -2<CR>
  nnoremap <silent> <C-Left>  :vertical resize +2<CR>
  nnoremap <silent> <C-Right> :vertical resize -2<CR>
]])

-- UltiSnip
-- vim.api.nvim_set_keymap('i', '<Leader>i', ':split<CR>', {silent = true})
--
-- Linters and formatters
vim.api.nvim_set_keymap('n', '<Leader>y', ':Yapf<CR>', {noremap = true, silent = true})
