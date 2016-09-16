set nocompatible

" Plug manager
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'elzr/vim-json'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
call plug#end()

" solarized
" set background=dark
" colorscheme solarized

" gitgutter
set updatetime=250

" vim config
syntax enable
hi lineNR ctermfg=darkGrey
hi foldcolumn ctermbg=black
hi colorcolumn ctermbg=1
hi lineNr ctermbg = 'black' ctermfg = 'green'
" hi NonText ctermbg = 'black'

" set cursorline
" hi CursorLine cterm=NONE ctermbg = 'black'

" kill the mouse
set mouse=

" spaces over tabs
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set laststatus=2
