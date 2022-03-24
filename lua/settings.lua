-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

vim.wo.cursorline = true
vim.o.clipboard="unnamedplus"	-- Copy and paste everywhere
--
-- Good splitting
vim.o.splitright = true
vim.o.splitbelow = true
--
-- Better colors
vim.o.termguicolors=true
vim.cmd('set t_Co=256')
--vim.o.t_Co="256"

-- Good indenting for c code
vim.bo.autoindent = true
vim.bo.smartindent = true
-- vim.cmd('set expandtab')
vim.bo.softtabstop = 0
vim.cmd('set ts=4')
vim.cmd('set sw=4')

-- search
vim.o.ignorecase=true

---- Good indenting for python code
--[[ vim.bo.autoindent = true
vim.bo.smartindent = true
vim.cmd('set expandtab')
vim.bo.softtabstop = 0
vim.cmd('set ts=8')
vim.cmd('set sw=4') ]]
--
--
-- No swap files
vim.o.backup=false
vim.cmd('set noswapfile')
-- vim.o.swapfile = true
vim.o.writebackup=false

-- Show spaces
vim.cmd("set list")
vim.cmd("set listchars=tab:›\\ ,precedes:‹,nbsp:·,trail:·")
--[[ vim.o.list = true
--vim.cmd('set listchars=tab:\›\\ ,precedes:\‹,nbsp:\·,trail:\·') ]]

vim.o.updatetime=100                      --Faster completion
vim.o.timeoutlen=500                      --By default timeoutlen is 1000 ms

-- Enable mouse
vim.o.mouse="a"
-- vim.cmd("set ff=unix")

-- Setting default explorer
--[[ vim.cmd('let g:netrw_winsize = 25')
vim.cmd('let g:netrw_liststyle = 3')
vim.cmd('let g:netrw_banner = 0')
vim.cmd('let g:netrw_browse_split = 4') ]]

--[[ require('trim').setup({
    -- if you want to ignore markdown file.
    -- you can specify filetypes.
    disable = {"markdown"},
}) ]]


--[[ require'shade'.setup({
  overlay_opacity = 50,
  opacity_step = 1,
  keys = {
    brightness_up    = '<C-Up>',
    brightness_down  = '<C-Down>',
    toggle           = '<Leader>s',
  }
}) ]]
-- Nvim transparency
require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be clear
    -- In particular, when you set it to 'all', that means all avaliable groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    -- "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})
