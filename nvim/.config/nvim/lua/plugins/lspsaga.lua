local _0_0
do
  local name_0_ = "plugins.lspsaga"
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
    return {autoload("colors"), autoload("lspsaga"), autoload("utils")}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {autoload = {colors = "colors", saga = "lspsaga", utils = "utils"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local colors = _local_0_[1]
local saga = _local_0_[2]
local utils = _local_0_[3]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "plugins.lspsaga"
do local _ = ({nil, _0_0, nil, {{}, nil, nil, nil}})[2] end
saga.init_lsp_saga({border_style = "single", code_action_keys = {exec = "<CR>", quit = "<esc>"}, code_action_prompt = {enable = true, sign = true, virtual_text = false}, finder_action_keys = {open = "<CR>", quit = "<esc>", scroll_down = "<C-d>", scroll_up = "<C-u>", split = "b", vsplit = "v"}, rename_action_keys = {exec = "<CR>", quit = "<esc>"}})
utils.highlight({"LspFloatWinBorder", "LspSagaHoverBorder", "LspSagaRenameBorder", "LspSagaSignatureHelpBorder", "LspSagaCodeActionBorder", "LspSagaDefPreviewBorder", "LspSagaDiagnosticBorder"}, {bg = colors.dark0_hard, fg = colors.dark0_hard})
utils.highlight({"LspSagaDiagnosticTruncateLine", "LspSagaDocTruncateLine", "LspSagaShTruncateLine"}, {bg = "NONE", fg = colors.dark0})
utils.highlight({"TargetWord", "LspSagaCodeActionTitle", "LspSagaBorderTitle", "LspSagaCodeActionContent", "LspSagaFinderSelection", "LspSagaDiagnosticHeader"}, {fg = colors.bright_aqua})
utils.highlight("LspFloatWinNormal", {bg = colors.dark0_hard})
utils.highlight("LspFloatWinBorder", {bg = colors.dark0_hard, fg = colors.dark0_hard})
return utils.highlight("TargetWord", {fg = colors.bright_aqua})