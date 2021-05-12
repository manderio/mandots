" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" haskell plugin
Plug 'neovimhaskell/haskell-vim'

" python plugin
Plug 'vim-python/python-syntax'

" coc plugin, language server support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" gruvbox theme plugin
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

inoremap <C-Left> <Nop>
inoremap <C-Right> <Nop>
nnoremap <C-Left> <Nop>
nnoremap <C-Right> <Nop>
vnoremap <C-Left> <Nop>
vnoremap <C-Right> <Nop>

" set up line breaks and tab
:set linebreak
:set expandtab
:set shiftwidth=4
:colorscheme gruvbox
