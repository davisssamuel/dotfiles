-- appearance
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
-- vim.o.cursorline = true
vim.cmd("hi statusline guibg=NONE")
-- vim.cmd("hi StatusLine ctermbg=NONE ctermfg=NONE")

-- tabs and spaces
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

vim.o.splitright = true

-- statusline
-- vim.o.statusline =
-- ' %<%{FugitiveHead}  %f %m %r %w %= Ln %l, Col %c  %{&fileencoding?&fileencoding:&encoding}  '
