-- strip trailing whitespace on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

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
