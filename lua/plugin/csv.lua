return function()
    vim.api.nvim_create_autocmd({"BufRead"}, {
        pattern = {"*.csv"},
        command = "setfiletype csv"
    })
    vim.cmd("let g:csv_highlight_column = 'y'")
    vim.cmd("let g:csv_disable_table_command = 1")
end
