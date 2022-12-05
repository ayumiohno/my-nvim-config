return function()
	local opts = { noremap = true, silent = true }
	vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
	vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
	vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
	function on_attach(client, bufnr)
		local bufopts = { buffer = bufnr }
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
		vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder,
			bufopts)
		vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder,
			bufopts)
		vim.keymap.set('n', '<space>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, bufopts)
		vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
		vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
		vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
		vim.keymap.set('n', '<space>f',
			function() vim.lsp.buf.format { async = true } end, bufopts)
		vim.api.nvim_create_autocmd({ "BufWritePre" }, {
			pattern = { "*.rs", "*.py", "*.c", "*.cpp", "*.lua" },
			callback = function() vim.lsp.buf.format() end
		})
	end

	local lsp_flags = { debounce_text_changes = 150 }
	local capabilities = require('cmp_nvim_lsp').default_capabilities()
	--[[require('lspconfig')['ccls'].setup {
        init_options = {
            compilationDatabaseDirectory = "build",
            index = {threads = 0},
            clang = {excludeArgs = {"-frounding-math"}}
        },
				on_attach = on_attach
    }]]
	require('lspconfig')['pyright'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
	}
	require('lspconfig')['tsserver'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
	}
	require('lspconfig')['rust_analyzer'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
		settings = { ["rust-analyzer"] = {} }
	}
	require('lspconfig')['clangd'].setup {
		on_attach = on_attach,
		flags = lsp_flags,
		capabilities = capabilities,
	}
	require('lspconfig')['sumneko_lua'].setup {
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			Lua = {
				runtime = { version = 'LuaJIT' },
				diagnostics = { globals = { 'vim' } },
				workspace = { library = vim.api.nvim_get_runtime_file("", true) },
				telemetry = { enable = false }
			}
		}
	}
	require('lspconfig.ui.windows').default_options.border = 'single'
end
