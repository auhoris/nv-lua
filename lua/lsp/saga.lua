-- lsp sign            ﮻           ﯭ                ﳀ    
local lspsaga = require 'lspsaga'
lspsaga.setup { -- defaults ...
  debug = false,
  use_saga_diagnostic_sign = true,
  -- diagnostic sign
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  diagnostic_header_icon = "   ",
  -- code action title icon
  code_action_icon = " ",
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    virtual_text = false,
  },
  finder_definition_icon = "  ",
  finder_reference_icon = "  ",
  max_preview_lines = 50,
  finder_action_keys = {
    open = "<CR>",
    vsplit = "s",
    split = "i",
    quit = "q",
    scroll_down = "<C-d>",
    scroll_up = "<C-u>",
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  rename_action_keys = {
    quit = "<C-c>",
    exec = "<CR>",
  },
  definition_preview_icon = "  ",
  border_style = "single",
  rename_prompt_prefix = "➤",
  rename_output_qflist = {
    enable = false,
    auto_open_qflist = false,
  },
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
  diagnostic_message_format = "%m %c",
  highlight_prefix = true,
}

--[[ local map = vim.api.nvim_set_keymap
map('n', 'gh', "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", { noremap = true, silent = true })
map('n', '<space>ca', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", { noremap = true, silent = true })
map('n', '<leader>ca', "<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>", { noremap = true, silent = true })
map('n', 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", { noremap = true, silent = true })
map('n', '<c-k>', "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", { noremap = true, silent = true })
map('n', '<space>rn', "<cmd>lua require('lspsaga.rename').rename()<CR>", { noremap = true, silent = true })
-- map('n', 'gp', "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", { noremap = true, silent = true })
map('n', '<space>e', "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>", { noremap = true, silent = true })

map('n', '<C-]>', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>", { noremap = true, silent = true })
map('n', '<C-[>', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>", { noremap = true, silent = true }) ]]
