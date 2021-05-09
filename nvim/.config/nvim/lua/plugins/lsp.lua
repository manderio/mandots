local _0_0
do
  local name_0_ = "plugins.lsp"
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
    return {require("aniseed.core"), require("lspconfig"), require("lspconfig.configs"), require("utils")}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {["require-macros"] = {macros = true}, require = {["lsp-configs"] = "lspconfig.configs", a = "aniseed.core", lsp = "lspconfig", utils = "utils"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local a = _local_0_[1]
local lsp = _local_0_[2]
local lsp_configs = _local_0_[3]
local utils = _local_0_[4]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "plugins.lsp"
do local _ = ({nil, _0_0, nil, {{nil}, nil, nil, nil}})[2] end
local function on_attach(client, bufnr)
  if (nil ~= packer_plugins["lsp_signature.nvim"]) then
    local lsp_signature = require("lsp_signature")
    lsp_signature.on_attach()
  else
    print(("plugin disabled " .. "lsp_signature.nvim"))
  end
  if client.resolved_capabilities.document_highlight then
    utils.highlight("LspReferenceRead", {gui = "underline"})
    utils.highlight("LspReferenceText", {gui = "underline"})
    utils.highlight("LspReferenceWrite", {gui = "underline"})
    return vim.api.nvim_exec("augroup lsp_document_highlight\n           autocmd! * <buffer> \n           autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight() \n           autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n         augroup END", false)
  end
end
local function better_root_pattern(patterns, except_patterns)
  local function _2_(path)
    if not lsp.util.root_pattern(except_patterns)(path) then
      return lsp.util.root_pattern(patterns)(path)
    end
  end
  return _2_
end
local function init_lsp(lsp_name, _3fopts)
  local merged_opts = a.merge({on_attach = on_attach}, (_3fopts or {}))
  return lsp[lsp_name].setup(merged_opts)
end
do
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.completion.completionItem.resolveSupport = {properties = {"documentation", "detail", "additionalTextEdits"}}
  local function _2_(...)
    on_attach(...)
    if (nil ~= packer_plugins["rust-tools.nvim"]) then
      local rust_tools = require("rust-tools")
      return rust_tools.setup({tools = {inlay_hints = {show_parameter_hints = false}}})
    else
      return print(("plugin disabled " .. "rust-tools.nvim"))
    end
  end
  lsp.rust_analyzer.setup({capabilities = capabilities, on_attach = _2_})
end
init_lsp("tsserver", {root_dir = lsp.util.root_pattern("package.json")})
local function _2_()
  return vim.lsp.buf.range_formatting({}, {0, 0}, {vim.fn.line("$"), 0})
end
init_lsp("jsonls", {commands = {Format = {_2_}}})
init_lsp("denols", {root_dir = better_root_pattern({".git"}, {"package.json"})})
init_lsp("hls", {settings = {languageServerHaskell = {formattingProvider = "stylish-haskell"}}})
init_lsp("ocamllsp")
init_lsp("vimls")
init_lsp("bashls")
init_lsp("erlangls")
init_lsp("yamlls")
init_lsp("html")
init_lsp("cssls")
vim.o.signcolumn = "yes"
return nil