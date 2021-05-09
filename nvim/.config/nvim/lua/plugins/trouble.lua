local _0_0
do
  local name_0_ = "plugins.trouble"
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
    return {autoload("colors"), autoload("utils"), require("trouble")}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {autoload = {colors = "colors", utils = "utils"}, require = {trouble = "trouble"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local colors = _local_0_[1]
local utils = _local_0_[2]
local trouble = _local_0_[3]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "plugins.trouble"
do local _ = ({nil, _0_0, nil, {{}, nil, nil, nil}})[2] end
trouble.setup({action_keys = {cancel = "q", close = "<esc>", hover = {"a", "K"}, jump = "o", jump_close = "<CR>"}, auto_close = true, auto_open = false, auto_preview = true, icons = false})
utils.highlight("LspTroubleFoldIcon", {bg = "NONE", fg = colors.bright_orange})
utils.highlight("LspTroubleCount", {bg = "NONE", fg = colors.bright_green})
utils.highlight("LspTroubleText", {bg = "NONE", fg = colors.light0})
utils.highlight("LspTroubleSignError", {bg = "NONE", fg = colors.bright_red})
utils.highlight("LspTroubleSignWarning", {bg = "NONE", fg = colors.bright_yellow})
utils.highlight("LspTroubleSignInformation", {bg = "NONE", fg = colors.bright_aqua})
return utils.highlight("LspTroubleSignHint", {bg = "NONE", fg = colors.bright_blue})