local api = vim.api
require('keymaps.base')

api.nvim_create_autocmd("FileType", {
    pattern = "go",
    callback = function()
        map('n', '<M-m>', ':!go run %<CR>')
    end
})

vim.o.shortmess = 'a'
api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.go",
    callback = function()
        vim.cmd[[silent! execute "!goimports -w %" | redraw!]]
    end
})
