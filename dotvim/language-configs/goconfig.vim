" Golang
autocmd FileType go map <buffer> <M-m> :w<CR>:!go run %<CR>
au BufWritePost *.go silent !goimports -w %
