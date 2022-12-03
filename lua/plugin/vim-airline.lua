return function()
    vim.cmd 'let g:airline_symbols_ascii = 1'
    vim.cmd 'let g:airline#extensions#tabline#enabled = 1'
    vim.cmd 'let g:airline#extensions#whitespace#mixed_indent_algo = 1'
    vim.cmd 'let g:airline_detect_modified=1'
    vim.keymap.set('n', '<C-h>', ':bnext<CR>')
    vim.keymap.set('n', '<C-l>', ':bprevious<CR>')
end
