return function()

	require('bufferline').setup({
		highlights = {
			buffer_selected = { bold = true },
			diagnostic_selected = { bold = true },
			info_selected = { bold = true },
			info_diagnostic_selected = { bold = true },
			warning_selected = { bold = true },
			warning_diagnostic_selected = { bold = true },
			error_selected = { bold = true },
			error_diagnostic_selected = { bold = true },
		},
		options = {
			show_close_icon = true,
			diagnostics = 'nvim_lsp',
			max_prefix_length = 8,
			modified_icon = '●',
			color_icons = true,
			diagnostics_indicator = function(count, level, diagnostics_dict, context)
				local icon = level:match("error") and " " or " "
				return ' ' .. icon .. count
			end,
			--[[hover = {
				enabled = true,
				delay = 200,
				reveal = { 'close', 'diagnostics_indicator' }
			},]]
			numbers = 'ordinal',
			separator_style = "slant",
		},
	})
	vim.keymap.set('n', 'bb', '<CMD>BufferLinePick<CR>')
	vim.keymap.set('n', '<C-l>', '<CMD>BufferLineCycleNext<CR>')
	vim.keymap.set('n', '<C-h>', '<CMD>BufferLineCyclePrev<CR>')
	vim.keymap.set('n', 'bs', '<CMD>BufferLineSortByDirectory<CR>')
end
