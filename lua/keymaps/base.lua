local opt = vim.o

-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

--------------------------------------------------------------------------------------------------------
vim.g.mapleader = ' '                                -- Changing leader to space temporarily
--------------------------------------------------------------------------------------------------------

map('i', 'jk', '<Esc>')                              -- Normal mode jk is Esc
map('t', 'jk', [[<C-\><C-n>]])                       -- Terminal mode jk is Esc

-- Del to Esc from (almost) all the things
map('n', '<Del>', '<Esc>')
map('v', '<Del>', '<Esc>gV')
map('o', '<Del>', '<Esc>')
map('c', '<Del>', '<C-C><Esc>')
map('i', '<Del>', '<Esc>`^')
map('t', '<Del>', [[<C-\><C-n>]])

-- Splits
map('n', '<Leader>v', ':vsp<CR>')                     -- Make new vert split
map('n', '<Leader>h', ':sp<CR>')                      -- Make new horizontal split
map('n', '<C-J>', '<C-W><C-J>')                       -- Move to lower split
map('n', '<C-K>', '<C-W><C-K>')                       -- Move to upper split
map('n', '<C-L>', '<C-W><C-L>')                       -- Move to right split
map('n', '<C-H>', '<C-W><C-H>')                       -- Move to left split
map('n', '<C-down>', '<C-W><')                        -- Reduce split size
map('n', '<C-up>', '<C-W>>')                          -- Increase split size
map('n', '<M-,>', '<C-W>R')                           -- Swap splits
map('n', '<Leader>0', [[<C-W>|]])                     -- Maximize split horizontally
map('n', '<Leader>-', [[<C-W>_]])                     -- Maximize split vertically
map('n', '<Leader>=', [[<C-W>=]])                     -- Restore split sizes

-- Tabs
map('n', '<Leader>1', '1gt')                          -- Go to tab 1
map('n', '<Leader>2', '2gt')                          -- Go to tab 2 
map('n', '<Leader>3', '3gt')                          -- Go to tab 3
map('n', '<Leader>4', '4gt')                          -- Go to tab 4
map('n', '<Leader>5', '5gt')                          -- Go to tab 5
map('n', '<Leader>6', '6gt')                          -- Go to tab 6
map('n', '<Leader>7', '7gt')                          -- Go to tab 7
map('n', '<Leader>8', '8gt')                          -- Go to tab 8
map('n', '<Leader>9', '9gt')                          -- Go to tab 9
map('n', '<Leader>T', '<C-W>T')                       -- Open current buffer in new tab
map('n', '<C-right>', ':tabnext<CR><CR>')             -- Move to next tab
map('n', '<C-left>', ':tabprevious<CR><CR>')          -- Move to previous tab
map('n', '<Leader>m', ':tab ')                        -- Command in new tab prompt
map('n', '<Leader>n', ':tabnew<CR>')                  -- Create a new tab

-- Misc
map('n', '<Leader>rc', ':e $MYVIMRC<CR>')             -- Open init.lua
map('n', '<Leader>Rc', ':tabe $MYVIMRC<CR>')          -- Open init.lua in new tab
map('n', '<Leader>w', ':up<CR>')                      -- Update file i.e. write if changes
map('n', '<Leader>q', ':q<CR>')                       -- Quit
map('n', '<Leader>db', ':BD<CR>')                     -- Delete buffer
map('n', 'gF', '<C-W>gf')                             -- Go to file under cursor in new tab
map('n', '<Leader>c', 'zz')                           -- Center cursor position
map('n', '<Leader>t', ':Vex!<CR>')                       -- Netrw
map('n', '<Leader>T', ':Sex<CR>')                        -- Netrw
map('n', '<Leader>y', ':Tex<CR>')                        -- Netrw
map('n', '<Leader>e', ':!start explorer /select,%:p<CR><CR>')  -- Open file explorer

--------------------------------------------------------------------------------------------------------
vim.g.mapleader = ','                                 -- Changing leader back to comma for others
--------------------------------------------------------------------------------------------------------
