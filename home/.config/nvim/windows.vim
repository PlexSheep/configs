" Look, I don't like it, but my company has Windows 10 Workstations okay?
" If possible, I'd love to ditch Windows completely, as I have already done privately.

" shell stuff
" we 'want' powershell
set shell=powershell
set shellcmdflag=-command
set shellquote=\"
set shellxquote=

lua << EOF
-- setup FTerm to use powershell too
require'FTerm'.setup({
    cmd = "powershell"
})
EOF