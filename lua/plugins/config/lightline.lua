local g_opt = vim.g

g_opt.lightline = {
    colorscheme = 'powerlineish',
    active = {
        left = {
            {'mode', 'paste'},
            {'gitbranch', 'readonly', 'filename', 'modified'}
        },
        right = {
            {'lineinfo'},
            {'percent'},
            {'filetype'}
        }
    },
    component_function = {
        gitbranch = 'gitbranch#name'
    }
}
