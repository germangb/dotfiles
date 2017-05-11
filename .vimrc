set nocompatible

syntax enable
set magic
set smartcase
set background=dark
set expandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4
set laststatus=4
set splitbelow
set splitright

" set leader key to comma
let mapleader=","
set timeoutlen=2000

" line numbers
hi lineNR ctermfg=darkGrey
map <leader>nn :set number<CR>
map <leader>NN :set nonumber<CR>

" plugins
call plug#begin('~/.vim/plugged')

" ctrl+p
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.vim/*

" gitgutter
Plug 'airblade/vim-gitgutter'
set updatetime=250

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"set ttimeoutlen=50
set laststatus=2
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
"let g:airline#extensions#tmuxline#enabled = 0
"let g:airline#extensions#branch#enabled = 1
let g:airline_theme='distinguished'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

call plug#end()

