" Python
autocmd FileType python map <buffer> <M-m> :w<CR>:exec '!'. g:python3_host_prog shellescape(@%, 1)<CR>
