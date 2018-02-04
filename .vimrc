set nocompatible

syntax enable
set magic
set smartcase

set mouse=a

set background=dark
set expandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4
set laststatus=4
set splitbelow
set splitright

"hi VertSplit ctermbg=none ctermfg=6 cterm=none
hi VertSplit ctermbg=16 ctermfg=13 cterm=none
hi NonText ctermfg=6 ctermbg=none

map <F6> :setlocal spell! spelllang=en<CR>

" set leader key to comma
let mapleader=","
set timeoutlen=2000

" line numbers
hi lineNR ctermfg=darkGrey
map <leader>nn :set invrelativenumber invnumber<CR>
set cpoptions+=n

" vertical resize
map <leader>v+ :vertical resize +4<CR>
map <leader>v- :vertical resize -4<CR>

" plugins
call plug#begin('~/.vim/plugged')

" ctrl+p
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.vim/*,*/target/*

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

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set laststatus=2
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='term'
let g:airline_theme='monochrome'
"let g:airline_powerline_fonts = 1
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline#extensions#whitespace#symbol = 'Ξ'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#syntastic#enabled = 0

" gugitive
Plug 'tpope/vim-fugitive'

" json
Plug 'elzr/vim-json'

" syntastic
"Plug 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" racer
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
set hidden
let g:racer_cmd = "/usr/bin/racer"
let g:racer_experimental_completer = 1
let g:syntastic_rust_checkers = ['cargo']

" rust formatting
map <leader>ff :RustFmt<CR>

" tmuxline
"Plug 'edkolev/tmuxline.vim'

" delimitMate
Plug 'Raimondi/delimitMate'

" surround
"Plug 'tpope/vim-surround'

" conque-shell
"Plug 'pthrasher/conqueterm-vim'

" indent guides
"Plug 'Yggdroot/indentLine'
"let g:indentLine_char = '¦'
"let g:indentLine_color_term = 239

" clipboard
Plug 'christoomey/vim-system-copy'

" Splits
Plug 'wellle/visual-split.vim'

"ale
Plug 'w0rp/ale'

call plug#end()

