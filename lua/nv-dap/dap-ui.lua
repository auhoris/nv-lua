require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
  },
  sidebar = {
    -- You can change the order of elements in the sidebar
    elements = {
      -- Provide as ID strings or tables with "id" and "size" keys
      --[[ {
        id = "scopes",
        size = 0.25, -- Can be float or integer > 1
      }, ]]
      -- { id = "registers", size = 0.25 },
      { id = "stacks", size = 0.5 },
      { id = "watches", size = 0.5 },
    },
    size = 50,
    position = "left", -- Can be "left", "right", "top", "bottom"
  },
  tray = {
    elements = { "scopes" },
    size = 15,
    position = "bottom", -- Can be "left", "right", "top", "bottom"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
}
)
