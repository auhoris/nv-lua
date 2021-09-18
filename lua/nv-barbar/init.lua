local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<TAB>', ':BufferNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferPrevious<CR>', { noremap = true, silent = true })

-- Switchig buffers
map('n', '<Leader>1', ':BufferGoto1<CR>', opts)
map('n', '<Leader>2', ':BufferGoto2<CR>', opts)
map('n', '<Leader>3', ':BufferGoto3<CR>', opts)
map('n', '<Leader>4', ':BufferGoto4<CR>', opts)
map('n', '<Leader>5', ':BufferGoto5<CR>', opts)
map('n', '<Leader>6', ':BufferGoto6<CR>', opts)
map('n', '<Leader>7', ':BufferGoto7<CR>', opts)
map('n', '<Leader>8', ':BufferGoto8<CR>', opts)
map('n', '<Leader>9', ':BufferGoto9<CR>', opts)

map('n', '<Leader>q', ':BufferClose<CR>', { noremap = true})
map('n', '<Leader>ca', ':BufferCloseAllButCurrent<CR>', { noremap = true})
map('n', '<Leader>b', ':BufferPick<CR>', { noremap = true})

-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

-- Re-order to previous/next
map('n', '<Leader><', ':BufferMovePrevious<CR>', opts)
map('n', '<Leader>>', ' :BufferMoveNext<CR>', opts)
