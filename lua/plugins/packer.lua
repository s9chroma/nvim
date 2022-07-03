packer = require("packer")

packer.startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Fuzzy file finder
    use {"junegunn/fzf", run = ":call fzf#install()" }
	use {"junegunn/fzf.vim"}

    -- Completion
    -- Post Install
        -- Run `:CocInstall coc-pyright`
        -- Run `:CocInstall coc-go`
        -- Run `:CocInstall coc-lua`
    use {"neoclide/coc.nvim", branch="release" }

    -- Auto close brackets
    use "jiangmiao/auto-pairs"

    -- Python formatter
    use "psf/black"

    -- Treesitter Dependencies:
        -- C compiler (gcc/clang/cl/zig)
        -- After install and restarting nvim do 
            -- `:TSUpdate`
    use "nvim-treesitter/nvim-treesitter"

    -- Hex color highlighter
    use "norcalli/nvim-colorizer.lua"

    -- emacs kill-buffer
    use "qpkorr/vim-bufkill"

    -- tpope tools
    use "tpope/vim-repeat"
    use "tpope/vim-vinegar"
    use "tpope/vim-fugitive"
    use "tpope/vim-surround"
    use "tpope/vim-commentary"

    -- Status bar
    use "itchyny/lightline.vim"
    use "itchyny/vim-gitbranch"
end)
