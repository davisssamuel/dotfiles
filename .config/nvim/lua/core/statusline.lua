vim.o.laststatus = 3
vim.o.cmdheight = 0

local modes = {
    ["n"] = "NORMAL",
    ["no"] = "NORMAL",
    ["v"] = "VISUAL",
    ["V"] = "VISUAL LINE",
    [""] = "VISUAL BLOCK",
    ["s"] = "SELECT",
    ["S"] = "SELECT LINE",
    [""] = "SELECT BLOCK",
    ["i"] = "INSERT",
    ["ic"] = "INSERT",
    ["R"] = "REPLACE",
    ["Rv"] = "VISUAL REPLACE",
    ["c"] = "COMMAND",
    ["r"] = "PROMPT",
    ["rm"] = "MORE",
    ["r?"] = "CONFIRM",
    ["!"] = "SHELL",
    ["t"] = "TERMINAL",
}

local function mode()
    local current_mode = vim.api.nvim_get_mode().mode
    if current_mode == nil then current_mode = "" end
    return string.format(" %s", modes[current_mode]):upper()
end

function lsp_status()
    local messages = vim.lsp.util.get_progress_messages()
    local mode = api.nvim_get_mode().mode
    if mode ~= 'n' or vim.tbl_isempty(messages) then
        return format_uri(vim.uri_from_bufnr(api.nvim_get_current_buf()))
    end
end

function statusline()
    local sections = {
        [[%{luaeval("lsp_status()")} %=]]
    }
    return table.concat(sections, '')
end

-- vim.o.statusline = '%!v:lua.statusline()'

-- local statusline = {
--   mode(),
--   ' %t',
--   ' %M',
--   '%=',
--   '%{&filetype} ',
--   '%3l:%-2c ',
--   '%2p%% ',
-- }

-- vim.o.statusline = table.concat(statusline, '')
