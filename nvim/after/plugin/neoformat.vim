let g:neoformat_try_node_exe = 1
autocmd BufWritePre *.js Neoformat
:map <F3> :Neoformat
