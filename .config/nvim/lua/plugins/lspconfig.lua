return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		vim.lsp.config("tsserver", {
			cmd = { "typescript-language-server", "--stdio" },
		})

		vim.lsp.enable({
			-- "biome",
			"clangd",
			"gopls",
			"lua_ls",
			"pyright",
			"tsserver"
		})
	end
}
