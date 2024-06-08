return {
	"kvrohit/rasmus.nvim",
	priority = 1000,
	opts = ...,
	config = function()
		vim.o.background = "dark" -- or "light" for light mode
    vim.cmd.colorscheme("rasmus")
	end,
}
