local api = vim.api

-- vim.g.vimwiki_listing_hl = 1 -- Syntax highlighting in HTML export
vim.cmd[[let g:vimwiki_listing_hl = 0]]
api.nvim_create_autocmd("FileType", {
    pattern = "vimwiki",
    command = "syntax on"
})

vim.g.vimwiki_automatic_nested_syntaxes = 1
vim.g.nested_syntaxes = {python= 'python', go= 'go', lua= 'lua', html = 'html'}

vim.g.vimwiki_list = {
    {
        path = vimwiki_path .. 'source/', 
        path_html = vimwiki_path, 
        auto_toc = 1,
        template_path = vimwiki_path .. [[source/templates]], 
        template_default = 'def',
        template_ext = '.tpl'
    }
}


vim.g.nv_search_paths = {'/path/to/zettelkasten/dir'}
