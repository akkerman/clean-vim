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

function! LinterStatus() abort
   let l:counts = ale#statusline#Count(bufnr(''))
   let l:all_errors = l:counts.error + l:counts.style_error
   let l:all_non_errors = l:counts.total - l:all_errors
   return l:counts.total == 0 ? '' : printf(
   \ ' W:%d,E:%d ',
   \ l:all_non_errors,
   \ l:all_errors
   \)
endfunction

" default statusline with git branch 
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %{LinterStatus()}\ %P


let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

cabbr <expr> %% expand('%:p:h')



set tabstop=4      " show existing tabs as 4 spaces
set shiftwidth=4   " indent 4 spaces with '>'
set expandtab      " insert 4 spaces when pressing tab

function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

map <F11> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
set guioptions=i

let g:haddock_browser='/usr/sbin/chromium'
