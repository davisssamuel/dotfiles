return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
        require("telescope").load_extension("ui-select")
        require("telescope").setup({
            defaults = {
                layout_strategy = "flex",
                layout_config = {
                    prompt_position = "top",
                    vertical = {
                        mirror = true,
                    }
                },
                sorting_strategy = "ascending",

                -- borderchars = {
                --   { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                --   prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
                --   results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
                --   preview = { "─", "│", "─", "│", "─", "┐", "┘", "─" },
                -- },
                borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            },
            -- defaults = {
            --   layout_config = { prompt_position = "top" },
            --   sorting_strategy = "ascending",
            --     border = {
            --       -- { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            --       prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
            --       results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
            --       preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            -- --  ars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            --     },
            -- },
            extensions = {
                ["ui-select"] = require("telescope.themes").get_dropdown(),
            },
            -- pickers = {
            --   find_files = require("telescope.themes").get_dropdown({
            --     borderchars = {
            --       { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            --       prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
            --       results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
            --       preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            --     },
            --     width = 0.8,
            --     previewer = false,
            --     prompt_title = false,
            --   }),
            --   live_grep = require("telescope.themes").get_dropdown({
            --     borderchars = {
            --       { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            --       prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
            --       results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
            --       preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
            --     },
            --     width = 0.8,
            --     previewer = false,
            --     prompt_title = false,
            --   }),
            -- }
        })
    end,
}
