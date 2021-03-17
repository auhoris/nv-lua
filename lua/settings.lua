-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true


vim.wo.cursorline = true
vim.o.clipboard="unnamedplus"	-- Copy and paste everywhere

-- Good splitting
vim.o.splitright = true
vim.o.splitbelow = true

-- Better colors
vim.o.termguicolors=true
vim.o.t_Co="256"

-- Good indenting
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.bo.expandtab = true
vim.bo.softtabstop = 0
vim.cmd('set ts=4')
vim.cmd('set sw=4')

-- No swap files
vim.o.backup=false
vim.o.swapfile = true
vim.o.writebackup=false

-- Show spaces
vim.o.list = true
--vim.cmd('set listchars=tab:\›\\ ,precedes:\‹,nbsp:\·,trail:\·')

vim.o.updatetime=300                      --Faster completion
vim.o.timeoutlen=100                      --By default timeoutlen is 1000 ms

-- Enable mouse
vim.o.mouse="a"
