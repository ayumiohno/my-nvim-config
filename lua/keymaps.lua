local keymap = vim.keymap.set
keymap("i", "jj", "<ESC>:w<CR>")
keymap("n", "<Esc><Esc>", ":<C-u>set nohlsearch<Return>")
keymap("n", "<Space>h", "^")
keymap("n", "<Space>l", "$")
keymap('t', '<Esc>', '<C-\\><C-n>')
