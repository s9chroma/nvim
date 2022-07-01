local api = vim.api
require('keymaps.base')

api.nvim_create_autocmd("FileType", {
    pattern = "go",
    callback = function()
        map('n', '<M-m>', ':!go run %<CR>')
    end
})

api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.go",
    callback = function()
        vim.cmd[[silent %!goimports]]
        vim.cmd[[silent w]]
    end
})
