call plug#begin()

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'windwp/nvim-autopairs'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'psliwka/vim-smoothie' " scorll with STRG + d or STRG + u
Plug 'romgrk/barbar.nvim'          " tabs for buffers
Plug 'EdenEast/nightfox.nvim'      " Vim-Plug
Plug 'numToStr/FTerm.nvim'         " floating terminal, toggle with <F11>
Plug 'kdheepak/lazygit.nvim'
Plug 'nvim-lualine/lualine.nvim'   " nicer status line
Plug 'goolord/alpha-nvim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'nanotee/zoxide.vim'
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'rust-lang/rust.vim'
Plug 'preservim/tagbar'
Plug 'lambdalisue/suda.vim'
"Plug 'dense-analysis/ale'

call plug#end()
