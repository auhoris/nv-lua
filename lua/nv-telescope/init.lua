--Telescope mapping
vim.api.nvim_set_keymap('n', '<C-f>', ':Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-g>', ':Telescope live_grep<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-b>', ':Telescope buffers<CR>', {noremap = true, silent = true})

