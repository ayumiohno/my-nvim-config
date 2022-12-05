vim.cmd [[packadd packer.nvim]]

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = {"*.lua"},
    command = 'source <afile> | PackerCompile'
})

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {'EdenEast/nightfox.nvim', config = require('plugin.color-scheme')}
    use {'vim-airline/vim-airline', config = require('plugin.vim-airline')}
    use {
        'vim-airline/vim-airline-themes',
        config = require('plugin.vim-airline-themes')
    }
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
    use {"hrsh7th/nvim-cmp", config = require('plugin.cmp')}
    use({"rust-lang/rust.vim"})
    use({'nvim-tree/nvim-web-devicons'})
    use {
        'ibhagwan/fzf-lua',
        requires = {'nvim-tree/nvim-web-devicons'},
        config = require('plugin.fzf-lua')
    }
    use {'windwp/nvim-autopairs', config = require('plugin.autopairs')}
    use {'preservim/nerdtree', config = require('plugin.tree')}
    use {'j-hui/fidget.nvim', config = require('plugin.fidget')}
    use {'kevinhwang91/nvim-hlslens', config = require('plugin.hlslens')}
    use {"tversteeg/registers.nvim", config = require('plugin.registers')}
    use {'chrisbra/csv.vim', config = require('plugin.csv')}

    use {
        "zbirenbaum/copilot.lua",
        event = "InsertEnter",
        config = require('plugin.copilot')
    }
    use {
        "zbirenbaum/copilot-cmp",
        after = {"copilot.lua"},
        config = function() require("copilot_cmp").setup() end
    }

end)
