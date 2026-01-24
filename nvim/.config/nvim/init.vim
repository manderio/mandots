" Autoinstall vim plug if it is missing
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" coc needs some work and I haven't had use for it yet

" ale
Plug 'dense-analysis/ale'

" gitgutter
Plug 'airblade/vim-gitgutter'

" lightline
 Plug 'itchyny/lightline.vim'

 " crtlp
 Plug 'ctrlpvim/ctrlp.vim'
" nerdtree
 Plug 'preservim/nerdtree'

 " Language packs
 Plug 'sheerun/vim-polyglot'

 " Coc
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" SASS CSS
Plug 'shmargum/vim-sass-colors', { 'branch': 'master'}

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" jedi - python
Plug 'davidhalter/jedi-vim'

" tab
Plug 'ervandew/supertab'

" Initialize plugin system
call plug#end()

" Color configuration
" set termguicolors

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
" Vim-Go
let g:go_fmt_command = "goimports"

" Ale
" Disable ale by default
autocmd VimEnter * :ALEDisable
" Fix some formatting
let g:ale_sign_error = '▍'
let g:ale_sign_warning = '▍'
" Toggle ale with ctrl+b
nnoremap <silent> <C-b> :ALEToggle <CR>

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
"let g:coc_disable_startup_warning = 1

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

" ansible
"let g:coc_filetype_map = {
"  \ 'yaml.ansible': 'ansible',
"  \ }

" filetype autofile
au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile */inventories/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile */roles/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile */tasks/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile *ansible*/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile *checkmk*/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile *.j2 set filetype=ruby.jinja2
au BufRead,BufNewFile jenkinsfile set filetype=Jenkinsfile


" lightline color scheme
 let g:lightline = {
       \ 'colorscheme': '16color',
       \ }

" colorscheme vim
hi clear
syntax reset
let g:colors_name = "mander"
set background=dark
set t_Co=256
hi Normal guifg=#f4ecec ctermbg=NONE guibg=#1b1818 gui=NONE

hi DiffText guifg=#ca4949 guibg=NONE
hi ErrorMsg guifg=#ca4949 guibg=NONE
hi WarningMsg guifg=#ca4949 guibg=NONE
hi PreProc guifg=#ca4949 guibg=NONE
hi Exception guifg=#ca4949 guibg=NONE
hi Error guifg=#ca4949 guibg=NONE
hi DiffDelete guifg=#ca4949 guibg=NONE
hi GitGutterDelete guifg=#ca4949 guibg=NONE
hi GitGutterChangeDelete guifg=#ca4949 guibg=NONE
hi cssIdentifier guifg=#ca4949 guibg=NONE
hi cssImportant guifg=#ca4949 guibg=NONE
hi Type guifg=#ca4949 guibg=NONE
hi Identifier guifg=#ca4949 guibg=NONE
hi PMenuSel guifg=#4b8b8b guibg=NONE
hi Constant guifg=#4b8b8b guibg=NONE
hi Repeat guifg=#4b8b8b guibg=NONE
hi DiffAdd guifg=#4b8b8b guibg=NONE
hi GitGutterAdd guifg=#4b8b8b guibg=NONE
hi cssIncludeKeyword guifg=#4b8b8b guibg=NONE
hi Keyword guifg=#4b8b8b guibg=NONE
hi IncSearch guifg=#a06e3b guibg=NONE
hi Title guifg=#a06e3b guibg=NONE
hi PreCondit guifg=#a06e3b guibg=NONE
hi Debug guifg=#a06e3b guibg=NONE
hi SpecialChar guifg=#a06e3b guibg=NONE
hi Conditional guifg=#a06e3b guibg=NONE
hi Todo guifg=#a06e3b guibg=NONE
hi Special guifg=#a06e3b guibg=NONE
hi Label guifg=#a06e3b guibg=NONE
hi Delimiter guifg=#a06e3b guibg=NONE
hi Number guifg=#a06e3b guibg=NONE
hi CursorLineNR guifg=#a06e3b guibg=NONE
hi Define guifg=#a06e3b guibg=NONE
hi MoreMsg guifg=#a06e3b guibg=NONE
hi Tag guifg=#a06e3b guibg=NONE
hi String guifg=#a06e3b guibg=NONE
hi MatchParen guifg=#a06e3b guibg=NONE
hi Macro guifg=#a06e3b guibg=NONE
hi DiffChange guifg=#a06e3b guibg=NONE
hi GitGutterChange guifg=#a06e3b guibg=NONE
hi cssColor guifg=#a06e3b guibg=NONE
hi Function guifg=#bd5187 guibg=NONE
hi Directory guifg=#5485b6 guibg=NONE
hi markdownLinkText guifg=#5485b6 guibg=NONE
hi javaScriptBoolean guifg=#5485b6 guibg=NONE
hi Include guifg=#5485b6 guibg=NONE
hi Storage guifg=#5485b6 guibg=NONE
hi cssClassName guifg=#5485b6 guibg=NONE
hi cssClassNameDot guifg=#5485b6 guibg=NONE
hi Statement guifg=#7e7777 guibg=NONE
hi Operator guifg=#7e7777 guibg=NONE
hi cssAttr guifg=#7e7777 guibg=NONE


hi Pmenu guifg=#f4ecec guibg=#454545
hi SignColumn guibg=#1b1818
hi Title guifg=#f4ecec
hi LineNr guifg=#a96b6b guibg=#1b1818
hi NonText guifg=#c481ff guibg=#1b1818
hi Comment guifg=#c481ff gui=italic
hi SpecialComment guifg=#c481ff gui=italic guibg=NONE
hi CursorLine guibg=#454545
hi TabLineFill gui=NONE guibg=#454545
hi TabLine guifg=#a96b6b guibg=#454545 gui=NONE
hi StatusLine gui=bold guibg=#454545 guifg=#f4ecec
hi StatusLineNC gui=NONE guibg=#1b1818 guifg=#f4ecec
hi Search guibg=#c481ff guifg=#f4ecec
hi VertSplit gui=NONE guifg=#454545 guibg=NONE
hi Visual gui=NONE guibg=#454545

" Trying to fix pmenu color
hi Pmenu ctermfg=8 ctermbg=16 guifg=#d6d5d4 guibg=#090300
hi PmenuSel ctermfg=8 ctermbg=16 guifg=#d6d5d4 guibg=#090300

