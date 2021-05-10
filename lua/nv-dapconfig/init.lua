  vim.cmd [[
    command! -complete=file -nargs=* DebugC lua require "my_debug".start_c_debugger({<f-args>}, "gdb")
]]
vim.cmd [[
    command! -complete=file -nargs=* DebugRust lua require "my_debug".start_c_debugger({<f-args>}, "gdb", "rust-gdb")
]]

local dap = require 'dap'
dap.adapters.cpp = {
      type = 'executable',
      attach = {
        pidProperty = "pid",
        pidSelect = "ask"
      },
      command = 'lldb-vscode', -- my binary was called 'lldb-vscode-11'
      env = {
        LLDB_LAUNCH_FLAG_LAUNCH_IN_TTY = "YES"
      },
      name = "lldb"
    }

