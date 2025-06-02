return {
	"neovim/nvim-lspconfig",
	config = function()
		-- Add LSP capabilities to blink for every language server
		local capabilities = require("blink.cmp").get_lsp_capabilities()
		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		-- Manually configure LSP command for tsserver
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
