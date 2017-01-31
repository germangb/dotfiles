set nocompatible

" Plug manager
call plug#begin('~/.vim/plugged')
"Plug 'altercation/vim-colors-solarized'
Plug 'elzr/vim-json'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wesQ3/vim-windowswap'
Plug 'tfnico/vim-gradle'
Plug 'rstacruz/vim-remux'
"Plug 'artur-shaik/vim-javacomplete2'
Plug 'udalov/kotlin-vim'
call plug#end()

"solarized
"set background=dark
set background=light
"colorscheme solarized

"" gitgutter
set updatetime=250

"" nerdtree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '+'
let g:NERDTreeHighlightCursorline = 0

map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-m> :NERDTreeFocus<CR>

"" leader
let mapleader=","
set timeoutlen=2000

"" line numbers
map <leader>nn :set number<CR>
map <leader>NN :set nonumber<CR>

"" vim config
syntax enable
hi lineNR ctermfg=darkGrey
hi foldcolumn ctermbg=black
hi colorcolumn ctermbg=1
hi lineNr ctermbg = 'black' ctermfg = 'green'
"hi NonText ctermbg = 'black'

"" highlight search
set hlsearch

" set cursorline
"hi CursorLine cterm=NONE ctermbg = 'black'

"" kill the mouse
set mouse=

"" spaces over tabs
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set laststatus=4

"" splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"" javacomplete
"autocmd FileType java setlocal omnifunc=javacomplete#Complete

"" compiler
"compiler gradle

map <leader>mm :make 
map <leader>gg :!gradle 
map <leader>gw :!gradlew 
"map <leader>mr :make run<CR>

set splitbelow
set splitright

"" vim-remux
let g:remux_key = '<C-r>'

"" cursorline
highlight CursorLine cterm=None ctermbg=None
set cursorline
