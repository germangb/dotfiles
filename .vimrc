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

" smooth scroll
Plug 'terryma/vim-smooth-scroll'
noremap <silent> <c-i> :call smooth_scroll#up(&scroll, 8, 2)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll, 8, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}
let g:airline_theme='term'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline#extensions#whitespace#symbol = 'Ξ'
let g:airline#extensions#whitespace#enabled = 0

" gugitive
Plug 'tpope/vim-fugitive'

" json
Plug 'elzr/vim-json'

call plug#end()

