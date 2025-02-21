return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    width = 0.8,
                    height = 0.8,
                    border = "single",
                    icons = {
                        package_installed = "●",
                        package_pending = "●",
                        package_uninstalled = "●",
                    },
                }
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { -- installed LSPs
                    "biome",
                    "clangd",
                    "gopls",
                    "lua_ls",
                    "pyright",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "saghen/blink.cmp" },
        config = function()
            local capabilities = require("blink.cmp").get_lsp_capabilities()
            local lspconfig = require("lspconfig")

            -- biome
            lspconfig.biome.setup({
                capabilities = capabilities
            })

            -- clangd
            lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = { "clangd", "--offset-encoding=utf-16" }
            })

            -- gopls
            lspconfig.gopls.setup({
                capabilities = capabilities
            })

            -- lua_ls
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })

            -- pyright
            lspconfig.pyright.setup({
                capabilities = capabilities
            })
        end,
    },
}
