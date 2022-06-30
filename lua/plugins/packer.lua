packer = require("packer")

packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Fuzzy file finder
    use { "junegunn/fzf", run = ":call fzf#install()" }
	use {'junegunn/fzf.vim'}

    -- Completion
    -- Post Install
        -- Run `:CocInstall coc-pyright`
        -- Run `:CocInstall coc-go`
    use { 'neoclide/coc.nvim', branch='release' }

    -- Treesitter Dependencies:
        -- C compiler (gcc/clang/cl/zig)
        -- After install and restarting nvim do 
            -- `:TSUpdate`
    use 'nvim-treesitter/nvim-treesitter'

    -- emacs kill-buffer
    use 'qpkorr/vim-bufkill'

    -- Wiki / Diary
    use 'vimwiki/vimwiki'

    -- tpope tools
    use 'tpope/vim-repeat'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'

    -- Status bar
    use 'itchyny/lightline.vim'

    -- File Tree
    -- Dependencies:
        -- https://www.nerdfonts.com/ Fira Code Nerd Font
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
end)
