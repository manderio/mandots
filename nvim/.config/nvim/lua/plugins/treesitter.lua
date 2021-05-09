local _0_0
do
  local name_0_ = "plugins.treesitter"
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
    return {autoload("aniseed.core"), require("nvim-treesitter.configs")}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {["require-macros"] = {macros = true}, autoload = {a = "aniseed.core"}, require = {configs = "nvim-treesitter.configs"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local a = _local_0_[1]
local configs = _local_0_[2]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "plugins.treesitter"
do local _ = ({nil, _0_0, nil, {{nil}, nil, nil, nil}})[2] end
return configs.setup({context_commentstring = {enable = true}, ensure_installed = "all", highlight = {disable = {"fennel"}, enable = true}, incremental_selection = {enable = true, keymaps = {init_selection = "gss", node_decremental = "gsh", node_incremental = "gsl", scope_decremental = "gsk", scope_incremental = "gsj"}}, rainbow = {enable = true, extended_mode = true}})