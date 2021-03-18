vim.api.nvim_set_keymap('n', '<TAB>', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferPrevious<CR>', { noremap = true, silent = true })

-- Switchig buffers
vim.api.nvim_set_keymap('n', '<Leader>1', ':BufferGoto1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>2', ':BufferGoto2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>3', ':BufferGoto3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>4', ':BufferGoto4<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>5', ':BufferGoto5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>6', ':BufferGoto6<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>7', ':BufferGoto7<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>8', ':BufferGoto8<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>9', ':BufferGoto9<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<Leader>q', ':BufferClose<CR>', { noremap = true, silent = true })


