-- strip trailing whitespace on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
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


-- automatically rebalance windows on vim resize
vim.api.nvim_create_autocmd({ "VimResized" }, {
  pattern = { "*" },
  command = [[wincmd =]],
})

-- convert tabs to spaces
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  pattern = { "*" },
  command = [[retab]],
})

-- markdown
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  pattern = { "*.md" },
  command = [[set filetype=markdown]],
})

-- wrap the quickfix window
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "qf" },
  command = [[setlocal wrap linebreak]],
})

-- don't automatically continue comments after newline
vim.api.nvim_create_autocmd({ "BufNewFile,BufRead" }, {
  pattern = { "*" },
  command = [[setlocal formatoptions-=cro]],
})

-- highlight the line the cursor is on
-- vim.api.nvim_create_autocmd({ "WinEnter" }, {
--   pattern = { "*" },
--   command = [[setlocal cursorline]],
-- })
-- vim.api.nvim_create_autocmd({ "BufEnter" }, {
--   pattern = { "*" },
--   command = [[setlocal cursorline]],
-- })
-- vim.api.nvim_create_autocmd({ "WinLeave" }, {
--   pattern = { "*" },
--   command = [[setlocal nocursorline]],
-- })
