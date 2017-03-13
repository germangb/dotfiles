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
Plug 'majutsushi/tagbar'
Plug 'edkolev/tmuxline.vim'
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
map <C-K> <C-W><C-K>
map <C-L> <C-W><C-L>

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

"" window swap
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
"nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

"" ctags
let g:tagbar_iconchars = ['+', '-']
hi TagbarHighlight ctermbg=7 ctermfg=8

"" tmuxline
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '',
    \ 'right' : '',
    \ 'right_alt' : '',
    \ 'space' : ' '}
