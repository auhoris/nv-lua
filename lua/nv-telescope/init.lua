require('telescope').load_extension('dap')

map = vim.api.nvim_set_keymap
map('n', '<C-p>', ':Telescope find_files<CR>', {noremap = true, silent = true})
map('n', '<C-g>', ':Telescope live_grep<CR>', {noremap = true, silent = true})
map('n', '<C-b>', ':Telescope buffers<CR>', {noremap = true, silent = true})
map('n', '<C-T>', ':Telescope search_history<CR>', {noremap = true, silent = true})
map('n', '<Leader>d', ':Telescope diagnostics<CR>', {noremap = true, silent = true})
map('n', '<Leader>cb', ':Telescope git_branch<CR>', {noremap = true, silent = true})

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "ignore_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
