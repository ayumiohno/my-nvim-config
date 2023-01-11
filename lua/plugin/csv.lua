return function()
	vim.api.nvim_create_autocmd({ "BufRead" }, {
		pattern = { "*.csv" },
		command = "setfiletype csv"
	})
	vim.api.nvim_create_autocmd({ "BufRead", "BufWritePost" }, {
		pattern = { "*.csv" },
		command = ":%ArrangeColumn"
	})
	vim.api.nvim_create_autocmd({ "BufWritePre" }, {
		pattern = { "*.csv" },
		command = ":%UnArrangeColumn"
	})
	vim.cmd("let g:csv_highlight_column = 'y'")
	vim.cmd("let g:csv_arrange_align = 'l*'")
end
