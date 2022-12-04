return function()

    vim.api.nvim_set_hl(0, "MyCmpHL", {fg = "#f5f5dc", bg = "#3c3c3c"})
    -- Set up nvim-cmp.
    local cmp = require 'cmp'

    cmp.setup({
        snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            end
        },
        window = {
            completion = cmp.config.window.bordered({
                scrolloff = 5,
                col_offset = 3,
                border = 'double',
                winhighlight = 'Normal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None'
            }),
            documentation = cmp.config.window.bordered({
                winhighlight = 'Normal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None'
            })
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-p>"] = cmp.mapping.select_prev_item(),
            ["<C-n>"] = cmp.mapping.select_next_item(),
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ['<CR>'] = cmp.mapping.confirm({select = true}) -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({{name = 'nvim_lsp'}, {name = 'vsnip'}},
                                     {{name = 'buffer'}})
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
            {name = 'cmp_git'} -- You can specify the `cmp_git` source if you were installed it.
        }, {{name = 'buffer'}})
    })

    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({'/', '?'}, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {{name = 'buffer'}},
        window = {
            completion = cmp.config.window.bordered({
                scrolloff = 5,
                col_offset = 3,
                border = 'double',
                winhighlight = 'Normal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None'
            }),
            documentation = cmp.config.window.bordered()
        }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({{name = 'path'}}, {{name = 'cmdline'}}),
        window = {
            completion = cmp.config.window.bordered({
                scrolloff = 5,
                col_offset = 3,
                border = 'double',
                winhighlight = 'Normal:MyCmpHL,FloatBorder:Normal,CursorLine:Visual,Search:None'
            }),
            documentation = cmp.config.window.bordered()
        }
    })

    -- Set up lspconfig.
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
    -- require('lspconfig')['ccls'].setup {capabilities = capabilities}
    require('lspconfig')['clangd'].setup {capabilities = capabilities}
    require('lspconfig')['pyright'].setup {capabilities = capabilities}
end
