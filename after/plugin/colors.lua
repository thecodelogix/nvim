function ColorMyPencils(color)
  -- set colorscheme
  color = color or "habamax"
  vim.cmd.colorscheme(color)

  -- transparent background
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- color my pencils on load
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  pattern = { "*" },
  command = [[lua ColorMyPencils()]],
})

ColorMyPencils()
