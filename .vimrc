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

hi VertSplit ctermbg=none ctermfg=2 cterm=none
hi NonText ctermfg=4 ctermbg=none

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

call plug#end()

