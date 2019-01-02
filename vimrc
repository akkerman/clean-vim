set nocompatible
syntax on
filetype plugin on
filetype plugin indent on
set hidden

set path+=**
set incsearch

set autoread

" colors
set t_Co=256
set background=dark
color gruvbox

" swapfiles and undo
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile

" toggle highlightsearch
nnoremap <leader>n :set hlsearch!<cr>
