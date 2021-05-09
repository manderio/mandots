local _0_0
do
  local name_0_ = "plugins.gitsigns"
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
    return {autoload("colors"), autoload("gitsigns"), autoload("utils")}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {autoload = {colors = "colors", gitsigns = "gitsigns", utils = "utils"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local colors = _local_0_[1]
local gitsigns = _local_0_[2]
local utils = _local_0_[3]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "plugins.gitsigns"
do local _ = ({nil, _0_0, nil, {{}, nil, nil, nil}})[2] end
gitsigns.setup({current_line_blame = false, keymaps = {buffer = true, noremap = true}, signs = {add = {text = "\226\150\141"}, change = {text = "\226\150\141"}, changedelete = {text = "\226\150\141"}, delete = {text = "\226\150\141"}, topdelete = {text = "\226\150\141"}}, update_debounce = 100})
utils.highlight("GitSignsAdd", {bg = "NONE", fg = colors.bright_aqua})
utils.highlight("GitSignsDelete", {bg = "NONE", fg = colors.neutral_red})
return utils.highlight("GitSignsChange", {bg = "NONE", fg = colors.bright_blue})