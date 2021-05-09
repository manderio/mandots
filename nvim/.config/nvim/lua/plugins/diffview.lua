local _0_0
do
  local name_0_ = "plugins.diffview"
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
    return {autoload("diffview.config"), autoload("diffview")}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {autoload = {cb = "diffview.config", diffview = "diffview"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local cb = _local_0_[1]
local diffview = _local_0_[2]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "plugins.diffview"
do local _ = ({nil, _0_0, nil, {{}, nil, nil, nil}})[2] end
return diffview.setup({diff_binaries = false, file_panel = {use_icons = false, width = 35}, key_bindings = {view = {["<leader>dd"] = cb.diffview_callback("toggle_files"), ["<leader>dn"] = cb.diffview_callback("select_next_entry"), ["<leader>dp"] = cb.diffview_callback("select_prev_entry")}}})