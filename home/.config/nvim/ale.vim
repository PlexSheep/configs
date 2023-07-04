" navigate between errors quickly
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_disable_lsp = 1
let g:ale_use_neovim_diagnostics_api = 1
