set laststatus=0 "disable statusline
color carbonfox " set colors
set guifont=NotoMono:h9 " set font

" get some plugins, including firenvim itself.
call plug#begin()
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'jiangmiao/auto-pairs'
Plug 'psliwka/vim-smoothie' " scorll with STRG + d or STRG + u
Plug 'EdenEast/nightfox.nvim'      " Vim-Plug
call plug#end()
