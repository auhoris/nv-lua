-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/auhoris/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/auhoris/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/auhoris/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/auhoris/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/auhoris/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["42header"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/42header"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/colorbuddy.vim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  delimitMate = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/delimitMate"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/far.vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["omni.vim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/omni.vim"
  },
  onebuddy = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/onebuddy"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/toggleterm.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-flake8"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/vim-flake8"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["vim-yapf"] = {
    loaded = true,
    path = "/Users/auhoris/.local/share/nvim/site/pack/packer/start/vim-yapf"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
