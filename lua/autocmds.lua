local save_group = vim.api.nvim_create_augroup("Autosave", { clear = true })

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  group = save_group,
  pattern = { "*.java", "*.lua", "*.xml", "*.yml", "*.rs" },
  callback = function()
    if vim.bo.modified and vim.bo.buftype == "" then
      vim.cmd("silent! write")
    end
  end,
})

vim.api.nvim_create_autocmd("FocusLost", {
  group = save_group,
  callback = function()
    vim.cmd("silent! wall")
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    vim.treesitter.start()
  end,
})

