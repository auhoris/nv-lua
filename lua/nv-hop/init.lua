vim.api.nvim_set_keymap('n', '<Leader>w', "<cmd>lua require'hop'.hint_words()<cr>", {})
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1()<cr>", {})
vim.api.nvim_set_keymap('n', '<Leader>s', "<cmd>lua require'hop'.hint_patterns()<cr>", {})
