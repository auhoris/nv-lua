-- lsp sign            ﮻           ﯭ                ﳀ    
--
require'navigator'.setup({
  debug = false, -- log output, set to true and log path: ~/.cache/nvim/gh.log
  width = 0.5, -- max width ratio (number of cols for the floating window) / (window width)
  height = 0.5, -- max list window height, 0.3 by default
  preview_height = 0.35, -- max height of preview windows
  border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"}, -- border style, can be one of 'none', 'single', 'double',
                                                     -- 'shadow', or a list of chars which defines the border
  on_attach = function(client, bufnr)
	  local map = vim.api.nvim_buf_set_keymap
	  map(0, "n", "gr", "<cmd>lua require('navigator.reference').async_ref()<CR>", {silent = true, noremap = true})
	  map(0, "n", "<Leader>gr", "<cmd>lua require('navigator.reference').reference()<CR>", {silent = true, noremap = true})
	  map(0, "n", "gd", "<cmd>lua require('navigator.definition').definition()<CR>", {silent = true, noremap = true})
	  map(0, "n", "gW", "<cmd>lua require('navigator.workspace').workspace_symbol()<CR>", {silent = true, noremap = true})
	  map(0, "n", "<Leader>s", "<cmd>lua require('navigator.symbols').document_symbols()<CR>", {silent = true, noremap = true})
	  map(0, "n", "gp", "<cmd>lua require('navigator.definition').definition_preview()<CR>", {silent = true, noremap = true})

	  map(0, "n", "K", "<cmd>lua vim.lsp.buf.hover({ popup_opts = { border = single, max_width = 80 }})<CR>", {silent = true, noremap = true})
	  map(0, "i", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {silent = true, noremap = true})

	  map(0, "n", "<space>ca", "<cmd>lua require('navigator.codeAction').code_action()<CR>", {silent = true, noremap = true})
	  map(0, "v", "<space>cA", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", {silent = true, noremap = true})

	  map(0, "n", "<space>rn", "<cmd>lua require('navigator.rename').rename()<CR>", {silent = true, noremap = true})
	  map(0, "n", "<Leader>re", "<cmd>lua vim.lsp.buf.rename()<CR>", {silent = true, noremap = true})

	  map(0, "n", "<C-]>", "<cmd>lua vim.diagnostic.goto_next({ border = 'rounded', max_width = 80})<CR>", {silent = true, noremap = true})
	  map(0, "n", "<C-[>", "<cmd>lua vim.diagnostic.goto_prev({ border = 'rounded', max_width = 80})<CR>", {silent = true, noremap = true})
	  map(0, "n", "]r", "<cmd>lua require('navigator.treesitter').goto_next_usage()<CR>", {silent = true, noremap = true})
	  map(0, "n", "[r", "<cmd>lua require('navigator.treesitter').goto_previous_usage()<CR>", {silent = true, noremap = true})

	  map(0, "n", "<Leader>gi", "<cmd>lua vim.lsp.buf.incoming_calls()<CR>", {silent = true, noremap = true})
	  map(0, "n", "<Leader>go", "<cmd>lua vim.lsp.buf.outgoing_calls()<CR>", {silent = true, noremap = true})

	  map(0, "n", "<space>e", "<cmd>lua require('navigator.diagnostics').show_diagnostics()<CR>", {silent = true, noremap = true})
	  -- map(0, "n", "<space>q", "<cmd>lua require('navigator.diagnostics').show_buf_diagnostics()<CR>", {silent = true, noremap = true})

	  map(0, "n", "<Leader>gt", "<cmd>lua require('navigator.treesitter').buf_ts()<CR>", {silent = true, noremap = true})
	  map(0, "n", "<Leader>gT", "<cmd>lua require('navigator.treesitter').bufs_ts()<CR>", {silent = true, noremap = true})
    -- your hook
  end,
  -- put a on_attach of your own here, e.g
  -- function(client, bufnr)
  --   -- the on_attach will be called at end of navigator on_attach
  -- end,
  -- The attach code will apply to all LSP clients

  default_mapping = false,  -- set to false if you will remap every key
  keymaps = {
		-- {key = "gK", func = "declaration()"},
		-- { key = 'gr', func = "require('navigator.reference').async_ref()" },
		-- { key = '<Leader>gr', func = "require('navigator.reference').reference()" }, -- reference deprecated
		-- { mode = 'i', key = '<C-k>', func = 'signature_help()' },
		-- { key = '<c-k>', func = 'signature_help()' },
		-- { key = '<Leader>s', func = "require('navigator.symbols').document_symbols()" },
		-- { key = 'gW', func = "require('navigator.workspace').workspace_symbol()" },
		-- { key = '<c-]>', func = "require('navigator.definition').definition()" },
		-- { key = 'gd', func = "require('navigator.definition').definition()" },
		{ key = 'gD', func = "declaration({ border = 'rounded', max_width = 80 })" },
		-- { key = '<->', func = "require('navigator.definition').definition_preview()" },
		--[[ { key = '<Leader>gt', func = "require('navigator.treesitter').buf_ts()" },
		{ key = '<Leader>gT', func = "require('navigator.treesitter').bufs_ts()" }, ]]
		-- { key = 'K', func = 'hover({ popup_opts = { border = single, max_width = 80 }})' },
		--[[ { key = '<Space>ca', mode = 'n', func = "require('navigator.codeAction').code_action()" },
		{ key = '<Space>cA', mode = 'v', func = 'range_code_action()' }, ]]
		-- { key = '<Leader>re', func = 'rename()' },
		-- { key = '<Space>rn', func = "require('navigator.rename').rename()" },
		--[[ { key = '<Leader>gi', func = 'incoming_calls()' },
		{ key = '<Leader>go', func = 'outgoing_calls()' }, ]]
		{ key = 'gi', func = 'implementation()' },
		{ key = '<Space>D', func = 'type_definition()' },
		--[[ { key = '<Space>e', func = "require('navigator.diagnostics').show_diagnostics()" },
		{ key = '<space>q', func = "require('navigator.diagnostics').show_buf_diagnostics()" }, ]]
		{ key = '<Leader>dt', func = "require('navigator.diagnostics').toggle_diagnostics()" },
		--[[ { key = '<C-]>', func = "diagnostic.goto_next({ border = 'rounded', max_width = 80})" },
		{ key = '<C-[>', func = "diagnostic.goto_prev({ border = 'rounded', max_width = 80})" }, ]]
		{ key = ']O', func = 'diagnostic.set_loclist()' },
		--[[ { key = ']r', func = "require('navigator.treesitter').goto_next_usage()" },
		{ key = '[r', func = "require('navigator.treesitter').goto_previous_usage()" }, ]]
		{ key = '<C-LeftMouse>', func = 'definition()' },
		{ key = 'g<LeftMouse>', func = 'implementation()' },
		{ key = '<Leader>k', func = "require('navigator.dochighlight').hi_symbol()" },
		{ key = '<Space>wa', func = "require('navigator.workspace').add_workspace_folder()" },
		{ key = '<Space>wr', func = "require('navigator.workspace').remove_workspace_folder()" },
		-- { key = '<Space>ff', func = 'formatting()', mode = 'n' },
		{ key = '<Space>ff', func = 'range_formatting()', mode = 'v' },
		{ key = '<Space>wl', func = "require('navigator.workspace').list_workspace_folders()" },
		{ key = '<Space>la', mode = 'n', func = "require('navigator.codelens').run_action()" },

  }, -- a list of key maps
  -- this kepmap gK will override "gD" mapping function declaration()  in default kepmap
  -- please check mapping.lua for all keymaps
  treesitter_analysis = true, -- treesitter variable context
  transparency = 50, -- 0 ~ 100 blur the main window, 100: fully transparent, 0: opaque,  set to nil or 100 to disable it

  lsp_signature_help = true, -- if you would like to hook ray-x/lsp_signature plugin in navigator
  -- setup here. if it is nil, navigator will not init signature help
  signature_help_cfg = nil, -- if you would like to init ray-x/lsp_signature plugin in navigator, and pass in your own config to signature help
  icons = {
    -- Code action
    code_action_icon = " ",
    -- Diagnostics
    diagnostic_head = '🐛',
    diagnostic_head_severity_1 = "🈲",
	-- diagnostic_head_error = 'x',
    -- refer to lua/navigator.lua for more icons setups
  },
  lsp_installer = false, -- set to true if you would like use the lsp installed by williamboman/nvim-lsp-installer
  lsp = {
    code_action = {enable = true, sign = true, sign_priority = 40, virtual_text = false},
    code_lens_action = {enable = true, sign = true, sign_priority = 40, virtual_text = false},
    format_on_save = true, -- set to false to disable lsp code format on save (if you are using prettier/efm/formater etc)
    disable_format_cap = {"sqls", "sumneko_lua", "gopls"},  -- a list of lsp disable format capacity (e.g. if you using efm or vim-codeformat etc), empty {} by default
    disable_lsp = {'pylsd', 'sqlls'}, -- a list of lsp server disabled for your project, e.g. denols and tsserver you may
    -- only want to enable one lsp server
    -- to disable all default config and use your own lsp setup set
    -- disable_lsp = 'all'
    -- Default {}
    diagnostic = {
      underline = true,
      virtual_text = false, -- show virtual for diagnostic message
      update_in_insert = false, -- update diagnostic message in insert mode
    },

    diagnostic_scrollbar_sign = false, -- experimental:  diagnostic status in scroll bar area; set to false to disable the diagnostic sign,
    -- for other style, set to {'╍', 'ﮆ'} or {'-', '='}
    diagnostic_virtual_text = false,  -- show virtual for diagnostic message
    diagnostic_update_in_insert = false, -- update diagnostic message in insert mode
    disply_diagnostic_qf = true, -- always show quickfix if there are diagnostic errors, set to false if you  want to
    servers = {'clangd'}, -- by default empty, and it should load all LSP clients avalible based on filetype
    -- but if you whant navigator load  e.g. `cmake` and `ltex` for you , you
    -- can put them in the `servers` list and navigator will auto load them.
    -- you could still specify the custom config  like this
    -- cmake = {filetypes = {'cmake', 'makefile'}, single_file_support = false},
  }
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {
    'clangd',
	'pyright',
}

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
