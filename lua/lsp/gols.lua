local lsp_config = require'lspconfig'
local lsp_completion = require'cmp'
-- enable snippets
vim.g['completion_enable_snippets'] = 'snippets.nvim'
vim.g['completion_auto_change_source'] = 1
-- called when a new lsp client attaches
local function on_attach(client)
        lsp_completion.on_attach(client)
        if client.resolved_capabilities.document_formatting then
        end
end

local servers = {
        -- clangd = {},
        --ccls = {},
        gopls = {
                cmd = {'gopls','--remote=auto'},
                capabilties = {
                        textDocuemnt = {
                                completion = {
                                        completionItem = {
                                                snippetSupport = true
                                        }
                                }
                        }
                },
                init_options = {
                        usePlaceholders = true,
                        completeUnimported = true
                }
        }
        -- ccls = {}
}

--[[ for server, config in pairs(servers) do
        lsp_config[server].setup(vim.tbl_deep_extend('force', lsp_default_config, config))
end ]]

for _, lsp in ipairs(servers) do
    lsp_config[lsp].setup {
        on_attach = on_attach,
        capabilties = capabilties,
        flags = {
            debounce_text_changes = 150,
        }
    }
end
--[[
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
                underline = true,
                signs = false,
                update_in_insert = true
        }
) ]]

require 'nvim-treesitter.configs'.setup{
        highlight = {
                enable = true
        }
}
