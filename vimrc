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
set dir=~/tmp
set undodir=~/tmp
set undofile

" toggle highlightsearch
nnoremap <leader>n :set hlsearch!<cr>
