" navigate between errors quickly
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


let g:ale_use_neovim_diagnostics_api = 1


let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['rustfmt'],
\}

let g:ale_linters = {
\   'rust': ['analyzer', 'cspell', 'cargo'],
\}
