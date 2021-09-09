local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- require'utils'.common_on_attach
-- require 'lsp_signature'.on_attach()
require'lspconfig'.clangd.setup {
    on_attach = on_attach,
    -- capabilities = capabilities,
}
