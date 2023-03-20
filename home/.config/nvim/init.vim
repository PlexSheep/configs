" always load these.
runtime common.vim

" check if firenvim is accessing this, load it's specific configs if so.
lua << EOF
if vim.g.started_by_firenvim == true then
    vim.cmd('runtime firenvim.vim')
else
    vim.cmd('runtime main.vim')
end
EOF
