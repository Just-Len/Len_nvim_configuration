vim.cmd([[colorscheme carbonfox]])

local function transparent_background()
  local groups = {
    "Normal","NormalFloat","StatusLine","StatusLineNC",
    "SignColumn","MsgArea","EndOfBuffer","NvimTreeNormal",
    "NvimTreeNormalNC","Pmenu","NormalNC","LineNr","CursorLineNr"
  }
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
  end
end

transparent_background()
