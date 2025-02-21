return {
    "stevearc/conform.nvim",
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = "stylua",
                c = "clang_format",
                go = "gofmt",
                python = "ruff_format",
                nix = { "nixfmt" }
            },
            default_format_opts = {
                lsp_format = "fallback",
            },
        })
    end
}
