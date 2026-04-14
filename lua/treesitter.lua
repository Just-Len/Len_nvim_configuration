local ok, ts = pcall(require, "nvim-treesitter.configs")
if ok then
  ts.setup({
    ensure_installed = { "java", "lua", "vim", "vimdoc", "rust" },
    highlight = { enable = true },
  })
end

