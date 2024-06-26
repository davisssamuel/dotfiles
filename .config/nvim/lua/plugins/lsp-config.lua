return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- installed LSPs
        -- NOTE: be sure to add config.<lsp>.setup({})
        -- to installed LSPs section below
        ensure_installed = {
          "lua_ls",
          "marksman",
          "biome",
          "pyright",
          "ruff_lsp"
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local config = require("lspconfig")
      -- installed LSPs 
      config.lua_ls.setup({})
      config.marksman.setup({})
      config.biome.setup({})
      config.pyright.setup({})
      config.ruff_lsp.setup({})
    end,
  },
}
