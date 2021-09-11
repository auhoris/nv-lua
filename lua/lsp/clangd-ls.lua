local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- require'utils'.common_on_attach
require "lsp_signature".on_attach({
    bind = true,
    floating_window = true,
    fix_pos = false,
})
require'lspconfig'.clangd.setup {
	capabilities = capabilities,
}
