local g_opt = vim.g

g_opt.lightline = {
    colorscheme = 'powerlineish',
    tabline = {
        left= {
            {'tabs'}
        },
        right={
            {'close'}
        }
    },
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
