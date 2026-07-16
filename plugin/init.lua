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

--[[
-- BlackHole color scheme
vim.pack.add({ "https://github.com/biisal/blackhole" })
vim.cmd.colorscheme "blackhole"
]]--

-- LuaLine (status line)
vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    { 
        src = 'https://github.com/nvim-lualine/lualine.nvim',
    }
})

require('lualine').setup({
    options = { 
        theme = 'auto' 
    },
    sections = {
        lualine_c = { {"filename", path = 1 } },
        lualine_x = {"filetype"}
    }
})

-- Undo Tree
vim.pack.add({ { src = "https://github.com/mbbill/undotree" } })
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

