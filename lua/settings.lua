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
--
-- Good indenting for c code
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.cmd('set expandtab')
vim.bo.softtabstop = 0
vim.cmd('set ts=4')
vim.cmd('set sw=4')
--
---- Good indenting for python code
----[[ vim.bo.autoindent = true
--vim.bo.smartindent = true
--vim.cmd('set expandtab')
--vim.bo.softtabstop = 0
--vim.cmd('set ts=8')
--vim.cmd('set sw=4') ]]
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

vim.o.updatetime=300                      --Faster completion
vim.o.timeoutlen=100                      --By default timeoutlen is 1000 ms

-- Enable mouse
vim.o.mouse="a"

-- Setting default explorer
--[[ vim.cmd('let g:netrw_winsize = 25')
vim.cmd('let g:netrw_liststyle = 3')
vim.cmd('let g:netrw_banner = 0')
vim.cmd('let g:netrw_browse_split = 4') ]]
