local cmp = require 'cmp'

local cmp_kinds = {
    Class = ' ',
    Color = ' ',
    Constant = 'ﲀ ',
    Constructor = ' ',
    Enum = '練',
    EnumMember = ' ',
    Event = ' ',
    Field = ' ',
    File = '',
    Folder = ' ',
    Function = ' ',
    Interface = 'ﰮ ',
    Keyword = ' ',
    Method = ' ',
    Module = ' ',
    Operator = '',
    Property = ' ',
    Reference = ' ',
    Snippet = ' ',
    Struct = ' ',
    Text = ' ',
    TypeParameter = ' ',
    Unit = '塞',
    Value = ' ',
    Variable = ' '
}

vim.o.completeopt = 'menu,menuone,noselect'

local cmp = require 'cmp'
cmp.setup {
  formatting = {
      format = function(entry, vim_item)
          vim_item.kind = string.format('%s %s', cmp_kinds[vim_item.kind],
                                        vim_item.kind)
          vim_item.menu = ({
              nvim_lsp = '[LSP]',
			  buffer = '[Buf]',
			  path = '[Pth]',
              luasnip = '[Snp]',
              nvim_lua = '[Lua]',
              calc = '[Clc]',
              emoji = '[Emj]'
          })[entry.source.name]

          return vim_item
      end
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'treesitter'},
    { name = 'path' },
    { name = 'buffer'},
	{ name = 'nvim_lsp_signature_help' },
	{ name = 'luasnip' },
  },
}
