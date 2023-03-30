function ColorMyPencils(color)
  -- set colorscheme
  color = color or "codedark"
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

-- color related overrides
vim.api.nvim_command([[
    augroup ChangeNormalColour
        autocmd colorscheme * :hi Normal guibg=none ctermbg=none
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeNormalFloatColour
        autocmd colorscheme * :hi NormalFloat guibg=none ctermbg=none
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeTabLineColour
        autocmd colorscheme * :hi TabLine guibg=#181818 guifg=#605958
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeTabLineFillColour
        autocmd colorscheme * :hi TabLineFill guibg=#181818 guifg=#605958
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeTabLineSelColour
        autocmd colorscheme * :hi TabLineSel guibg=#1e1e1e guifg=white
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeStatusLineColour
        autocmd colorscheme * :hi StatusLine guibg=none guifg=white
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeStatusLineNCColour
        autocmd colorscheme * :hi StatusLineNC guibg=none guifg=#605958
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeColorColumnColour
        autocmd colorscheme * :hi ColorColumn guibg=none
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeLineNrColour
        autocmd colorscheme * :hi LineNr guibg=none
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeCursorLineColour
        autocmd colorscheme * :hi CursorLine guibg=none
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeCursorLineNrColour
        autocmd colorscheme * :hi CursorLineNr guibg=none
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeSignColumnColour
        autocmd colorscheme * :hi SignColumn guibg=none
    augroup END
]])
vim.api.nvim_command([[
    augroup ChangeCursor SignColumnColour
        autocmd colorscheme * :hi CursorSignColumn guibg=none
    augroup END
]])

ColorMyPencils()
