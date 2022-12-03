vim.cmd [[packadd packer.nvim]]

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = {"*.lua"},
    command = 'source <afile> | PackerCompile'
})

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use({'neovim/nvim-lsp'})

    use({"nvim-lua/plenary.nvim"})
    use({"hrsh7th/vim-vsnip"}) -- The completion plugin
    use({"hrsh7th/cmp-buffer"}) -- buffer completions
    use({"hrsh7th/cmp-path"}) -- path completions
    use({"hrsh7th/cmp-cmdline"}) -- cmdline completions
    use({"hrsh7th/cmp-nvim-lsp"})
    use({"hrsh7th/cmp-nvim-lua"})

    use {"neovim/nvim-lspconfig", config = require('plugin.lspconfig')}
    use {"hrsh7th/nvim-cmp", config = require('plugin.cmp')}

    use({"rust-lang/rust.vim"})

    use({'nvim-tree/nvim-web-devicons'})

    use {'vim-airline/vim-airline', config = require('plugin.vim-airline')}

    use {
        'vim-airline/vim-airline-themes',
        config = require('plugin.vim-airline-themes')
    }

end)
