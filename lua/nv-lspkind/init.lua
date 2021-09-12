-- commented options are defaults
--require('lspkind').init({
--    with_text = true,
--    symbol_map = {
--      Text = '',
--      Method = 'ƒ',
--      Function = '',
--      Constructor = '',
--      Variable = '',
--      Class = '',
--      Interface = 'ﰮ',
--      Module = '',
--      Property = '',
--      Unit = '',
--      Value = '',
--      Enum = '了',
--      Keyword = '',
--      Snippet = '﬌',
--      Color = '',
--      File = '',
--      Folder = '',
--      EnumMember = '',
--      Constant = '',
--      Struct = ''
--    },
--})

local M = {}

M.icons = {
  Class = " ",
  Color = " ",
  Constant = " ",
  Constructor = " ",
  Enum = "了 ",
  EnumMember = " ",
  Field = " ",
  File = " ",
  Folder = " ",
  Function = " ",
  Interface = "ﰮ ",
  Keyword = " ",
  Method = "ƒ ",
  Module = " ",
  Property = " ",
  Snippet = "﬌ ",
  Struct = " ",
  Text = " ",
  Unit = " ",
  Value = " ",
  Variable = " ",
}

function M.setup()
  local kinds = vim.lsp.protocol.CompletionItemKind
  for i, kind in ipairs(kinds) do
    kinds[i] = M.icons[kind] or kind
  end
end

return M
