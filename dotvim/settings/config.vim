"Behavior settings
set nocompatible
filetype plugin on

" Config. (ref CoC)
set hidden
set nobackup
set encoding=utf-8
set nowritebackup
set updatetime=300
set shortmess+=c

" Neovide settings
let g:neovide_cursor_vfx_mode = "wireframe"

set mouse=a
syntax on "syntax highlighting
set nohlsearch "no highlighting last searches
set ignorecase "searching is not case sensitive
set smartcase "if a pattern contains uppercase, searching is case sensitive
set autochdir "Automatically change the current directory

"Code folding
set foldmethod=indent
set foldnestmax=2
set foldlevelstart=20

"Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=0
set autoindent
set expandtab
set smarttab

"Line numbers
set number
set relativenumber

"Clipboard
set clipboard^=unnamed,unnamedplus

"Remove audio beeps
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
