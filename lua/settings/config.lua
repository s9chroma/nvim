local opt = vim.o
local g_opt = vim.g

------------------------------------------------
-- Interface
------------------------------------------------
vim.opt.guifont = { "FiraCode Nerd Font", ":h16" }
-- vim.cmd[[colorscheme s9]]

------------------------------------------------
-- General
------------------------------------------------
opt.mouse = 'a' -- Enable mouse support
opt.clipboard = 'unnamedplus' -- Copy/paste to system clipboard
opt.swapfile = false -- Don't use swapfile
opt.nofoldenable = true -- disable folding
opt.signcolumn = 'number'
opt.showtabline = 2

------------------------------------------------
-- Neovide Settings
------------------------------------------------
g_opt.neovide_cursor_vfx_mode = "wireframe" -- v. cool

------------------------------------------------
-- Netrw
------------------------------------------------
g_opt.netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

------------------------------------------------
-- Neovim UI
------------------------------------------------
opt.number = true -- Show line number
opt.relativenumber = true -- Show relative numbering w.r.t position
opt.showmatch = true -- Highlight matching parenthesis
opt.splitright = true -- Vertical split to the right
opt.splitbelow = true -- Horizontal split to the bottom
opt.ignorecase = true -- Ignore case letters when search
opt.smartcase = true -- Ignore lowercase for the whole pattern
opt.linebreak = true -- Wrap on word boundary
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.laststatus=3 -- Set global statusline
opt.scrolloff = 5 -- Scroll offset
opt.fillchars = [[vert:┃,eob: ,horiz:━]] -- Remove lines between splits

------------------------------------------------
-- Tabs, indent
------------------------------------------------
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Shift 4 spaces when tab
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.autoindent = true -- Autoindent new lines
opt.smartindent = true -- Smartly indenting new lines
opt.smarttab = true -- Use shiftwidth for spaces

------------------------------------------------
-- Search
------------------------------------------------
opt.incsearch = true -- Incremental search
opt.hlsearch = false -- Remove highlighting after search
opt.ignorecase = true -- Search ignores case
opt.smartcase = true -- Overrides ignorecase if pattern has caps
opt.autochdir = true -- cd working directory to current file

------------------------------------------------
-- Memory, CPU
------------------------------------------------
opt.hidden = true -- Enable background buffers
opt.history = 100 -- Remember N lines in history
opt.lazyredraw = true -- Faster scrolling
opt.synmaxcol = 240 -- Max column for syntax highlight
opt.updatetime = 300 -- ms to wait for trigger an event

------------------------------------------------
-- No temp files. Risky?
------------------------------------------------
opt.backup = false -- no .bak
opt.swapfile = false -- no .swap
opt.undofile = true -- use undo file

------------------------------------------------
-- Startup
------------------------------------------------
opt.shortmess = "sI" -- Disable nvim intro

-- Disable builtins plugins
-- disable some builtin vim plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   -- "netrw",
   -- "netrwPlugin",
   -- "netrwSettings",
   -- "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
    g_opt["loaded_" .. plugin] = 1
end
