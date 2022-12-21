vim.cmd [[packadd packer.nvim]]

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "*.lua" },
	command = 'source <afile> | PackerCompile'
})

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use { 'EdenEast/nightfox.nvim', config = require('plugin.color-scheme') }
	use { 'nvim-tree/nvim-web-devicons' }
	use {
		'nvim-lualine/lualine.nvim', requires = 'kyazdani42/nvim-web-devicons',
		config = require('plugin.lualine')
	}
	use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons',
		config = require('plugin.bufferline') }
	use({ "nvim-lua/plenary.nvim" })
	use({ "hrsh7th/vim-vsnip" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-cmdline" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })
	use { 'jose-elias-alvarez/null-ls.nvim', config = require('plugin.null-ls')}
	use { "williamboman/mason.nvim", config = require('plugin.mason') }
	use {
		"williamboman/mason-lspconfig.nvim",
		config = require('plugin.mason-lspconfig')
	}
	use { "hrsh7th/nvim-cmp", config = require('plugin.cmp') }
	use { "neovim/nvim-lspconfig", config = require('plugin.lspconfig') }
	use({ "rust-lang/rust.vim" })
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } },
		config = require('plugin.telescope')
	}
	use { 'windwp/nvim-autopairs', config = require('plugin.autopairs') }
	use { 'preservim/nerdtree', config = require('plugin.tree') }
	use { 'j-hui/fidget.nvim', config = require('plugin.fidget') }
	use { 'kevinhwang91/nvim-hlslens', config = require('plugin.hlslens') }
	use { "tversteeg/registers.nvim", config = require('plugin.registers') }
	use { 'chrisbra/csv.vim', config = require('plugin.csv') }

	--[[use {
        "zbirenbaum/copilot.lua",
        event = "InsertEnter",
        config = require('plugin.copilot')
    }
    use {
        "zbirenbaum/copilot-cmp",
        after = {"copilot.lua"},
        config = function() require("copilot_cmp").setup() end
    }]]

end)
