let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_delay = 0
let g:ale_completion_enabled=1

let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_fixers = { 'javascript': ['importjs','eslint'] }

nmap <silent> <F2> <Plug>(ale_next_wrap)
nmap <silent> <F3> <Plug>(ale_previous_wrap)
nmap <leader>af <Plug>(ale_fix)
nmap <leader>an <Plug>(ale_next_wrap)
nmap <leader>ap <Plug>(ale_previous_wrap)
