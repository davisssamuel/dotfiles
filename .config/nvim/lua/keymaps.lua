vim.g.mapleader = " "

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- telescope
vim.keymap.set("n", "<C-p>", function()
  require("telescope.builtin").find_files()
end, {})

vim.keymap.set("n", "<C-f>", function()
  require("telescope.builtin").live_grep()
end, {})

-- lsp-config
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- none-ls
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
