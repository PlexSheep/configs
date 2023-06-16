" check if firenvim is accessing this, load it's specific configs if so.
lua << EOF
if vim.g.started_by_firenvim == true then
    vim.cmd('runtime firenvim.vim')
    vim.cmd('runtime common.vim')
else
    vim.cmd('runtime common.vim')
    vim.cmd('runtime main.vim')
end

EOF
