-- COLORSCHEME
--==========================================
--[[
-- Catppuccin Color Scheme
vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }

require("catppuccin").setup {
    integrations = {
        lualine = {
            enabled = true,
        },
    },
    color_overrides = {
        mocha = {
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
        },
    }
}

vim.cmd.colorscheme "catppuccin"
]]--

-- Custom Colorscheme
vim.pack.add({ "https://github.com/sainnhe/sonokai" })
vim.cmd.colorscheme "sonokai"
-- Set background to black
vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
-- Set line number background to black
vim.api.nvim_set_hl(0, "LineNr", { fg = "#9c9a9a", bg = "#000000" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#000000", bold = true })

--==========================================

--==========================================
-- LUALINE (status line)
vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    { 
        src = 'https://github.com/nvim-lualine/lualine.nvim',
    }
})

-- Change middle section backgrounds to black
local mytheme = require("lualine.themes.auto")
mytheme.normal.c.bg = "#000000"
mytheme.insert.c.bg = "#000000"
mytheme.visual.c.bg = "#000000"
mytheme.replace.c.bg = "#000000"
mytheme.command.c.bg = "#000000"
mytheme.inactive.c.bg = "#000000"

require('lualine').setup({
    options = { 
        theme = mytheme
    },
    sections = {
        lualine_c = { {"filename", path = 1 } },
        lualine_x = {"filetype"}
    }
})
--==========================================

-- Undo Tree
vim.pack.add({ { src = "https://github.com/mbbill/undotree" } })
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

