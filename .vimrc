set nocompatible
set hidden

" Plug manager
call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'elzr/vim-json'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'wesQ3/vim-windowswap'
Plug 'rstacruz/vim-remux'
Plug 'udalov/kotlin-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'majutsushi/tagbar'
Plug 'edkolev/tmuxline.vim'
call plug#end()

"solarized
set background=dark

"" gitgutter
set updatetime=250

"" ctrlp
let g:ctrlp_show_hidden = 1
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.vim/*

"" nerdtree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '+'
let g:NERDTreeHighlightCursorline = 0

map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-m> :NERDTreeFocus<CR>

"" leader key
let mapleader=","
set timeoutlen=2000

"" line numbers
map <leader>nn :set number<CR>
map <leader>NN :set nonumber<CR>

"" tab nav
map <leader>aa :tabprevious<CR>
map <leader>dd :tabnext<CR>
map <leader>ww :tabnew<CR>
map <leader>qq :tabclose<CR>

"" quick resize
nnoremap <leader>++ :res +4<CR>
nnoremap <leader>-- :res -4<CR>

"" vim config
syntax enable
hi lineNR ctermfg=darkGrey
hi foldcolumn ctermbg=black
hi colorcolumn ctermbg=1
"hi NonText ctermbg=16

"" cursorline
"hi lineNr ctermbg=16 ctermfg=8
hi lineNr ctermfg=8
hi CursorLine cterm=None ctermbg=Black
"set cursorline

"" vert split
set fillchars+=vert:\ 

"" highlight search
"set hlsearch

" set cursorline
"hi CursorLine cterm=NONE ctermbg = 'black'

"" kill the mouse
set mouse=

"" space indentation
set expandtab
set tabstop=2
set softtabstop=0
set shiftwidth=2
set laststatus=2

"" splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
map <C-K> <C-W><C-K>
map <C-L> <C-W><C-L>

set splitbelow
set splitright

"" vim-remux
let g:remux_key = '<C-r>'

"" youcompleteme
let g:ycm_server_python_interpreter = '/usr/bin/python2'
highlight YcmErrorLine ctermbg=black
highlight YcmErrorSection ctermbg=yellow ctermfg=black

"" airline
let g:airline#extensions#tabline#enabled = 0
let g:airline_theme='distinguished'
let g:airline#extensions#tabline#left_alt_sep = ''

"" window swap
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
"nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

"" ctags
let g:tagbar_iconchars = ['+', '-']
hi TagbarHighlight ctermbg=7 ctermfg=8

"" tmuxline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
