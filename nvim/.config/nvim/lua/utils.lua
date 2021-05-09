local _0_0
do
  local name_0_ = "utils"
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
    return {autoload("aniseed.core"), autoload("aniseed.fennel"), autoload("aniseed.nvim")}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {["require-macros"] = {macros = true}, autoload = {a = "aniseed.core", fennel = "aniseed.fennel", nvim = "aniseed.nvim"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local a = _local_0_[1]
local fennel = _local_0_[2]
local nvim = _local_0_[3]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "utils"
do local _ = ({nil, _0_0, nil, {{nil}, nil, nil, nil}})[2] end
local plugin_installed_3f
do
  local v_0_
  do
    local v_0_0
    local function plugin_installed_3f0(name)
      return (nil ~= packer_plugins[name])
    end
    v_0_0 = plugin_installed_3f0
    _0_0["plugin-installed?"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["plugin-installed?"] = v_0_
  plugin_installed_3f = v_0_
end
local all
do
  local v_0_
  do
    local v_0_0
    local function all0(f, xs)
      return not a.some(not f(__fnl_global___241))
    end
    v_0_0 = all0
    _0_0["all"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["all"] = v_0_
  all = v_0_
end
local single_to_list
do
  local v_0_
  do
    local v_0_0
    local function single_to_list0(x)
      if a["table?"](x) then
        return x
      else
        return {x}
      end
    end
    v_0_0 = single_to_list0
    _0_0["single-to-list"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["single-to-list"] = v_0_
  single_to_list = v_0_
end
local contains_3f
do
  local v_0_
  do
    local v_0_0
    local function contains_3f0(list, elem)
      local function _2_(_241)
        return (elem == _241)
      end
      do local _ = a.some(_2_, list) end
      return false
    end
    v_0_0 = contains_3f0
    _0_0["contains?"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["contains?"] = v_0_
  contains_3f = v_0_
end
local filter_table
do
  local v_0_
  do
    local v_0_0
    local function filter_table0(f, t)
      local tbl_0_ = {}
      for k, v in pairs(t) do
        local _2_0, _3_0 = nil, nil
        if f(k, v) then
          _2_0, _3_0 = k, v
        else
        _2_0, _3_0 = nil
        end
        if ((nil ~= _2_0) and (nil ~= _3_0)) then
          local k_0_ = _2_0
          local v_0_1 = _3_0
          tbl_0_[k_0_] = v_0_1
        end
      end
      return tbl_0_
    end
    v_0_0 = filter_table0
    _0_0["filter-table"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["filter-table"] = v_0_
  filter_table = v_0_
end
local without_keys
do
  local v_0_
  do
    local v_0_0
    local function without_keys0(keys, t)
      local function _2_(_241)
        return not contains_3f(keys, _241)
      end
      return filter_table(_2_, t)
    end
    v_0_0 = without_keys0
    _0_0["without-keys"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["without-keys"] = v_0_
  without_keys = v_0_
end
local keymap
do
  local v_0_
  do
    local v_0_0
    local function keymap0(modes, from, to, _3fopts)
      local full_opts = without_keys({"buffer"}, a.merge({noremap = true, silent = true}, (_3fopts or {})))
      for _, mode in ipairs(single_to_list(modes)) do
        local _3_
        do
          local _2_0 = _3fopts
          if _2_0 then
            _3_ = (_2_0).buffer
          else
            _3_ = _2_0
          end
        end
        if _3_ then
          nvim.buf_set_keymap(0, mode, from, to, full_opts)
        else
          nvim.set_keymap(mode, from, to, full_opts)
        end
      end
      return nil
    end
    v_0_0 = keymap0
    _0_0["keymap"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["keymap"] = v_0_
  keymap = v_0_
end
local del_keymap
do
  local v_0_
  do
    local v_0_0
    local function del_keymap0(mode, from, _3fbuf_local)
      if _3fbuf_local then
        return nvim.buf_del_keymap(0, mode, from)
      else
        return nvim.del_keymap(mode, from)
      end
    end
    v_0_0 = del_keymap0
    _0_0["del-keymap"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["del-keymap"] = v_0_
  del_keymap = v_0_
end
local safe_require_plugin_config
do
  local v_0_
  local function safe_require_plugin_config0(name)
    local function _2_()
      return require(name)
    end
    local function _3_(_241)
      return a.println(("Error sourcing " .. name .. ":\n" .. fennel.traceback(_241)))
    end
    return xpcall(_2_, _3_)
  end
  v_0_ = safe_require_plugin_config0
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["safe-require-plugin-config"] = v_0_
  safe_require_plugin_config = v_0_
end
local use
do
  local v_0_
  do
    local v_0_0
    local function use0(...)
      local pkgs = {...}
      local packer = require("packer")
      local function _2_(use1)
        local data_0_ = pkgs
        for i_0_ = 1, a.count(data_0_), 2 do
          local name = (data_0_)[i_0_]
          local opts = (data_0_)[(i_0_ + 1)]
          do
            local _3_0 = opts
            if _3_0 then
              local _4_0 = (_3_0).mod
              if _4_0 then
                safe_require_plugin_config(_4_0)
              else
              end
            else
            end
          end
          use1(a.assoc(opts, 1, name))
        end
        return nil
      end
      return packer.startup(_2_)
    end
    v_0_0 = use0
    _0_0["use"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["use"] = v_0_
  use = v_0_
end
local buffer_content
do
  local v_0_
  do
    local v_0_0
    local function buffer_content0(bufnr)
      return vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
    end
    v_0_0 = buffer_content0
    _0_0["buffer-content"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["buffer-content"] = v_0_
  buffer_content = v_0_
end
local surround_if_present
do
  local v_0_
  do
    local v_0_0
    local function surround_if_present0(a0, mid, b)
      if mid then
        return (a0 .. mid .. b)
      else
        return ""
      end
    end
    v_0_0 = surround_if_present0
    _0_0["surround-if-present"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["surround-if-present"] = v_0_
  surround_if_present = v_0_
end
local highlight
do
  local v_0_
  do
    local v_0_0
    local function highlight0(group_arg, colset)
      local default = {bg = "NONE", fg = "NONE", gui = "NONE"}
      local opts = a.merge(default, colset)
      for _, group in ipairs(single_to_list(group_arg)) do
        nvim.command(("hi! " .. group .. " guifg='" .. opts.fg .. "' guibg='" .. opts.bg .. "' gui='" .. opts.gui .. "'"))
      end
      return nil
    end
    v_0_0 = highlight0
    _0_0["highlight"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["highlight"] = v_0_
  highlight = v_0_
end
local highlight_add
do
  local v_0_
  do
    local v_0_0
    local function highlight_add0(group_arg, colset)
      for _, group in ipairs(single_to_list(group_arg)) do
        nvim.command(("hi! " .. group .. surround_if_present(" guibg='", colset.bg, "'") .. surround_if_present(" guifg='", colset.fg, "'") .. surround_if_present(" gui='", colset.gui, "'")))
      end
      return nil
    end
    v_0_0 = highlight_add0
    _0_0["highlight-add"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["highlight-add"] = v_0_
  highlight_add = v_0_
end
local comp
do
  local v_0_
  do
    local v_0_0
    local function comp0(f, g)
      local function _2_(...)
        return f(g(...))
      end
      return _2_
    end
    v_0_0 = comp0
    _0_0["comp"] = v_0_0
    v_0_ = v_0_0
  end
  local t_0_ = (_0_0)["aniseed/locals"]
  t_0_["comp"] = v_0_
  comp = v_0_
end
return nil