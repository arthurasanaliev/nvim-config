return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "gopls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({
                flags = {
                    debounce_text_changes = 150,
                    cmd = { "clangd", "--compile-commands-dir=." },
                }
            })
            lspconfig.gopls.setup({
                flags = {
                    debounce_text_changes = 150,
                },
                settings = {
                    gopls = {
                        analyses = {
                            unusedparams = true,
                        },
                        staticcheck = true,
                    },
                },
                on_attach = function(client, bufnr)
                    if client.server_capabilities.documentFormattingProvider then
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            group = vim.api.nvim_create_augroup("GoFormat", { clear = true }),
                            buffer = bufnr,
                            callback = function() vim.lsp.buf.format({ async = false }) end,
                        })
                    end
                end,
            })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Display Documentation" })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Defenition" })
            -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
        end
    }
}
