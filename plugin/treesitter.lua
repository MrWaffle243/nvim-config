vim.pack.add({
  {
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
  },
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    pcall(vim.treesitter.start)
  end,
})
