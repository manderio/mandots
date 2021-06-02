" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" haskell plugin
Plug 'neovimhaskell/haskell-vim'

" coc plugin, language server support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" gruvbox theme plugin
Plug 'morhetz/gruvbox'

" gitgutter
Plug 'airblade/vim-gitgutter'

" lightline
 Plug 'itchyny/lightline.vim'

 " crtlp
 Plug 'ctrlpvim/ctrlp.vim'

 " nerdtree
 Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()

" keymap configuration
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

" plugin configuration

" nerdtree
autocmd VimEnter * NERDTree | wincmd p

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" ctrlp keybinds
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'

" fix coc
let g:coc_disable_startup_warning = 1

" fix gruvbox
set background=dark
let g:gruvbox_number_column='bg0'
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" lightline
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

" set up line breaks and tab
:set linebreak
:set expandtab
:set shiftwidth=4
:set rnu
:set linespace=5

" Fix splits
:set splitbelow

" Fix split keybinds
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

