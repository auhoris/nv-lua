-- Mappings
-- vim.api.nvim_set_keymap('i', '<C-c>', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F5>', ":lua require'dap'.continue()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F10>', ":lua require'dap'.step_over()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F11>', ":lua require'dap'.step_into()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F12>', ":lua require'dap'.step_out()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>b', ":lua require'dap'.toggle_breakpoint()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-b>', ":lua require'dap'.set_breakpoint()<CR>", {noremap = true, silent = true})
--[[ nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> :lua require'dap'.step_into)<CR>
nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR> ]]
-- nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>
