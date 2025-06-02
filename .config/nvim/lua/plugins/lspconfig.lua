return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		lspconfig.biome.setup({
			capabilities = capabilities
		})

		lspconfig.clangd.setup({
			capabilities = capabilities,
			-- cmd = { "clangd", "--offset-encoding=utf-16" }
		})

		lspconfig.gopls.setup({
			capabilities = capabilities
		})

		lspconfig.lua_ls.setup({
			capabilities = capabilities
		})

		lspconfig.pyright.setup({
			capabilities = capabilities
		})

	end
}
