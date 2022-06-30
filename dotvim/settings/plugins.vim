call plug#begin()
" Essential Plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'lambdalisue/fern.vim'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'

"Optional(Let go over time)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

" Language support
Plug 'numirias/semshi',

" Neovim issue #120
Plug 'antoinemadec/FixCursorHold.nvim'

" Initialize plugin system
call plug#end()

