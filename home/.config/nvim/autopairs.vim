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
local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')
npairs.setup({map_cr=false})

-- skip it, if you use another global object
_G.MUtils= {}

-- old version
-- MUtils.completion_confirm=function()
  -- if vim.fn["coc#pum#visible"]() ~= 0 then
    -- return vim.fn["coc#_select_confirm"]()
  -- else
    -- return npairs.autopairs_cr()
  -- end
-- end

-- new version for custom pum
MUtils.completion_confirm=function()
    if vim.fn["coc#pum#visible"]() ~= 0  then
        return vim.fn["coc#pum#confirm"]()
    else
        return npairs.autopairs_cr()
    end
end

remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})

EOF
