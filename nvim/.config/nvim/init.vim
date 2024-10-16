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
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

" SASS CSS
Plug 'shmargum/vim-sass-colors', { 'branch': 'master'}

" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

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
let g:coc_disable_startup_warning = 1

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

" Coc stuff
"
" This is a lot!
"
" if hidden is not set, TextEdit might fail.
set hidden



" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=100

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" ansible
let g:coc_filetype_map = {
  \ 'yaml.ansible': 'ansible',
  \ }

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

