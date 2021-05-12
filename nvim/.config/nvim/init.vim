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

" gruvbox plugin
Plug 'morhetz/gruvbox'

" fix colors (hopefully)
Plug 'godlygeek/csapprox'

" Initialize plugin system
call plug#end()

" fix keymaps
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

" fix linebreaks
:set linebreak
:set expandtab
:set shiftwidth=4

" set up the best colorscheme
:let g:gruvbox_contrast_dark='(hard)'
:colorscheme gruvbox
:set background=dark

:let g:coc_disable_startup_warning = 1
