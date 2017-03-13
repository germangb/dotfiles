set nocompatible

" Plug manager
call plug#begin('~/.vim/plugged')
Plug 'elzr/vim-json'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'wesQ3/vim-windowswap'
Plug 'tfnico/vim-gradle'
Plug 'rstacruz/vim-remux'
Plug 'udalov/kotlin-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"solarized
set background=light

"" gitgutter
set updatetime=250

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
map <leader>mm :tabprevious<CR>
map <leader>.. :tabnext<CR>
map <leader>kk :tabnew<CR>

"" vim config
syntax enable
hi lineNR ctermfg=darkGrey
hi foldcolumn ctermbg=black
hi colorcolumn ctermbg=1
hi NonText ctermbg = 16

"" cursorline
hi lineNr ctermbg=Black ctermfg=None
hi CursorLine cterm=None ctermbg=Black
set cursorline

"" vert split
set fillchars+=vert:\\

"" highlight search
"set hlsearch

" set cursorline
hi CursorLine cterm=NONE ctermbg = 'black'

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
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"map <leader>mm :make 
map <leader>gg :!gradle 
map <leader>gw :!gradlew 
"map <leader>mr :make run<CR>

set splitbelow
set splitright

"" vim-remux
let g:remux_key = '<C-r>'

"" youcompleteme
let g:ycm_server_python_interpreter = '/usr/bin/python2'
highlight YcmErrorLine ctermbg=black
highlight YcmErrorSection ctermbg=yellow ctermfg=black

"" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='distinguished'
