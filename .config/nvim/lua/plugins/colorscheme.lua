return {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
        require('github-theme').setup({})
        -- local palette = require('github-theme.palette').load('github_dark_default')
        local colors = require('github-theme.spec').load('github_dark_default')
        local highlight_overrrides = {
            -- StatusLine = { bg = colors.bg1 },

            NormalFloat = { bg = colors.bg1 },
            FloatBorder = { bg = colors.bg1 },
            FloatTitle = { bg = colors.bg1 },

            -- Dressing
            DressingNormalFloat = { bg = colors.bg1 },
            DressingFloatBorder = { fg = colors.bg2, bg = colors.bg1 },
            DressingFloatTitle = { fg = colors.fg1, bg = colors.bg1 },

            Pmenu = { bg = colors.bg1 },
            PmenuSel = { bg = colors.bg1 },

            -- Telescope
            TelescopePromptNormal = { fg = colors.fg1, bg = colors.bg1 },
            TelescopePromptBorder = { fg = colors.bg2, bg = colors.bg1 },
            TelescopePromptTitle = { fg = colors.fg1, bg = colors.bg1 },
            TelescopePromptPrefix = { fg = colors.fg0, bg = colors.bg1 },
            TelescopePromptCounter = { fg = colors.fg0, bg = colors.bg1 },

            TelescopeResultsNormal = { fg = colors.fg1, bg = colors.bg1 },
            TelescopeResultsBorder = { fg = colors.bg2, bg = colors.bg1 },
            TelescopeResultsTitle = { fg = colors.fg1, bg = colors.bg1 },
            -- TelescopeSelection = { bg = colors.palette.red.bright },
            -- TelescopeSelection = { link = "Visual" },
            -- TelescopeSelectionCaret = { fg = colors.fg1, bg = colors.sel0 },
            -- TelescopeSelectionCaret = { default = true, link = "Visual" },

            TelescopePreviewNormal = { fg = colors.fg1, bg = colors.bg1 },
            TelescopePreviewBorder = { fg = colors.bg2, bg = colors.bg1 },
            TelescopePreviewTitle = { fg = colors.fg1, bg = colors.bg1 },
            TelescopePreviewLine = { fg = colors.fg, bg = colors.bg1 },

            -- Other windows
            LazyNormal = { bg = colors.bg1 },
            MasonNormal = { bg = colors.bg1 },
            MasonHeader = { bg = colors.bg1 },
            OilNormal = { bg = colors.bg1 }
        }
        for hl, col in pairs(highlight_overrrides) do
            -- vim.cmd('hi clear' .. hl)
            vim.api.nvim_set_hl(0, hl, col)
        end
        -- print(vim.inspect(palette))
        -- print(vim.inspect(spec))
        vim.cmd.colorscheme('github_dark_default')
    end,
}

-- return {
-- 	"Mofiqul/vscode.nvim",
-- 	config = function()
-- 		vim.o.background = "dark"
-- 		vim.cmd.colorscheme("vscode")
-- 	end,
-- }

-- return {
--   "HoNamDuong/hybrid.nvim",
--   config = function()
--     require("hybrid").setup({
--       overrides = function(_, c)
--         local highlight_overrrides = {

--           NormalFloat = { bg = c.bg, fg = c.fg },
--           FloatBorder = { bg = c.bg, fg = c.fg_soft },
--           FloatTitle = { bg = c.bg, fg = c.fg },
--           Pmenu = { bg = c.bg, fg = c.fg },
--           PmenuSel = { bg = c.bg_hard, fg = c.fg },

--           -- Lazy

--           -- Mason
--           -- MasonHeader = { bg = c.bg_hard, fg = c.bg_hard },

--           -- Telescope
--           TelescopePromptNormal = { bg = c.bg },
--           TelescopePromptBorder = { bg = c.bg, fg = c.fg_soft },
--           TelescopePromptTitle = { bg = c.bg, fg = c.fg },
--           TelescopePromptPrefix = { bg = c.bg, fg = c.fg_soft },
--           TelescopePromptCounter = { bg = c.bg, fg = c.fg_soft },

--           TelescopeResultsNormal = { bg = c.bg },
--           TelescopeResultsBorder = { bg = c.bg, fg = c.fg_soft },
--           TelescopeResultsTitle = { bg = c.bg, fg = c.fg },
--           TelescopeSelection = { bg = c.bg_soft },
--           TelescopeSelectionCaret = { bg = c.bg_soft, fg = c.fg },

--           TelescopePreviewNormal = { bg = c.bg },
--           TelescopePreviewBorder = { bg = c.bg, fg = c.fg_soft },
--           TelescopePreviewTitle = { bg = c.bg, fg = c.fg },
--           TelescopePreviewLine = { bg = c.bg },

--           -- Oil

--           -- Dressing

--           -- Blink

--         }
--         for hl, col in pairs(highlight_overrrides) do
--           vim.api.nvim_set_hl(0, hl, col)
--         end
--       end,
--     })
--     vim.cmd.colorscheme("hybrid")
--   end
-- }
