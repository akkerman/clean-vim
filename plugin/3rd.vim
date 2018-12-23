" 
" file: plugin/3rd.vim
" vim: set fdm=marker fcs=fold\:\ :

" tpope/vim-fugitive {{{1
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>

" tpope/vim-markdown {{{1
let g:markdown_fenced_languages = ["yaml", "java","sh", "javascript", "html", "abap", "groovy", "xml"]
