vim.g.mapleader = " "
local map = vim.keymap.set

-- Configure Oil keybinds
map("n", "-", "<CMD>Oil<CR>", {})

-- Configure LSP keybinds
map({ "n", "v" }, "<leader>f", vim.lsp.buf.format, {})
map({ "n", "v" }, "<leader>r", vim.lsp.buf.rename, {})
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Configure split window keybinds
map({ "n", "v" }, "<C-h>", "<CMD>wincmd h<CR>", {})
map({ "n", "v" }, "<C-j>", "<CMD>wincmd j<CR>", {})
map({ "n", "v" }, "<C-k>", "<CMD>wincmd k<CR>", {})
map({ "n", "v" }, "<C-l>", "<CMD>wincmd l<CR>", {})

-- Configure moving selection 
map("v", "J", ":m '>+1<CR>gv=gv", {})
map("v", "K", ":m '<-2<CR>gv=gv", {})

-- Configure indenting selection 
map("v", "<", "<gv", {})
map("v", ">", ">gv", {})
