return function()
    require("mason-lspconfig").setup({
        ensure_installed = {
            "rust_analyzer", "pyright", "tsserver", "clangd", "sumneko_lua"
        },
        automatic_installation = true
    })
end
