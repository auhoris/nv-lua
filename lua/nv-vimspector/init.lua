local map = vim.api.nvim_set_keymap
map('n', '<Leader>dn', ':call vimspector#StepOver()<CR>', {})
map('n', '<Leader>ds', ':call vimspector#StepInto()<CR>', {})
map('n', '<Leader>dc', ':call vimspector#Continue()<CR>', {})
map('n', '<Leader>dr', ':call vimspector#Restart()<CR>', {})
map('n', '<Leader>db', ':call vimspector#ToggleBreakpoint()<CR>', {})
map('n', '<Leader>dl', ':call vimspector#Launch()<CR>', {})
map('n', '<Leader>rr', ':VimspectorReset<CR>', {})
