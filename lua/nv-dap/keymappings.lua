local map = vim.api.nvim_set_keymap

-- steps
map('n', '<F10>', '<cmd>lua require"dap".step_over()<CR>', {})
map('n', '<F11>', '<cmd>lua require"dap".step_into()<CR>', {})
map('n', '<F12>', '<cmd>lua require"dap".step_out()<CR>', {})
map('n', '<F5>', '<cmd>lua require"dap".continue()<CR>', {})
map('n', '<F6>', '<cmd>lua require"dap".pause()<CR>', {})

map('n', '<F9>', '<cmd>lua require"dap".toggle_breakpoint()<CR>', {})
map('n', '<F4>', '<cmd>lua require"dap".run_last()<CR>', {})
-- map('n', '<Leader>dl', '<cmd>lua require"dap".run()<CR>', {})
map('n', '<Leader>d?', '<cmd>lua local widgets = require"dap.ui.widgets"; sidebar = widgets.sidebar(widgets.scopes); sidebar.toggle()<CR>', {})
map('n', '<Leader>rr', '<cmd>lua require"dap".terminate()<CR>', {})
map('n', '<Leader>re', '<cmd>lua require"dap".repl.toggle()<CR>', {})
map('n', '<Leader>?', '<cmd>lua require"dap.ui.widgets".hover()<CR>', {})

map('n', '<S-Up>', '<cmd>lua require"dap".up()<CR>', {})
map('n', '<S-Down>', '<cmd>lua require"dap".down()<CR>', {})

map('n', '<Leader>ui', '<cmd>lua require"dapui".toggle()<CR>', {})
