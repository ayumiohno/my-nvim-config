return function()
	vim.opt.winblend = 10

	local builtin = require('telescope.builtin')
	vim.g.mapleader = "f"
	vim.keymap.set('n', '<leader>f', builtin.find_files)
	vim.keymap.set('n', '<leader>s', builtin.git_status)
	vim.keymap.set('n', '<leader>b', builtin.git_branches)
	vim.keymap.set('n', '<leader>w', builtin.grep_string)
	vim.keymap.set('n', '<leader>l', builtin.live_grep)
	vim.keymap.set('n', '<leader>c', builtin.commands)
	vim.keymap.set('n', '<leader>k', builtin.keymaps)

	vim.keymap.set('n', '<leader>r', builtin.lsp_references)
	vim.keymap.set('n', '<leader>d', builtin.lsp_definitions)
	vim.keymap.set('n', '<leader>i', builtin.lsp_implementations)
	vim.keymap.set('n', '<leader>s', builtin.lsp_document_symbols)
	vim.keymap.set('n', '<leader>t', builtin.lsp_type_definitions)
	vim.keymap.set('n', '<leader>e', builtin.diagnostics)

	require('telescope').setup {
		defaults = {
			initial_mode = 'normal',
		},
	}
end
