vim.g.mapleader = " "

local map = vim.keymap.set

-- oil
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- telescope
map("n", "<C-p>", function()
    require("telescope.builtin").find_files()
end, {})

map("n", "<C-f>", function()
    require("telescope.builtin").live_grep()
end, {})

-- lsp
map("n", "K", vim.lsp.buf.hover, {})
map("n", "<leader>gD", vim.lsp.buf.declaration, {})
map("n", "<leader>gd", vim.lsp.buf.definition, {})
map("n", "<leader>gr", vim.lsp.buf.references, {})
map("n", "<leader>gf", vim.lsp.buf.format, {}) -- requires none-ls
map({ "n", "v" }, "<leader>r", vim.lsp.buf.rename, {})
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
