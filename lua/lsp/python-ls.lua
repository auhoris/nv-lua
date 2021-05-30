--[[ local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true ]]


require'lspconfig'.pyright.setup{on_attach=require'compe'.on_attach}

--[[ local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

local server_name = "pyright"
local bin_name = "pyright-langserver"
if vim.fn.has('win32') == 1 then
  bin_name = bin_name..".cmd"
end

configs[server_name] = {
  default_config = {
    cmd = {bin_name, "--stdio"};
    filetypes = {"python"};
    root_dir = util.root_pattern(".git", "setup.py",  "setup.cfg", "pyproject.toml", "requirements.txt");
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true;
          useLibraryCodeForTypes = true;
        };
      };
    };
   };
  docs = {
    description = [[ ]]
--[[ https://github.com/microsoft/pyright
`pyright`, a static type checker and language server for python
]]
  -- };
-- } ]]
-- require'lspconfig'.pyright.setup {}
