local api = vim.api

api.nvim_create_autocmd(
    "BufEnter", {
    pattern = "*",
    callback = function()
        vim.cmd[[set wrap]]
    end
})

api.nvim_create_autocmd(
    {"BufRead", "BufEnter"}, {
    pattern = "*.wiki",
    callback = function()
        vim.bo.ft = "vimwiki"
        vim.cmd[[set nowrap]]
    end
})
