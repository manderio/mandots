local _0_0
do
  local name_0_ = "colors"
  local module_0_
  do
    local x_0_ = package.loaded[name_0_]
    if ("table" == type(x_0_)) then
      module_0_ = x_0_
    else
      module_0_ = {bright_aqua = "#8ec07c", bright_blue = "#83a598", bright_green = "#b8bb26", bright_orange = "#fe8019", bright_purple = "#d3869b", bright_red = "#fb4934", bright_yellow = "#fabd2f", dark0 = "#282828", dark0_hard = "#1d2021", dark0_soft = "#32302f", dark1 = "#3c3836", dark2 = "#504945", dark3 = "#665c54", dark4 = "#7c6f64", faded_aqua = "#427b58", faded_blue = "#076678", faded_green = "#79740e", faded_orange = "#af3a03", faded_purple = "#8f3f71", faded_red = "#9d0006", faded_yellow = "#b57614", gray = "#928374", light0 = "#fbf1c7", light0_hard = "#f9f5d7", light0_soft = "#f2e5bc", light1 = "#ebdbb2", light2 = "#d5c4a1", light3 = "#bdae93", light4 = "#a89984", neutral_aqua = "#689d6a", neutral_blue = "#458588", neutral_green = "#98971a", neutral_orange = "#d65d0e", neutral_purple = "#b16286", neutral_red = "#cc241d", neutral_yellow = "#d79921"}
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
    return {}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local _2amodule_2a = _0_0
local _2amodule_name_2a = "colors"
return ({nil, _0_0, nil, {{}, nil, nil, nil}})[2]