vim.pack.add({ { 
    src = 'https://github.com/nvim-treesitter/nvim-treesitter',
    branch = "main",
} })

-- 2. Defer setup so Neovim has time to find the downloaded plugin files
vim.schedule(function()
    local ts = require("nvim-treesitter")
    ts.setup({})

    -- 3. Auto-enable highlighting and smart indentation for opened files
    vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
            if ts.has_parser(args.match) then
                vim.treesitter.start(args.buf)
                vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end
        end,
    })
end)

