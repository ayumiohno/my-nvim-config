vim.api.nvim_create_autocmd({"BufReadPost"}, {
    pattern = {"*"},
    callback = function() vim.api.nvim_exec('silent! normal! g`"zv', false) end
})

local clangformat = function()
    local pos = vim.api.nvim_win_get_cursor(0)
    vim.api.nvim_command("%! clang-format")
    vim.api.nvim_win_set_cursor(0, pos)
end

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = {"*.c", "*.h", "*.cpp", "*.hpp"},
    callback = clangformat
})

vim.api.nvim_create_autocmd("TermOpen", {command = 'startinsert'})

vim.api.nvim_create_user_command('T',
                                 'split | wincmd j | resize 10 | terminal <args>',
                                 {})
