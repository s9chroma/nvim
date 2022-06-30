require('keymaps.base')

------------------------------------------------
vim.g.mapleader = ' ' -- Changing leader to space temporarily
------------------------------------------------

-- FZF Keybinds
map('n', '<Leader>F', ':Files! ~/<CR>') -- FZF in home directory
map('n', '<Leader>f', ':Files<CR>') -- FZF in current directory
map('n', '<Leader>b', ':Buffers<CR>') -- Current open buffers
map('n', '<Leader>a', ':Rg<CR>') -- Ripgrep

-- NvimTree Keybinds
map('n', '<Leader>t', ':NvimTreeToggle<CR>')

-- CoC Keybinds


------------------------------------------------
vim.g.mapleader = ',' -- Changing leader back to comma for others
------------------------------------------------
