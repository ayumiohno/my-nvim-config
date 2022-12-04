return function()
    vim.cmd [[
			highlight FzfLuaNormal guibg=#383850
			highlight FzfLuaBorder guibg=#383850
		]]

    vim.opt.winblend = 10

    vim.g.mapleader = "f"
    vim.keymap.set('n', '<leader>f', "<cmd>lua require('fzf-lua').files()<CR>")
    vim.keymap.set('n', '<leader>s',
                   "<cmd>lua require('fzf-lua').git_status()<CR>")
    vim.keymap.set('n', '<leader>b',
                   "<cmd>lua require('fzf-lua').git_branches()<CR>")
    vim.keymap.set('n', '<leader>g', "<cmd>lua require('fzf-lua').grep()<CR>")
    vim.keymap.set('n', '<leader>w',
                   "<cmd>lua require('fzf-lua').grep_cword()<CR>")
    vim.keymap.set('n', '<leader>W',
                   "<cmd>lua require('fzf-lua').grep_cWORD()<CR>")
    vim.keymap.set('v', '<leader>v',
                   "<cmd>lua require('fzf-lua').grep_visual()<CR>")
    vim.keymap.set('n', '<leader>/', "<cmd>lua require('fzf-lua').blines()<CR>")

    vim.keymap.set('n', '<leader>r',
                   "<cmd>lua require('fzf-lua').lsp_references()<CR>")
    vim.keymap.set('n', '<leader>d',
                   "<cmd>lua require('fzf-lua').lsp_definitions()<CR>")
    vim.keymap.set('n', '<leader>D',
                   "<cmd>lua require('fzf-lua').lsp_declarations()<CR>")
    vim.keymap.set('n', '<leader>i',
                   "<cmd>lua require('fzf-lua').lsp_implementations()<CR>")
    vim.keymap.set('n', '<leader>s',
                   "<cmd>lua require('fzf-lua').lsp_document_symbols()<CR>")
    vim.keymap.set('n', '<leader>t',
                   "<cmd>lua require('fzf-lua').lsp_typedefs()<CR>")
    vim.keymap.set('n', '<leader>l',
                   "<cmd>lua require('fzf-lua').diagnostics_document()<CR>")
end
