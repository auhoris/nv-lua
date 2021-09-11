local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/local/opt/llvm/bin/lldb', -- adjust as needed
  name = "lldb"
}

-- local dap = require('dap')
dap.configurations.cpp = {
  {
    name = "Launch",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},

    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    runInTerminal = false,
  },
}

--mappings
vim.api.nvim_set_keymap('n', '<F5>', ":lua require'dap'.continue()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F10>', ":lua require'dap'.step_over()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F11>', ":lua require'dap'.step_into()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F12>', ":lua require'dap'.step_out()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>b', ":lua require'dap'.toggle_breakpoint()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-b>', ":lua require'dap'.set_breakpoint()<CR>", {noremap = true, silent = true})
