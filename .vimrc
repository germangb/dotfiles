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
call plug#end()

"solarized
"set background=dark
"colorscheme solarized

"" gitgutter
set updatetime=250

"" nerdtree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '+'
let g:NERDTreeHighlightCursorline = 0

map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-m> :NERDTreeFocus<CR>

"" vim config
syntax enable
hi lineNR ctermfg=darkGrey
hi foldcolumn ctermbg=black
hi colorcolumn ctermbg=1
hi lineNr ctermbg = 'black' ctermfg = 'green'
" hi NonText ctermbg = 'black'

" set cursorline
" hi CursorLine cterm=NONE ctermbg = 'black'

"" kill the mouse
set mouse=

"" spaces over tabs
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set laststatus=2

"" splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

set splitbelow
set splitright

"" word wraping
set nowrap
