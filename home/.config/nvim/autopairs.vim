" off with <A-p>
nmap <A-p> :lua require('nvim-autopairs').disable()<CR>
" on with <A-P>
nmap <A-P> :lua require('nvim-autopairs').enable()<CR>

" fix <CR> being not usable to select a completion item
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#pum#confirm() :
  \ "\<C-g>u\<c-r>=v:lua.require'nvim-autopairs'.autopairs_cr()\<CR>"

lua << EOF
require("nvim-autopairs").setup {}
local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')
npairs.add_rule(Rule("<>","<>","rs"))
EOF
