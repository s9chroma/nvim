require("keymaps.base")
require('toggleterm').setup({
    size = function(term)
        if term.direction == 'horizontal' then
            return 15
        elseif term.direction == 'vertical' then
            return vim.o.columns * 0.4
        end
    end,
    hide_numbers = false,
    on_open = function()
        print("TESTING")
    end,
    shade_terminals = true,
    start_in_insert = true,
    insert_mappings = false, -- no default mapping
    persist_size = true,
    persist_mode = true,
    direction = 'float',
    close_on_exit = true,
    shell = 'bash',
    float_opts = {
        border = 'curved',
        highlights = {
            border = 'Normal',
            background = 'Normal',
        },
    },
})

vim.g.previous_window = -1
function SmartInsert()
    if vim.bo.buftype == 'terminal' then
        if vim.g.previous_window ~= vim.fn.winnr() then
            vim.cmd[[startinsert]]
        end
        vim.g.previous_window = vim.fn.winnr()
    else
        vim.g.previous_window = -1
    end
end

local api = vim.api
api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = SmartInsert
})
