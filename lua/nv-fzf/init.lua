local map = vim.api.nvim_set_keymap

map('n', '<C-p>', "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })
map('n', '<C-g>', "<cmd>lua require('fzf-lua').grep()<CR>", { noremap = true, silent = true })
map('n', '<C-b>', "<cmd>lua require('fzf-lua').buffers()<CR>", { noremap = true, silent = true })
map('n', '<C-T>', "<cmd>lua require('fzf-lua').tags()<CR>", { noremap = true, silent = true })
map('n', '<Leader>o', "<cmd>lua require('fzf-lua').oldfiles()<CR>", { noremap = true, silent = true })
map('n', '<Leader>g', "<cmd>lua require('fzf-lua').grep_cword()<CR>", { noremap = true, silent = true })
map('v', '<Leader>v', "<cmd>lua require('fzf-lua').grep_visual()<CR>", { noremap = true, silent = true })

-- LSP
map('n', '<space>q', "<cmd>lua require('fzf-lua').lsp_document_diagnostics()<CR>", { noremap = true, silent = true })
map('n', 'gi', "<cmd>lua require('fzf-lua').lsp_implementations()<CR>", { noremap = true, silent = true })
map('n', 'gW', "<cmd>lua require('fzf-lua').lsp_document_symbols()<CR>", { noremap = true, silent = true })

