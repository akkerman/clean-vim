set nocompatible
syntax on
filetype plugin on
filetype plugin indent on
set hidden

set path+=**
set incsearch

set autoread

" colors
color gruvbox
set background=dark

" swapfiles and undo
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile

" toggle highlightsearch
nnoremap <leader>n :set hlsearch!<cr>

set listchars=tab:»·,trail:·

if executable('ack')
  set grepprg=ack\ --nogroup\ --column\ "$*"
  set grepformat=%f:%l:%c:%m
endif

" default statusline with git branch 
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P


let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

cabbr <expr> %% expand('%:p:h')



set tabstop=4      " show existing tabs as 4 spaces
set shiftwidth=4   " indent 4 spaces with '>'
set expandtab      " insert 4 spaces when pressing tab
