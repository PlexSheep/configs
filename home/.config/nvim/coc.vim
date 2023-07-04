inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"


"CocInstall coc-clangd coc-cmake coc-css coc-floaterm coc-fzf-preview coc-git coc-html coc-json
"CocInstall coc-lists coc-lua coc-pyright coc-rust-analyzer coc-sh coc-snippets coc-sql
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-clangd', 'coc-cmake', 'coc-css', 'coc-floaterm', 'coc-fzf-preview', 'coc-html', 'coc-json', 'coc-lists', 'coc-lua', 'coc-pyright', 'coc-rust-analyzer', 'coc-sh', 'coc-snippets', 'coc-sql', ]
