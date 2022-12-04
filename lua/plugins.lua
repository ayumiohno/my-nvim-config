vim.cmd [[packadd packer.nvim]]

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = {"*.lua"},
    command = 'source <afile> | PackerCompile'
})

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use({"nvim-lua/plenary.nvim"})
    use({"hrsh7th/vim-vsnip"})
    use({"hrsh7th/cmp-buffer"})
    use({"hrsh7th/cmp-path"})
    use({"hrsh7th/cmp-cmdline"})
    use({"hrsh7th/cmp-nvim-lsp"})
    use({"hrsh7th/cmp-nvim-lua"})
    use {"williamboman/mason.nvim", config = require('plugin.mason')}
    use {
        "williamboman/mason-lspconfig.nvim",
        config = require('plugin.mason-lspconfig')
    }
    use {"neovim/nvim-lspconfig", config = require('plugin.lspconfig')}
    -- use {"neoclide/coc.nvim"}
    use {"hrsh7th/nvim-cmp", config = require('plugin.cmp')}

    use({"rust-lang/rust.vim"})

    use({'nvim-tree/nvim-web-devicons'})

    use {'vim-airline/vim-airline', config = require('plugin.vim-airline')}

    use {
        'vim-airline/vim-airline-themes',
        config = require('plugin.vim-airline-themes')
    }

end)
