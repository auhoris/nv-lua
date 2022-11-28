local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '≥', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '≤', ':BufferPrevious<CR>', { noremap = true, silent = true })

-- Switchig buffers
map('n', '¡', ':BufferGoto1<CR>', opts)
map('n', '™', ':BufferGoto2<CR>', opts)
map('n', '£', ':BufferGoto3<CR>', opts)
map('n', '¢', ':BufferGoto4<CR>', opts)
map('n', '∞', ':BufferGoto5<CR>', opts)
map('n', '§', ':BufferGoto6<CR>', opts)
map('n', '¶', ':BufferGoto7<CR>', opts)
map('n', '•', ':BufferGoto8<CR>', opts)
map('n', 'ª', ':BufferGoto9<CR>', opts)

map('n', 'œ', ':BufferClose<CR>', { noremap = true})
map('n', '<Leader>ca', ':BufferCloseAllButCurrent<CR>', { noremap = true})
map('n', '<Leader>b', ':BufferPick<CR>', { noremap = true})

-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

-- Re-order to previous/next
map('n', '<Leader><', ':BufferMovePrevious<CR>', opts)
map('n', '<Leader>>', ' :BufferMoveNext<CR>', opts)
