local api = vim.api
require('keymaps.base')

api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        compile_command = ':!' ..vim.g.python3_host_prog .. ' %<CR>'
        map('n', '<M-m>', compile_command)
    end
})

api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.py",
    callback = function()
        vim.cmd[[silent Black]]
        vim.cmd[[silent w]]
    end
})
