return function()
	vim.cmd 'let g:airline#extensions#tabline#enabled = 1'
	vim.cmd 'let g:airline_detect_modified=1'
	vim.cmd 'let g:airline_powerline_fonts = 1'
	vim.keymap.set('n', '<C-h>', ':bnext<CR>')
	vim.keymap.set('n', '<C-l>', ':bprevious<CR>')
end
