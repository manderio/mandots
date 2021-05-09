local _0_0
do
  local name_0_ = "plugins"
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
    return {require("utils")}
  end
  ok_3f_0_, val_0_ = pcall(_1_)
  if ok_3f_0_ then
    _0_0["aniseed/local-fns"] = {require = {utils = "utils"}}
    return val_0_
  else
    return print(val_0_)
  end
end
local _local_0_ = _1_(...)
local utils = _local_0_[1]
local _2amodule_2a = _0_0
local _2amodule_name_2a = "plugins"
do local _ = ({nil, _0_0, nil, {{}, nil, nil, nil}})[2] end
return utils.use("nvim-telescope/telescope.nvim", {mod = "plugins.telescope", requires = {"nvim-lua/popup.nvim", "nvim-lua/plenary.nvim"}}, "p00f/nvim-ts-rainbow", {}, "romgrk/nvim-treesitter-context", {}, "JoosepAlviste/nvim-ts-context-commentstring", {}, "nvim-treesitter/nvim-treesitter", {mod = "plugins.treesitter", run = ":TSUpdate"}, "folke/which-key.nvim", {}, "gennaro-tedesco/nvim-jqx", {ft = {"json"}}, "Olical/aniseed", {}, "norcalli/nvim.lua", {}, "glepnir/galaxyline.nvim", {mod = "plugins.galaxyline"}, "akinsho/nvim-bufferline.lua", {mod = "plugins.bufferline"}, "sindrets/diffview.nvim", {mod = "plugins.diffview"}, "tweekmonster/startuptime.vim", {cmd = {"StartupTime"}}, "tpope/vim-repeat", {}, "junegunn/goyo.vim", {cmd = "Goyo"}, "lewis6991/gitsigns.nvim", {mod = "plugins.gitsigns"}, "gruvbox-community/gruvbox", {}, "tpope/vim-fugitive", {}, "preservim/nerdcommenter", {}, "godlygeek/tabular", {}, "tpope/vim-surround", {}, "christoomey/vim-tmux-navigator", {}, "nathanaelkane/vim-indent-guides", {}, "terryma/vim-multiple-cursors", {}, "mg979/vim-visual-multi", {}, "hauleth/sad.vim", {}, "wellle/targets.vim", {}, "iamcco/markdown-preview.nvim", {run = vim.fn["mkdp#util#install"]}, "folke/lsp-trouble.nvim", {mod = "plugins.trouble"}, "simrat39/symbols-outline.nvim", {mod = "plugins.symbols-outline"}, "neovim/nvim-lspconfig", {}, "hrsh7th/nvim-compe", {mod = "plugins.compe"}, "glepnir/lspsaga.nvim", {mod = "plugins.lspsaga"}, "Olical/conjure", {}, "tami5/compe-conjure", {}, "machakann/vim-highlightedyank", {}, "ciaranm/detectindent", {mod = "plugins.detect-indent"}, "pechorin/any-jump.vim", {}, "justinmk/vim-sneak", {mod = "plugins.sneak"}, "psliwka/vim-smoothie", {}, "editorconfig/editorconfig-vim", {}, "honza/vim-snippets", {}, "tommcdo/vim-exchange", {}, "bhurlow/vim-parinfer", {ft = {"fennel", "carp", "lisp", "elisp"}}, "bduggan/vim-raku", {ft = {"raku"}}, "LnL7/vim-nix", {ft = {"nix"}}, "kevinoid/vim-jsonc", {}, "ap/vim-css-color", {}, "pangloss/vim-javascript", {}, "ianks/vim-tsx", {}, "leafgarland/typescript-vim", {}, "sheerun/vim-polyglot", {}, "HerringtonDarkholme/yats.vim", {}, "mxw/vim-jsx", {}, "mattn/emmet-vim", {mod = "plugins.emmet"}, "purescript-contrib/purescript-vim", {}, "derekelkins/agda-vim", {ft = {"agda"}}, "neovimhaskell/haskell-vim", {ft = {"haskell"}}, "rust-lang/rust.vim", {ft = {"rust"}, requires = {"mattn/webapi-vim"}}, "simrat39/rust-tools.nvim", {ft = {"rust"}}, "ray-x/lsp_signature.nvim", {}, "bakpakin/fennel.vim", {}, "tjdevries/nlua.nvim", {})