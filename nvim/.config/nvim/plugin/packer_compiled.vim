" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
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

time("Luarocks path setup", true)
local package_path_str = "/home/mander/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/mander/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/mander/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/mander/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mander/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["agda-vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/opt/agda-vim"
  },
  aniseed = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/aniseed"
  },
  ["any-jump.vim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/any-jump.vim"
  },
  ["compe-conjure"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/compe-conjure"
  },
  conjure = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/conjure"
  },
  detectindent = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/detectindent"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["fennel.vim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/fennel.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    commands = { "Goyo" },
    loaded = false,
    needs_bufread = false,
    path = "/home/mander/.local/share/nvim/site/pack/packer/opt/goyo.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["haskell-vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/opt/haskell-vim"
  },
  ["lsp-trouble.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-jqx"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/mander/.local/share/nvim/site/pack/packer/opt/nvim-jqx"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim.lua"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/nvim.lua"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["purescript-vim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/purescript-vim"
  },
  ["rust-tools.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/mander/.local/share/nvim/site/pack/packer/opt/rust-tools.nvim"
  },
  ["rust.vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/opt/rust.vim"
  },
  ["sad.vim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/sad.vim"
  },
  ["startuptime.vim"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    path = "/home/mander/.local/share/nvim/site/pack/packer/opt/startuptime.vim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/typescript-vim"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-css-color"
  },
  ["vim-exchange"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-exchange"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-highlightedyank"
  },
  ["vim-indent-guides"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-indent-guides"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-javascript"
  },
  ["vim-jsonc"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-jsonc"
  },
  ["vim-jsx"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-jsx"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors"
  },
  ["vim-nix"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/opt/vim-nix"
  },
  ["vim-parinfer"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/mander/.local/share/nvim/site/pack/packer/opt/vim-parinfer"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-raku"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/opt/vim-raku"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  ["vim-tsx"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-tsx"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  ["webapi-vim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/webapi-vim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["yats.vim"] = {
    loaded = true,
    path = "/home/mander/.local/share/nvim/site/pack/packer/start/yats.vim"
  }
}

time("Defining packer_plugins", false)

-- Command lazy-loads
time("Defining lazy-load commands", true)
vim.cmd [[command! -nargs=* -range -bang -complete=file Goyo lua require("packer.load")({'goyo.vim'}, { cmd = "Goyo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'startuptime.vim'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
time("Defining lazy-load commands", false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time("Defining lazy-load filetype autocommands", true)
vim.cmd [[au FileType nix ++once lua require("packer.load")({'vim-nix'}, { ft = "nix" }, _G.packer_plugins)]]
vim.cmd [[au FileType fennel ++once lua require("packer.load")({'vim-parinfer'}, { ft = "fennel" }, _G.packer_plugins)]]
vim.cmd [[au FileType elisp ++once lua require("packer.load")({'vim-parinfer'}, { ft = "elisp" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'nvim-jqx'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust-tools.nvim', 'rust.vim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType haskell ++once lua require("packer.load")({'haskell-vim'}, { ft = "haskell" }, _G.packer_plugins)]]
vim.cmd [[au FileType raku ++once lua require("packer.load")({'vim-raku'}, { ft = "raku" }, _G.packer_plugins)]]
vim.cmd [[au FileType carp ++once lua require("packer.load")({'vim-parinfer'}, { ft = "carp" }, _G.packer_plugins)]]
vim.cmd [[au FileType lisp ++once lua require("packer.load")({'vim-parinfer'}, { ft = "lisp" }, _G.packer_plugins)]]
vim.cmd [[au FileType agda ++once lua require("packer.load")({'agda-vim'}, { ft = "agda" }, _G.packer_plugins)]]
time("Defining lazy-load filetype autocommands", false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time("Sourcing ftdetect script at: /home/mander/.local/share/nvim/site/pack/packer/opt/vim-nix/ftdetect/nix.vim", true)
vim.cmd [[source /home/mander/.local/share/nvim/site/pack/packer/opt/vim-nix/ftdetect/nix.vim]]
time("Sourcing ftdetect script at: /home/mander/.local/share/nvim/site/pack/packer/opt/vim-nix/ftdetect/nix.vim", false)
time("Sourcing ftdetect script at: /home/mander/.local/share/nvim/site/pack/packer/opt/agda-vim/ftdetect/agda.vim", true)
vim.cmd [[source /home/mander/.local/share/nvim/site/pack/packer/opt/agda-vim/ftdetect/agda.vim]]
time("Sourcing ftdetect script at: /home/mander/.local/share/nvim/site/pack/packer/opt/agda-vim/ftdetect/agda.vim", false)
time("Sourcing ftdetect script at: /home/mander/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim", true)
vim.cmd [[source /home/mander/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]]
time("Sourcing ftdetect script at: /home/mander/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim", false)
time("Sourcing ftdetect script at: /home/mander/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim", true)
vim.cmd [[source /home/mander/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]]
time("Sourcing ftdetect script at: /home/mander/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim", false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
