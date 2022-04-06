require'hop'.setup()

local map = vim.api.nvim_set_keymap
map('n', '<Leader>w', "<cmd>lua require'hop'.hint_words()<cr>", {})
map('n', 'f', "<cmd>lua require'hop'.hint_char1()<cr>", {})
-- map('n', '<Leader>s', "<cmd>lua require'hop'.hint_patterns()<cr>", {})
-- map('n', '<Leader>l', ":HopLine<CR>", {})
