local _0_0
do
  local name_0_ = "plugins.compe"
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
    return {autoload("compe")}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {autoload = {compe = "compe"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local compe = _local_0_[1]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "plugins.compe"
do local _ = ({nil, _0_0, nil, {{}, nil, nil, nil}})[2] end
return compe.setup({autocomplete = false, debug = false, documentation = true, enabled = true, incomplete_delay = 400, max_abbr_width = 100, max_kind_width = 100, max_menu_width = 100, min_length = 1, preselect = "enable", source = {buffer = true, calc = true, conjure = true, nvim_lsp = true, nvim_lua = true, path = true, vsnip = false}, source_timeout = 200, throttle_time = 80})