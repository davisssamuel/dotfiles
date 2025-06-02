-- Configure appearance
vim.o.number = true
vim.o.cursorline = true
vim.o.wrap = false

-- Configure indentation
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.autoindent = true
vim.o.splitright = true

-- Configure LSP diagnostic appearance
vim.diagnostic.config({
	virtual_lines = { current_line = true }
})
