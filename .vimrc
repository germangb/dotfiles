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

map <F6> :setlocal spell! spelllang=en<CR>

" set leader key to comma
let mapleader=","
set timeoutlen=2000

" line numbers
hi lineNR ctermfg=darkGrey
map <leader>nn :set invnumber<CR>
set cpoptions+=n

" plugins
call plug#begin('~/.vim/plugged')

" ctrl+p
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.vim/*

" gitgutter
Plug 'airblade/vim-gitgutter'
set updatetime=250

" vim-remux
Plug 'rstacruz/vim-remux'
map <C-r> :Remux<CR>

" goyo
Plug 'junegunn/goyo.vim'
let g:goyo_width = 100
map <leader>gg :Goyo<CR>

call plug#end()

