local options = {
    autoindent = true,
    autoread = true,
    cursorline = true,
    hidden = true,
    hlsearch = true,
    smarttab = true,
    mouse = "a",
    ruler = true,
    smartcase = true,
    swapfile = false,
    shiftwidth = 2,
    softtabstop = 2,
    tabstop = 2,
    cursorline = true,
    number = true,
    clipboard = "unnamedplus",
    wrap = false
}

for k, v in pairs(options) do vim.opt[k] = v end

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.api.nvim_set_hl(0, 'MyNormal', {
    sp = 'Black',
    fg = '#f8f4e6',
    bg = '#515254',
    ctermbg = 'Black',
    ctermfg = 'White'
})
vim.cmd('set winhl=NormalNC:MyNormal')
