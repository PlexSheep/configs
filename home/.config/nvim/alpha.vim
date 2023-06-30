call plug#begin()
Plug 'goolord/alpha-nvim'
call plug#end()

lua << EOF
require('alpha').setup(require('alpha.themes.startify').config)
EOF
