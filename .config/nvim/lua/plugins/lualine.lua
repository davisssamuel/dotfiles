return {
	"nvim-lualine/lualine.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local custom_theme = require("lualine.themes.auto")
		custom_theme.normal.c.bg = "#22272E"
		custom_theme.insert.c.bg = "#22272E"
		custom_theme.visual.c.bg = "#22272E"
		custom_theme.replace.c.bg = "#22272E"
		custom_theme.command.c.bg = "#22272E"
		custom_theme.inactive.c.bg = "#22272E"
		require("lualine").setup({
			options = {
				theme = custom_theme,
				section_separators = "",
				component_separators = "",
				globalstatus = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", },
				lualine_c = { "filename" },
				lualine_x = { "diagnostics" },
				lualine_y = { "progress" },
				lualine_z = { "location" }
			},
		})
	end
}
