require('kommentary.config').use_extended_mappings()
require('kommentary.config').configure_language("cpp", {
    prefer_single_line_comments = true,
})
local opts = { noremap = false, silent = true }
vim.api.nvim_set_keymap("n", "<leader>cic", "<Plug>kommentary_line_increase", opts)
vim.api.nvim_set_keymap("n", "<leader>ci", "<Plug>kommentary_motion_increase", opts)
vim.api.nvim_set_keymap("x", "<leader>ci", "<Plug>kommentary_visual_increase", opts)
vim.api.nvim_set_keymap("n", "<leader>cdc", "<Plug>kommentary_line_decrease", opts)
vim.api.nvim_set_keymap("n", "<leader>cd", "<Plug>kommentary_motion_decrease", opts)
vim.api.nvim_set_keymap("x", "<leader>cd", "<Plug>kommentary_visual_decrease", opts)

vim.api.nvim_set_keymap("n", "<leader>cc", "<Plug>kommentary_line_default", opts)
vim.api.nvim_set_keymap("n", "<leader>/", "<Plug>kommentary_motion_default", opts)
vim.api.nvim_set_keymap("x", "<leader>/", "<Plug>kommentary_visual_default", opts)
--[[ vim.g.kommentary_create_default_mappings = false
vim.api.nvim_set_keymap("n", "<leader>/", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("v", "<leader>/", "<Plug>kommentary_visual_default", {}) ]]
