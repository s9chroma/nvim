require('keymaps.base')

------------------------------------------------
vim.g.mapleader = ' ' -- Changing leader to space temporarily
------------------------------------------------

-- FZF Keybinds
map('n', '<Leader>F', ':Files! ~/<CR>') -- FZF in home directory
map('n', '<Leader>f', ':Files<CR>') -- FZF in current directory
map('n', '<Leader>g', ':Files ../<CR>') -- FZF in current directory
map('n', '<Leader>b', ':Buffers<CR>') -- Current open buffers
map('n', '<Leader>a', ':Rg<CR>') -- Ripgrep

-- NvimTree Keybinds
map('n', '<Leader>t', ':NvimTreeToggle<CR>')

-- Toggleterm Keybinds
map('n', '<C-t>', ':ToggleTerm<CR>')
map('i', '<C-t>', ':ToggleTerm<CR>')
map('t', '<C-t>', [[<C-\><C-n>:ToggleTerm<CR>]])

-- Coc Keybinds
function ShowDocumentation() 
    if vim.fn.CocAction('hasProvider', 'hover') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.fn.feedkeys('K', 'in')
    end
end

map('n', 'K', ShowDocumentation)
map('i', '<S-tab>', 
    function() 
        vim.fn.CocActionAsync('showSignatureHelp') 
    end
)

-- Use tab for trigger completion
vim.cmd[[
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
]]

-- Make <CR> auto-select the first completion item and notify coc.nvim to
-- format on enter, <cr> could be remapped by other vim plugin
vim.cmd[[
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]]

-- Go to code navigation
map('n', 'gd', ':vsp<CR><Plug>(coc-definition)')
map('n', 'gr', '<Plug>(coc-references)')

-- Symbol renaming
map('n', 'rn', '<Plug>(coc-rename)')

-- Mappings for CoCList
map('n', '<Space>A', ':<C-u>CocList diagnostics<cr>', {silent = true, nowait = true})

-- Navigate diagnostics
map('n', '[g', '<Plug>(coc-diagnostic-prev)')
map('n', ']g', '<Plug>(coc-diagnostic-next)')

-- Code Action
map('x', '<M-CR>', '<Plug>(coc-codeaction-line)')
map('n', '<M-CR>', '<Plug>(coc-codeaction-line)')
map('x', '<C-CR>', '<Plug>(coc-codeaction-selected)')
map('n', '<C-CR>', '<Plug>(coc-codeaction-selected)')

------------------------------------------------
vim.g.mapleader = ',' -- Changing leader back to comma for others
------------------------------------------------
