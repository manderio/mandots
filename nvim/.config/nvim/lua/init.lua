local _0_0
do
  local name_0_ = "init"
  local module_0_
  do
    local x_0_ = package.loaded[name_0_]
    if ("table" == type(x_0_)) then
      module_0_ = x_0_
    else
      module_0_ = {}
    end
  end
  module_0_["aniseed/module"] = name_0_
  module_0_["aniseed/locals"] = ((module_0_)["aniseed/locals"] or {})
  module_0_["aniseed/local-fns"] = ((module_0_)["aniseed/local-fns"] or {})
  package.loaded[name_0_] = module_0_
  _0_0 = module_0_
end
local autoload = (require("aniseed.autoload")).autoload
local function _1_(...)
  local ok_3f_0_, val_0_ = nil, nil
  local function _1_()
    return {autoload("aniseed.core"), autoload("colors"), autoload("aniseed.fennel"), autoload("aniseed.nvim"), autoload("aniseed.string"), autoload("utils")}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {["require-macros"] = {macros = true}, autoload = {a = "aniseed.core", colors = "colors", fennel = "aniseed.fennel", nvim = "aniseed.nvim", str = "aniseed.string", utils = "utils"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local a = _local_0_[1]
local colors = _local_0_[2]
local fennel = _local_0_[3]
local nvim = _local_0_[4]
local str = _local_0_[5]
local utils = _local_0_[6]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "init"
do local _ = ({nil, _0_0, nil, {{nil}, nil, nil, nil}})[2] end
local function _2_()
  return require("plugins")
end
local function _3_(_241)
  return a.println(fennel.traceback(_241))
end
xpcall(_2_, _3_)
local function _4_()
  return require("plugins.lsp")
end
local function _5_(_241)
  return a.println(fennel.traceback(_241))
end
xpcall(_4_, _5_)
local function _6_()
  return require("keybinds")
end
local function _7_(_241)
  return a.println(fennel.traceback(_241))
end
xpcall(_6_, _7_)
vim.cmd("let mapleader=\"\\<Space>\"")
vim.cmd("let maplocalleader=\",\"")
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")
vim.o.showmode = false
vim.o.foldmethod = "marker"
vim.o.undodir = (vim.env.HOME .. "/.vim/undo-dir")
vim.o.undofile = true
vim.o.shortmess = (vim.o.shortmess .. "c")
vim.o.hidden = true
vim.o.encoding = "utf-8"
vim.o.number = false
vim.o.relativenumber = false
vim.o.compatible = false
vim.o.cursorline = true
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.inccommand = "nosplit"
vim.o.signcolumn = "yes"
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.backspace = "indent,eol,start"
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.wrap = false
vim.o.completeopt = "longest,menuone,noselect"
vim.o.laststatus = 2
vim.o.showmode = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.mouse = "a"
vim.o.shell = "bash"
vim.o.background = "dark"
if vim.fn.has("termguicolors") then
  vim.o.termguicolors = true
end
if not vim.fn.has("gui_running") then
  vim.o.t_Co = 256
end
vim.cmd("colorscheme gruvbox")
vim.cmd("let &t_ut=\"\"")
vim.cmd("autocmd! BufReadPost *.hs :set shiftwidth=2)")
vim.cmd("autocmd! FileType vim setlocal foldmethod=marker")
vim.cmd("autocmd! FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
vim.cmd("autocmd! FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>")
utils["highlight-add"]({"GruvboxBlueSign", "GruvboxAquaSign", "GruvboxRedSign", "GruvboxYellowSign", "GruvboxGreenSign", "GruvboxOrangeSign", "GruvboxPurpleSign"}, {bg = "NONE"})
utils.highlight("EndOfBuffer", {bg = "NONE", fg = colors.dark0})
utils.highlight("LineNr", {bg = "NONE"})
utils["highlight-add"]("Pmenu", {bg = colors.dark0_hard})
utils["highlight-add"]("PmenuSel", {bg = colors.bright_aqua})
utils["highlight-add"]("PmenuSbar", {bg = colors.dark0_hard})
utils["highlight-add"]("PmenuThumb", {bg = colors.dark1})
utils["highlight-add"]("NormalFloat", {bg = colors.dark0_hard})
utils["highlight-add"]("SignColumn", {bg = colors.dark0})
vim.cmd("highlight link Function GruvboxGreen")
vim.g.VM_leader = "m"
vim.g.rust_clip_command = "xclip -selection clipboard"
vim.g.rustfmt_autosave = 1
vim.g["conjure#client#fennel#aniseed#aniseed_module_prefix"] = "aniseed."
vim.g.vim_parinfer_filetypes = {"carp", "fennel"}
local remapped_space = nil
_G.RebindShit = function(newKey)
  remapped_space = {cur = newKey, old = vim.fn.maparg("<Space>", "i")}
  return utils.keymap("i", "<Space>", newKey, {buffer = true})
end
_G.UnbindSpaceStuff = function()
  if (remapped_space and (remapped_space ~= {})) then
    utils["del-keymap"]("i", "<Space>", true)
    if (remapped_space.old ~= "") then
      utils.keymap("i", "<Space>", remapped_space.old, {buffer = true})
    end
    remapped_space = nil
    return nil
  end
end
nvim.command("autocmd! InsertLeave * :call v:lua.UnbindSpaceStuff()")
utils.keymap("n", "<Tab>j", ":call v:lua.RebindShit('_')<CR>")
utils.keymap("n", "<Tab>k", ":call v:lua.RebindShit('::')<CR>")
utils.keymap("i", "<Tab>j", "<space><C-o>:call v:lua.RebindShit('_')<CR>")
utils.keymap("i", "<Tab>k", "<space><C-o>:call v:lua.RebindShit('::')<CR>")
utils.keymap("n", "\195\182", "a")
_G.clean_no_name_empty_buffers = function()
  local bufs
  local function _10_(_241)
    return (a["empty?"](vim.fn.bufname(_241)) and (vim.fn.bufwinnr(_241) < 0) and vim.api.nvim_buf_is_loaded(_241) and ("" == str.join(utils["buffer-content"](_241))) and vim.api.nvim_buf_get_option(_241, "buflisted"))
  end
  bufs = a.filter(_10_, vim.fn.range(1, vim.api.nvim_buf_get_number("$")))
  if not a["empty?"](bufs) then
    return vim.cmd(("bdelete " .. str.join(" ", bufs)))
  end
end
return vim.cmd("autocmd! BufCreate * :call v:lua.clean_no_name_empty_buffers()")